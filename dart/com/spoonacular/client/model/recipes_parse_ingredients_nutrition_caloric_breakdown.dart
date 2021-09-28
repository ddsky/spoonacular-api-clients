part of openapi.api;

class RecipesParseIngredientsNutritionCaloricBreakdown {
  
  num percentProtein = null;
  
  num percentFat = null;
  
  num percentCarbs = null;
  RecipesParseIngredientsNutritionCaloricBreakdown();

  @override
  String toString() {
    return 'RecipesParseIngredientsNutritionCaloricBreakdown[percentProtein=$percentProtein, percentFat=$percentFat, percentCarbs=$percentCarbs, ]';
  }

  RecipesParseIngredientsNutritionCaloricBreakdown.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['percentProtein'] == null) {
      percentProtein = null;
    } else {
          percentProtein = json['percentProtein'];
    }
    if (json['percentFat'] == null) {
      percentFat = null;
    } else {
          percentFat = json['percentFat'];
    }
    if (json['percentCarbs'] == null) {
      percentCarbs = null;
    } else {
          percentCarbs = json['percentCarbs'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (percentProtein != null)
      json['percentProtein'] = percentProtein;
    if (percentFat != null)
      json['percentFat'] = percentFat;
    if (percentCarbs != null)
      json['percentCarbs'] = percentCarbs;
    return json;
  }

  static List<RecipesParseIngredientsNutritionCaloricBreakdown> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecipesParseIngredientsNutritionCaloricBreakdown>() : json.map((value) => new RecipesParseIngredientsNutritionCaloricBreakdown.fromJson(value)).toList();
  }

  static Map<String, RecipesParseIngredientsNutritionCaloricBreakdown> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RecipesParseIngredientsNutritionCaloricBreakdown>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RecipesParseIngredientsNutritionCaloricBreakdown.fromJson(value));
    }
    return map;
  }
}

