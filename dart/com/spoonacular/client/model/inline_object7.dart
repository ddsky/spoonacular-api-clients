part of openapi.api;

class InlineObject7 {
  /* The ingredient list of the recipe, one ingredient per line. */
  String ingredientList = null;
  /* The number of servings that you can make from the ingredients. */
  num servings = null;
  /* Whether nutrition data should be added to correctly parsed ingredients. */
  bool includeNutrition = null;
  InlineObject7();

  @override
  String toString() {
    return 'InlineObject7[ingredientList=$ingredientList, servings=$servings, includeNutrition=$includeNutrition, ]';
  }

  InlineObject7.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['ingredientList'] == null) {
      ingredientList = null;
    } else {
          ingredientList = json['ingredientList'];
    }
    if (json['servings'] == null) {
      servings = null;
    } else {
          servings = json['servings'];
    }
    if (json['includeNutrition'] == null) {
      includeNutrition = null;
    } else {
          includeNutrition = json['includeNutrition'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ingredientList != null)
      json['ingredientList'] = ingredientList;
    if (servings != null)
      json['servings'] = servings;
    if (includeNutrition != null)
      json['includeNutrition'] = includeNutrition;
    return json;
  }

  static List<InlineObject7> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject7>() : json.map((value) => new InlineObject7.fromJson(value)).toList();
  }

  static Map<String, InlineObject7> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject7>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject7.fromJson(value));
    }
    return map;
  }
}

