part of openapi.api;

class InlineResponse20049NutritionCaloriesConfidenceRange95Percent {
  
  num min = null;
  
  num max = null;
  InlineResponse20049NutritionCaloriesConfidenceRange95Percent();

  @override
  String toString() {
    return 'InlineResponse20049NutritionCaloriesConfidenceRange95Percent[min=$min, max=$max, ]';
  }

  InlineResponse20049NutritionCaloriesConfidenceRange95Percent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['min'] == null) {
      min = null;
    } else {
          min = json['min'];
    }
    if (json['max'] == null) {
      max = null;
    } else {
          max = json['max'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (min != null)
      json['min'] = min;
    if (max != null)
      json['max'] = max;
    return json;
  }

  static List<InlineResponse20049NutritionCaloriesConfidenceRange95Percent> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20049NutritionCaloriesConfidenceRange95Percent>() : json.map((value) => new InlineResponse20049NutritionCaloriesConfidenceRange95Percent.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20049NutritionCaloriesConfidenceRange95Percent> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20049NutritionCaloriesConfidenceRange95Percent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20049NutritionCaloriesConfidenceRange95Percent.fromJson(value));
    }
    return map;
  }
}

