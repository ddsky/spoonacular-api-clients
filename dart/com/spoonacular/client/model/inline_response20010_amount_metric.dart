part of openapi.api;

class InlineResponse20010AmountMetric {
  
  String unit = null;
  
  num value = null;
  InlineResponse20010AmountMetric();

  @override
  String toString() {
    return 'InlineResponse20010AmountMetric[unit=$unit, value=$value, ]';
  }

  InlineResponse20010AmountMetric.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (unit != null)
      json['unit'] = unit;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<InlineResponse20010AmountMetric> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20010AmountMetric>() : json.map((value) => new InlineResponse20010AmountMetric.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20010AmountMetric> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20010AmountMetric>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20010AmountMetric.fromJson(value));
    }
    return map;
  }
}

