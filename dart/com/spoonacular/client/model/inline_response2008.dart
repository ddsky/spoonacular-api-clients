part of openapi.api;

class InlineResponse2008 {
  
  num sweetness = null;
  
  num saltiness = null;
  
  num sourness = null;
  
  num bitterness = null;
  
  num savoriness = null;
  
  num fattiness = null;
  
  num spiciness = null;
  InlineResponse2008();

  @override
  String toString() {
    return 'InlineResponse2008[sweetness=$sweetness, saltiness=$saltiness, sourness=$sourness, bitterness=$bitterness, savoriness=$savoriness, fattiness=$fattiness, spiciness=$spiciness, ]';
  }

  InlineResponse2008.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['sweetness'] == null) {
      sweetness = null;
    } else {
          sweetness = json['sweetness'];
    }
    if (json['saltiness'] == null) {
      saltiness = null;
    } else {
          saltiness = json['saltiness'];
    }
    if (json['sourness'] == null) {
      sourness = null;
    } else {
          sourness = json['sourness'];
    }
    if (json['bitterness'] == null) {
      bitterness = null;
    } else {
          bitterness = json['bitterness'];
    }
    if (json['savoriness'] == null) {
      savoriness = null;
    } else {
          savoriness = json['savoriness'];
    }
    if (json['fattiness'] == null) {
      fattiness = null;
    } else {
          fattiness = json['fattiness'];
    }
    if (json['spiciness'] == null) {
      spiciness = null;
    } else {
          spiciness = json['spiciness'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (sweetness != null)
      json['sweetness'] = sweetness;
    if (saltiness != null)
      json['saltiness'] = saltiness;
    if (sourness != null)
      json['sourness'] = sourness;
    if (bitterness != null)
      json['bitterness'] = bitterness;
    if (savoriness != null)
      json['savoriness'] = savoriness;
    if (fattiness != null)
      json['fattiness'] = fattiness;
    if (spiciness != null)
      json['spiciness'] = spiciness;
    return json;
  }

  static List<InlineResponse2008> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2008>() : json.map((value) => new InlineResponse2008.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2008> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2008>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2008.fromJson(value));
    }
    return map;
  }
}

