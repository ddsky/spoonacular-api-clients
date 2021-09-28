part of openapi.api;

class RecipesParseIngredientsNutritionProperties {
  
  String name = null;
  
  num amount = null;
  
  String unit = null;
  RecipesParseIngredientsNutritionProperties();

  @override
  String toString() {
    return 'RecipesParseIngredientsNutritionProperties[name=$name, amount=$amount, unit=$unit, ]';
  }

  RecipesParseIngredientsNutritionProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
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
    if (name != null)
      json['name'] = name;
    if (amount != null)
      json['amount'] = amount;
    if (unit != null)
      json['unit'] = unit;
    return json;
  }

  static List<RecipesParseIngredientsNutritionProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecipesParseIngredientsNutritionProperties>() : json.map((value) => new RecipesParseIngredientsNutritionProperties.fromJson(value)).toList();
  }

  static Map<String, RecipesParseIngredientsNutritionProperties> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RecipesParseIngredientsNutritionProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RecipesParseIngredientsNutritionProperties.fromJson(value));
    }
    return map;
  }
}

