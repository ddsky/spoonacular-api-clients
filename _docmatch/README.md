# docmatch

This is a script that compares the spec with the HTML docs.

Using [pdm](https://pdm-project.org/) for dependencies:

```shell
curl -L https://spoonacular.com/food-api/docs > docs.html
pdm install
pdm run src/docmatch.py
```

(just pip can be used for deps too, `pip install .`,
with a manually managed virtualenv or in an otherwise isolated environment like a container)
