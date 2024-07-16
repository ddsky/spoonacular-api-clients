import json
import jsonref
import json_repair
import bs4
import sys
import re
from collections import defaultdict
from pprint import pprint
from genson import SchemaBuilder
from typing import List, Dict, Optional
from dataclasses import dataclass

def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)

# https://github.com/n-takumasa/json-with-comments/blob/main/jsonc/_util.py
_REMOVE_C_COMMENT = r"""
    ( # String Literal
        \"(?:\\.|[^\\\"])*?\"
    )
    |
    ( # Comment
        \/\*.*?\*\/
        |
        \/\/[^\r\n]*?(?:[\r\n])
    )
    """

def _remove_c_comment(text: str) -> str:
    if text[-1] != "\n":
        text = text + "\n"
    return re.sub(
        _REMOVE_C_COMMENT,
        lambda x: x.group(1),
        text,
        flags=re.DOTALL | re.VERBOSE,
    )

def t(el: bs4.Tag | bs4.NavigableString | None) -> bs4.Tag:
    assert isinstance(el, bs4.Tag)
    return el

def json2schema(els: List[str]) -> dict:
    builder = SchemaBuilder()
    for el in els:
        el = _remove_c_comment(el.replace("...\n", "\n"))
        try:
            # builder.add_object(pyjson5.decode(el))
            builder.add_object(json_repair.loads(el))
        except Exception as e:
            eprint('JSON failed to parse', el, e)
    schema = builder.to_schema()
    del schema['$schema']
    return schema

@dataclass
class Param:
    description: str
    where: str
    typ: str
    example: str
    required: bool

@dataclass
class Doc:
    method: str
    url: str
    summary: str
    description: str
    params: Dict[str, Param]
    req_schema: Optional[dict]
    resp_schema: dict

def parsedoc(doc: bs4.Tag):
    if doc.find('div', class_='api-method') is None:
        return
    method = t(doc.find('div', class_='api-method')).get_text()
    url = t(doc.find('div', class_='api-path')).get_text().replace('https://api.spoonacular.com', '')
    params = {}
    tbl = doc.find('table', class_='api-parameter-table')
    for param in (t(tbl).find_all('tr') if tbl else []):
        tds = param.find_all('td')
        if len(tds) == 0:
            continue
        [par, typ, exa, des] = tds
        req = not (par.find('b') is None)
        par = t(par.find('code'))
        par_where = [c for c in par['class'] if c.startswith('api-in-')][0]
        par = par.get_text()
        typ = typ.get_text()
        exa = exa.get_text()
        if typ == 'number':
            exa = float(exa)
        if typ == 'boolean':
            exa = exa == 'true'
        params[par] = Param(
            description=des.get_text(),
            where=par_where.replace('api-in-', ''),
            typ=typ,
            example=exa,
            required=req,
        )
    examples = {}
    for hdr in doc.find_all('div', class_='apiPathHeader'):
        ex = []
        for sib in hdr.find_next_siblings():
            if not isinstance(sib, bs4.Tag):
                continue
            if sib.name == 'div' and 'apiPathHeader' in sib['class']:
                break
            if sib.name == 'pre' and 'language-json' in sib['class']:
                ex.append(sib.get_text())
        if len(ex) > 0:
            examples[hdr.get_text()] = ex
    examples_req = []
    examples_res = []
    if '(post body)' in params:
        examples_req.append(params['(post body)'].example)
        del params['(post body)']
    for hdr, exs in examples.items():
        if hdr == 'Example Response' or hdr == 'Example Request and Response':
            examples_res += exs
        elif hdr == 'Example Request' or hdr == 'Example Request Body' or hdr == 'Example Request and Body':
            examples_req += exs
        else:
            eprint('Unknown apiPathHeader:', hdr)
    # pprint(params)
    # print('Req:')
    # pprint(json2schema(examples_req))
    # print('Res:')
    ret = Doc(
        summary=str(doc['jss-title']),
        description=t(doc.find('p')).get_text(strip=True),
        method=method,
        url=url,
        params=params,
        req_schema=None,
        resp_schema=json2schema(examples_res)
    )
    if len(examples_req) > 0:
        ret.req_schema = json2schema(examples_req)
    return ret

