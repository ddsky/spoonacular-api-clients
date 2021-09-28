part of openapi.api;

class InlineObject2 {
  
  List<String> ingredients = [];
  
  num servings = null;
  InlineObject2();

  @override
  String toString() {
    return 'InlineObject2[ingredients=$ingredients, servings=$servings, ]';
  }

  InlineObject2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['ingredients'] == null) {
      ingredients = null;
    } else {
      ingredients = (json['ingredients'] as List).cast<String>();
    }
    if (json['servings'] == null) {
      servings = null;
    } else {
          servings = json['servings'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ingredients != null)
      json['ingredients'] = ingredients;
    if (servings != null)
      json['servings'] = servings;
    return json;
  }

  static List<InlineObject2> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject2>() : json.map((value) => new InlineObject2.fromJson(value)).toList();
  }

  static Map<String, InlineObject2> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject2.fromJson(value));
    }
    return map;
  }
}

