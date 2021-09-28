part of openapi.api;

class InlineResponse20028Nutrition {
  
  List<RecipesParseIngredientsNutritionNutrients> nutrients = [];
  
  RecipesParseIngredientsNutritionCaloricBreakdown caloricBreakdown = null;
  InlineResponse20028Nutrition();

  @override
  String toString() {
    return 'InlineResponse20028Nutrition[nutrients=$nutrients, caloricBreakdown=$caloricBreakdown, ]';
  }

  InlineResponse20028Nutrition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['nutrients'] == null) {
      nutrients = null;
    } else {
      nutrients = RecipesParseIngredientsNutritionNutrients.listFromJson(json['nutrients']);
    }
    if (json['caloricBreakdown'] == null) {
      caloricBreakdown = null;
    } else {
      caloricBreakdown = new RecipesParseIngredientsNutritionCaloricBreakdown.fromJson(json['caloricBreakdown']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (nutrients != null)
      json['nutrients'] = nutrients;
    if (caloricBreakdown != null)
      json['caloricBreakdown'] = caloricBreakdown;
    return json;
  }

  static List<InlineResponse20028Nutrition> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20028Nutrition>() : json.map((value) => new InlineResponse20028Nutrition.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20028Nutrition> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20028Nutrition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20028Nutrition.fromJson(value));
    }
    return map;
  }
}