def compare_schema(location, l_name, l, r_name, r):
    if l.get('type') != r.get('type'):
        if (l.get('type') == 'integer' and r.get('type') == 'number') \
            or (r.get('type') == 'integer' and l.get('type') == 'number') \
            or (l.get('type') == 'string' and r.get('type') == 'text') \
            or (r.get('type') == 'string' and l.get('type') == 'text'):
            return
        print(f"** ! `{location}`: type mismatch: {l_name} `{l.get('type')}` vs {r_name} `{r.get('type')}`")
        return
    l_props = l.get('properties', {})
    r_props = r.get('properties', {})
    for k in r_props.keys():
        if k not in l_props:
            print(f"** ! `{location}`: property `{k}` present in {r_name} but not in {l_name}")
    for k, v in l_props.items():
        if k not in r_props:
            print(f"** ! `{location}`: property `{k}` present in {l_name} but not in {r_name}")
            continue
        compare_schema(location + '.' + k, l_name, v, r_name, r_props[k])
    if 'items' in l and 'items' in r:
        compare_schema(location + '[]', l_name, l['items'], r_name, r['items'])

with open("../spoonacular-openapi-3.json") as f:
    spec = jsonref.load(f)

with open("docs.html") as f:
    soup = bs4.BeautifulSoup(f, 'html.parser')
    docs = soup.find_all('section', class_='jss-doc')
    for doc in docs:
        pdoc = parsedoc(doc)
        if not pdoc: continue
        if not pdoc.url in spec['paths']:
            print(f"* ! `{pdoc.url}` not found in spec")
            continue
        scm = spec['paths'][pdoc.url]
        if not pdoc.method.lower() in scm:
            print(f"* ! method `{pdoc.method.lower()}` not found in spec for `{pdoc.url}`")
            continue
        scm = scm[pdoc.method.lower()]
        print(f"* `{pdoc.method.lower()}` `{pdoc.url}`")

        spec_params = {}
        for p in scm.get('parameters', []):
            if not 'name' in p:
                print(f"** ! unresolved/unnamed param in spec: {p}")
                continue
            spec_params[p['name']] = p
        spec_frm_sch = scm.get('requestBody', {}).get('content', {}).get('application/x-www-form-urlencoded', {}).get('schema')
        if not spec_frm_sch:
            spec_frm_sch = scm.get('requestBody', {}).get('content', {}).get('multipart/form-data', {}).get('schema')
        if spec_frm_sch:
            if spec_frm_sch.get('type') != 'object':
                print(f"** ! form schema is not an object")
            for key, prop in spec_frm_sch.get('properties', {}).items():
                spec_params[key] = {
                    'name': key,
                    'in': 'form',
                    'required': False,
                    'schema': prop
                }
            for reqd in spec_frm_sch.get('required', []):
                if reqd in spec_params:
                    spec_params[reqd]['required'] = True
                else:
                    print(f"** ! param `{reqd}` marked as required but does not exist")
        for name in spec_params.keys():
            if not name in pdoc.params:
                print(f"** ! param `{name}` found in spec, but not in doc")
        for name, doc_param in pdoc.params.items():
            if not name in spec_params:
                print(f"** ! param `{name}` found in doc, but not in spec")
                continue
            spec_param = spec_params[name]
            def print_cmp(name, par, spec, doc):
                if (spec == 'integer' and doc == 'number') or (spec == 'string' and doc == 'text'):
                    return
                if spec != doc:
                    print(f"** ! param `{name}`.`{par}`: spec `{spec}` vs doc `{doc}`")
            spec_sch = spec_param.get('schema', {})
            print_cmp(name, 'required', spec_param.get('required'), doc_param.required)
            print_cmp(name, 'type', spec_sch.get('format', spec_sch.get('type')), doc_param.typ)
            print_cmp(name, 'in', spec_param.get('in'), doc_param.where)

        spec_req_sch = scm.get('requestBody', {}).get('content', {}).get('application/json', {}).get('schema')
        if spec_req_sch and not pdoc.req_schema:
            print(f"** request body schema found in spec, but could not infer one from docs")
        if not spec_req_sch and pdoc.req_schema:
            print(f"** ! request body schema not found in spec, but could infer one from docs")
        if spec_req_sch and pdoc.req_schema:
            compare_schema('(req body)', 'spec', spec_req_sch, 'docs-inferred', pdoc.req_schema)
