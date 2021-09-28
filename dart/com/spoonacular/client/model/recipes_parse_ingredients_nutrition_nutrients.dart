part of openapi.api;

class RecipesParseIngredientsNutritionNutrients {
  
  String name = null;
  
  num amount = null;
  
  String unit = null;
  
  num percentOfDailyNeeds = null;
  RecipesParseIngredientsNutritionNutrients();

  @override
  String toString() {
    return 'RecipesParseIngredientsNutritionNutrients[name=$name, amount=$amount, unit=$unit, percentOfDailyNeeds=$percentOfDailyNeeds, ]';
  }

  RecipesParseIngredientsNutritionNutrients.fromJson(Map<String, dynamic> json) {
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
    if (json['percentOfDailyNeeds'] == null) {
      percentOfDailyNeeds = null;
    } else {
          percentOfDailyNeeds = json['percentOfDailyNeeds'];
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
    if (percentOfDailyNeeds != null)
      json['percentOfDailyNeeds'] = percentOfDailyNeeds;
    return json;
  }

  static List<RecipesParseIngredientsNutritionNutrients> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecipesParseIngredientsNutritionNutrients>() : json.map((value) => new RecipesParseIngredientsNutritionNutrients.fromJson(value)).toList();
  }

  static Map<String, RecipesParseIngredientsNutritionNutrients> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RecipesParseIngredientsNutritionNutrients>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RecipesParseIngredientsNutritionNutrients.fromJson(value));
    }
    return map;
  }
}

