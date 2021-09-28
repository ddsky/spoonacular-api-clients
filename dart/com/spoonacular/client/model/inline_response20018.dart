part of openapi.api;

class InlineResponse20018 {
  
  List<InlineResponse20018Dishes> dishes = [];
  
  List<InlineResponse20018Ingredients> ingredients = [];
  
  List<String> cuisines = [];
  
  List<String> modifiers = [];
  InlineResponse20018();

  @override
  String toString() {
    return 'InlineResponse20018[dishes=$dishes, ingredients=$ingredients, cuisines=$cuisines, modifiers=$modifiers, ]';
  }

  InlineResponse20018.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['dishes'] == null) {
      dishes = null;
    } else {
      dishes = InlineResponse20018Dishes.listFromJson(json['dishes']);
    }
    if (json['ingredients'] == null) {
      ingredients = null;
    } else {
      ingredients = InlineResponse20018Ingredients.listFromJson(json['ingredients']);
    }
    if (json['cuisines'] == null) {
      cuisines = null;
    } else {
      cuisines = (json['cuisines'] as List).cast<String>();
    }
    if (json['modifiers'] == null) {
      modifiers = null;
    } else {
      modifiers = (json['modifiers'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dishes != null)
      json['dishes'] = dishes;
    if (ingredients != null)
      json['ingredients'] = ingredients;
    if (cuisines != null)
      json['cuisines'] = cuisines;
    if (modifiers != null)
      json['modifiers'] = modifiers;
    return json;
  }

  static List<InlineResponse20018> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20018>() : json.map((value) => new InlineResponse20018.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20018> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20018>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20018.fromJson(value));
    }
    return map;
  }
}

