part of openapi.api;

class InlineResponse20023Ingredients {
  
  int id = null;
  
  String original = null;
  
  num glycemicIndex = null;
  
  num glycemicLoad = null;
  InlineResponse20023Ingredients();

  @override
  String toString() {
    return 'InlineResponse20023Ingredients[id=$id, original=$original, glycemicIndex=$glycemicIndex, glycemicLoad=$glycemicLoad, ]';
  }

  InlineResponse20023Ingredients.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['original'] == null) {
      original = null;
    } else {
          original = json['original'];
    }
    if (json['glycemicIndex'] == null) {
      glycemicIndex = null;
    } else {
          glycemicIndex = json['glycemicIndex'];
    }
    if (json['glycemicLoad'] == null) {
      glycemicLoad = null;
    } else {
          glycemicLoad = json['glycemicLoad'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (original != null)
      json['original'] = original;
    if (glycemicIndex != null)
      json['glycemicIndex'] = glycemicIndex;
    if (glycemicLoad != null)
      json['glycemicLoad'] = glycemicLoad;
    return json;
  }

  static List<InlineResponse20023Ingredients> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20023Ingredients>() : json.map((value) => new InlineResponse20023Ingredients.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20023Ingredients> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20023Ingredients>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20023Ingredients.fromJson(value));
    }
    return map;
  }
}

