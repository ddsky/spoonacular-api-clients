part of openapi.api;

class InlineResponse20049 {
  
  InlineResponse20049Nutrition nutrition = null;
  
  InlineResponse20049Category category = null;
  
  List<InlineResponse20049Recipes> recipes = [];
  InlineResponse20049();

  @override
  String toString() {
    return 'InlineResponse20049[nutrition=$nutrition, category=$category, recipes=$recipes, ]';
  }

  InlineResponse20049.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['nutrition'] == null) {
      nutrition = null;
    } else {
      nutrition = new InlineResponse20049Nutrition.fromJson(json['nutrition']);
    }
    if (json['category'] == null) {
      category = null;
    } else {
      category = new InlineResponse20049Category.fromJson(json['category']);
    }
    if (json['recipes'] == null) {
      recipes = null;
    } else {
      recipes = InlineResponse20049Recipes.listFromJson(json['recipes']);
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

  static List<InlineResponse20049> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20049>() : json.map((value) => new InlineResponse20049.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20049> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20049>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20049.fromJson(value));
    }
    return map;
  }
}

