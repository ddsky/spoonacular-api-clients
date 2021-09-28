part of openapi.api;

class InlineResponse20011 {
  
  List<InlineResponse20011Ingredients> ingredients = [];
  InlineResponse20011();

  @override
  String toString() {
    return 'InlineResponse20011[ingredients=$ingredients, ]';
  }

  InlineResponse20011.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['ingredients'] == null) {
      ingredients = null;
    } else {
      ingredients = InlineResponse20011Ingredients.listFromJson(json['ingredients']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ingredients != null)
      json['ingredients'] = ingredients;
    return json;
  }

  static List<InlineResponse20011> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20011>() : json.map((value) => new InlineResponse20011.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20011> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20011>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20011.fromJson(value));
    }
    return map;
  }
}

