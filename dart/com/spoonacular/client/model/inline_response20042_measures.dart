part of openapi.api;

class InlineResponse20042Measures {
  
  RecipesParseIngredientsNutritionWeightPerServing original = null;
  
  RecipesParseIngredientsNutritionWeightPerServing metric = null;
  
  RecipesParseIngredientsNutritionWeightPerServing us = null;
  InlineResponse20042Measures();

  @override
  String toString() {
    return 'InlineResponse20042Measures[original=$original, metric=$metric, us=$us, ]';
  }

  InlineResponse20042Measures.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['original'] == null) {
      original = null;
    } else {
      original = new RecipesParseIngredientsNutritionWeightPerServing.fromJson(json['original']);
    }
    if (json['metric'] == null) {
      metric = null;
    } else {
      metric = new RecipesParseIngredientsNutritionWeightPerServing.fromJson(json['metric']);
    }
    if (json['us'] == null) {
      us = null;
    } else {
      us = new RecipesParseIngredientsNutritionWeightPerServing.fromJson(json['us']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (original != null)
      json['original'] = original;
    if (metric != null)
      json['metric'] = metric;
    if (us != null)
      json['us'] = us;
    return json;
  }

  static List<InlineResponse20042Measures> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20042Measures>() : json.map((value) => new InlineResponse20042Measures.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20042Measures> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20042Measures>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20042Measures.fromJson(value));
    }
    return map;
  }
}

