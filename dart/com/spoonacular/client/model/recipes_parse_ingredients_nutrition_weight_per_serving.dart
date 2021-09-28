part of openapi.api;

class RecipesParseIngredientsNutritionWeightPerServing {
  
  num amount = null;
  
  String unit = null;
  RecipesParseIngredientsNutritionWeightPerServing();

  @override
  String toString() {
    return 'RecipesParseIngredientsNutritionWeightPerServing[amount=$amount, unit=$unit, ]';
  }

  RecipesParseIngredientsNutritionWeightPerServing.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['amount'] == null) {
      amount = null;
    } else {
          amount = json['amount'];
    }
    if (json['unit'] == null) {
      unit = null;
    } else {
          unit = json['unit'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (amount != null)
      json['amount'] = amount;
    if (unit != null)
      json['unit'] = unit;
    return json;
  }

  static List<RecipesParseIngredientsNutritionWeightPerServing> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecipesParseIngredientsNutritionWeightPerServing>() : json.map((value) => new RecipesParseIngredientsNutritionWeightPerServing.fromJson(value)).toList();
  }

  static Map<String, RecipesParseIngredientsNutritionWeightPerServing> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RecipesParseIngredientsNutritionWeightPerServing>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RecipesParseIngredientsNutritionWeightPerServing.fromJson(value));
    }
    return map;
  }
}

