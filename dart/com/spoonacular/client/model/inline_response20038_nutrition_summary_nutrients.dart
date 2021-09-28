part of openapi.api;

class InlineResponse20038NutritionSummaryNutrients {
  
  String name = null;
  
  num amount = null;
  
  String unit = null;
  
  num percentDailyNeeds = null;
  InlineResponse20038NutritionSummaryNutrients();

  @override
  String toString() {
    return 'InlineResponse20038NutritionSummaryNutrients[name=$name, amount=$amount, unit=$unit, percentDailyNeeds=$percentDailyNeeds, ]';
  }

  InlineResponse20038NutritionSummaryNutrients.fromJson(Map<String, dynamic> json) {
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
    if (json['percentDailyNeeds'] == null) {
      percentDailyNeeds = null;
    } else {
          percentDailyNeeds = json['percentDailyNeeds'];
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
    if (percentDailyNeeds != null)
      json['percentDailyNeeds'] = percentDailyNeeds;
    return json;
  }

  static List<InlineResponse20038NutritionSummaryNutrients> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20038NutritionSummaryNutrients>() : json.map((value) => new InlineResponse20038NutritionSummaryNutrients.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20038NutritionSummaryNutrients> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20038NutritionSummaryNutrients>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20038NutritionSummaryNutrients.fromJson(value));
    }
    return map;
  }
}

