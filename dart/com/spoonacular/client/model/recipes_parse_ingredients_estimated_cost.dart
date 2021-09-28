part of openapi.api;

class RecipesParseIngredientsEstimatedCost {
  
  num value = null;
  
  String unit = null;
  RecipesParseIngredientsEstimatedCost();

  @override
  String toString() {
    return 'RecipesParseIngredientsEstimatedCost[value=$value, unit=$unit, ]';
  }

  RecipesParseIngredientsEstimatedCost.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
    if (json['unit'] == null) {
      unit = null;
    } else {
          unit = json['unit'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (value != null)
      json['value'] = value;
    if (unit != null)
      json['unit'] = unit;
    return json;
  }

  static List<RecipesParseIngredientsEstimatedCost> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecipesParseIngredientsEstimatedCost>() : json.map((value) => new RecipesParseIngredientsEstimatedCost.fromJson(value)).toList();
  }

  static Map<String, RecipesParseIngredientsEstimatedCost> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RecipesParseIngredientsEstimatedCost>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RecipesParseIngredientsEstimatedCost.fromJson(value));
    }
    return map;
  }
}

