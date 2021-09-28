part of openapi.api;

class InlineResponse20021CaloriesConfidenceRange95Percent {
  
  num max = null;
  
  num min = null;
  InlineResponse20021CaloriesConfidenceRange95Percent();

  @override
  String toString() {
    return 'InlineResponse20021CaloriesConfidenceRange95Percent[max=$max, min=$min, ]';
  }

  InlineResponse20021CaloriesConfidenceRange95Percent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['max'] == null) {
      max = null;
    } else {
          max = json['max'];
    }
    if (json['min'] == null) {
      min = null;
    } else {
          min = json['min'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (max != null)
      json['max'] = max;
    if (min != null)
      json['min'] = min;
    return json;
  }

  static List<InlineResponse20021CaloriesConfidenceRange95Percent> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20021CaloriesConfidenceRange95Percent>() : json.map((value) => new InlineResponse20021CaloriesConfidenceRange95Percent.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20021CaloriesConfidenceRange95Percent> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20021CaloriesConfidenceRange95Percent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20021CaloriesConfidenceRange95Percent.fromJson(value));
    }
    return map;
  }
}

