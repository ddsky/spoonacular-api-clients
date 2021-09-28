part of openapi.api;

class InlineResponse2006 {
  
  List<InlineResponse2006Recipes> recipes = [];
  InlineResponse2006();

  @override
  String toString() {
    return 'InlineResponse2006[recipes=$recipes, ]';
  }

  InlineResponse2006.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['recipes'] == null) {
      recipes = null;
    } else {
      recipes = InlineResponse2006Recipes.listFromJson(json['recipes']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (recipes != null)
      json['recipes'] = recipes;
    return json;
  }

  static List<InlineResponse2006> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2006>() : json.map((value) => new InlineResponse2006.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2006> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2006>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2006.fromJson(value));
    }
    return map;
  }
}

