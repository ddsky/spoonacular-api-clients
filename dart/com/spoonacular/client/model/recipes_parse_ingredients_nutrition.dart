part of openapi.api;

class RecipesParseIngredientsNutrition {
  
  List<RecipesParseIngredientsNutritionNutrients> nutrients = [];
  
  List<RecipesParseIngredientsNutritionProperties> properties = [];
  
  List<RecipesParseIngredientsNutritionProperties> flavonoids = [];
  
  RecipesParseIngredientsNutritionCaloricBreakdown caloricBreakdown = null;
  
  RecipesParseIngredientsNutritionWeightPerServing weightPerServing = null;
  RecipesParseIngredientsNutrition();

  @override
  String toString() {
    return 'RecipesParseIngredientsNutrition[nutrients=$nutrients, properties=$properties, flavonoids=$flavonoids, caloricBreakdown=$caloricBreakdown, weightPerServing=$weightPerServing, ]';
  }

  RecipesParseIngredientsNutrition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['nutrients'] == null) {
      nutrients = null;
    } else {
      nutrients = RecipesParseIngredientsNutritionNutrients.listFromJson(json['nutrients']);
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = RecipesParseIngredientsNutritionProperties.listFromJson(json['properties']);
    }
    if (json['flavonoids'] == null) {
      flavonoids = null;
    } else {
      flavonoids = RecipesParseIngredientsNutritionProperties.listFromJson(json['flavonoids']);
    }
    if (json['caloricBreakdown'] == null) {
      caloricBreakdown = null;
    } else {
      caloricBreakdown = new RecipesParseIngredientsNutritionCaloricBreakdown.fromJson(json['caloricBreakdown']);
    }
    if (json['weightPerServing'] == null) {
      weightPerServing = null;
    } else {
      weightPerServing = new RecipesParseIngredientsNutritionWeightPerServing.fromJson(json['weightPerServing']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (nutrients != null)
      json['nutrients'] = nutrients;
    if (properties != null)
      json['properties'] = properties;
    if (flavonoids != null)
      json['flavonoids'] = flavonoids;
    if (caloricBreakdown != null)
      json['caloricBreakdown'] = caloricBreakdown;
    if (weightPerServing != null)
      json['weightPerServing'] = weightPerServing;
    return json;
  }

  static List<RecipesParseIngredientsNutrition> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecipesParseIngredientsNutrition>() : json.map((value) => new RecipesParseIngredientsNutrition.fromJson(value)).toList();
  }

  static Map<String, RecipesParseIngredientsNutrition> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RecipesParseIngredientsNutrition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RecipesParseIngredientsNutrition.fromJson(value));
    }
    return map;
  }
}

