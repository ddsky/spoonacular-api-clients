part of openapi.api;

class InlineResponse20048 {
  
  InlineResponse20048Nutrition nutrition = null;
  
  InlineResponse20048Category category = null;
  
  List<InlineResponse20048Recipes> recipes = [];
  InlineResponse20048();

  @override
  String toString() {
    return 'InlineResponse20048[nutrition=$nutrition, category=$category, recipes=$recipes, ]';
  }

  InlineResponse20048.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['nutrition'] == null) {
      nutrition = null;
    } else {
      nutrition = new InlineResponse20048Nutrition.fromJson(json['nutrition']);
    }
    if (json['category'] == null) {
      category = null;
    } else {
      category = new InlineResponse20048Category.fromJson(json['category']);
    }
    if (json['recipes'] == null) {
      recipes = null;
    } else {
      recipes = InlineResponse20048Recipes.listFromJson(json['recipes']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (nutrition != null)
      json['nutrition'] = nutrition;
    if (category != null)
      json['category'] = category;
    if (recipes != null)
      json['recipes'] = recipes;
    return json;
  }

  static List<InlineResponse20048> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20048>() : json.map((value) => new InlineResponse20048.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20048> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20048>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20048.fromJson(value));
    }
    return map;
  }
}

