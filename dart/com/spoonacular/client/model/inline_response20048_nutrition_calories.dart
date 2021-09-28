part of openapi.api;

class InlineResponse20048NutritionCalories {
  
  num value = null;
  
  String unit = null;
  
  InlineResponse20048NutritionCaloriesConfidenceRange95Percent confidenceRange95Percent = null;
  
  num standardDeviation = null;
  InlineResponse20048NutritionCalories();

  @override
  String toString() {
    return 'InlineResponse20048NutritionCalories[value=$value, unit=$unit, confidenceRange95Percent=$confidenceRange95Percent, standardDeviation=$standardDeviation, ]';
  }

  InlineResponse20048NutritionCalories.fromJson(Map<String, dynamic> json) {
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
    if (json['confidenceRange95Percent'] == null) {
      confidenceRange95Percent = null;
    } else {
      confidenceRange95Percent = new InlineResponse20048NutritionCaloriesConfidenceRange95Percent.fromJson(json['confidenceRange95Percent']);
    }
    if (json['standardDeviation'] == null) {
      standardDeviation = null;
    } else {
          standardDeviation = json['standardDeviation'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (value != null)
      json['value'] = value;
    if (unit != null)
      json['unit'] = unit;
    if (confidenceRange95Percent != null)
      json['confidenceRange95Percent'] = confidenceRange95Percent;
    if (standardDeviation != null)
      json['standardDeviation'] = standardDeviation;
    return json;
  }

  static List<InlineResponse20048NutritionCalories> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20048NutritionCalories>() : json.map((value) => new InlineResponse20048NutritionCalories.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20048NutritionCalories> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20048NutritionCalories>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20048NutritionCalories.fromJson(value));
    }
    return map;
  }
}

