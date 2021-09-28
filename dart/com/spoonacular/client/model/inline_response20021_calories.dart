part of openapi.api;

class InlineResponse20021Calories {
  
  InlineResponse20021CaloriesConfidenceRange95Percent confidenceRange95Percent = null;
  
  num standardDeviation = null;
  
  String unit = null;
  
  num value = null;
  InlineResponse20021Calories();

  @override
  String toString() {
    return 'InlineResponse20021Calories[confidenceRange95Percent=$confidenceRange95Percent, standardDeviation=$standardDeviation, unit=$unit, value=$value, ]';
  }

  InlineResponse20021Calories.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['confidenceRange95Percent'] == null) {
      confidenceRange95Percent = null;
    } else {
      confidenceRange95Percent = new InlineResponse20021CaloriesConfidenceRange95Percent.fromJson(json['confidenceRange95Percent']);
    }
    if (json['standardDeviation'] == null) {
      standardDeviation = null;
    } else {
          standardDeviation = json['standardDeviation'];
    }
    if (json['unit'] == null) {
      unit = null;
    } else {
          unit = json['unit'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (confidenceRange95Percent != null)
      json['confidenceRange95Percent'] = confidenceRange95Percent;
    if (standardDeviation != null)
      json['standardDeviation'] = standardDeviation;
    if (unit != null)
      json['unit'] = unit;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<InlineResponse20021Calories> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20021Calories>() : json.map((value) => new InlineResponse20021Calories.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20021Calories> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20021Calories>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20021Calories.fromJson(value));
    }
    return map;
  }
}

