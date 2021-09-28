part of openapi.api;

class InlineResponse20038NutritionSummary {
  
  List<InlineResponse20038NutritionSummaryNutrients> nutrients = [];
  InlineResponse20038NutritionSummary();

  @override
  String toString() {
    return 'InlineResponse20038NutritionSummary[nutrients=$nutrients, ]';
  }

  InlineResponse20038NutritionSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['nutrients'] == null) {
      nutrients = null;
    } else {
      nutrients = InlineResponse20038NutritionSummaryNutrients.listFromJson(json['nutrients']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (nutrients != null)
      json['nutrients'] = nutrients;
    return json;
  }

  static List<InlineResponse20038NutritionSummary> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20038NutritionSummary>() : json.map((value) => new InlineResponse20038NutritionSummary.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20038NutritionSummary> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20038NutritionSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20038NutritionSummary.fromJson(value));
    }
    return map;
  }
}

