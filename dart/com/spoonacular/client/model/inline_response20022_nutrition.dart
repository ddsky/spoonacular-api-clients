part of openapi.api;

class InlineResponse20022Nutrition {
  
  List<RecipesParseIngredientsNutritionNutrients> nutrients = [];
  
  List<RecipesParseIngredientsNutritionProperties> properties = [];
  
  RecipesParseIngredientsNutritionCaloricBreakdown caloricBreakdown = null;
  
  RecipesParseIngredientsNutritionWeightPerServing weightPerServing = null;
  InlineResponse20022Nutrition();

  @override
  String toString() {
    return 'InlineResponse20022Nutrition[nutrients=$nutrients, properties=$properties, caloricBreakdown=$caloricBreakdown, weightPerServing=$weightPerServing, ]';
  }

  InlineResponse20022Nutrition.fromJson(Map<String, dynamic> json) {
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
    if (caloricBreakdown != null)
      json['caloricBreakdown'] = caloricBreakdown;
    if (weightPerServing != null)
      json['weightPerServing'] = weightPerServing;
    return json;
  }

  static List<InlineResponse20022Nutrition> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20022Nutrition>() : json.map((value) => new InlineResponse20022Nutrition.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20022Nutrition> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20022Nutrition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20022Nutrition.fromJson(value));
    }
    return map;
  }
}

