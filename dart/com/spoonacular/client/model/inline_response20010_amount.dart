part of openapi.api;

class InlineResponse20010Amount {
  
  InlineResponse20010AmountMetric metric = null;
  
  InlineResponse20010AmountMetric us = null;
  InlineResponse20010Amount();

  @override
  String toString() {
    return 'InlineResponse20010Amount[metric=$metric, us=$us, ]';
  }

  InlineResponse20010Amount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['metric'] == null) {
      metric = null;
    } else {
      metric = new InlineResponse20010AmountMetric.fromJson(json['metric']);
    }
    if (json['us'] == null) {
      us = null;
    } else {
      us = new InlineResponse20010AmountMetric.fromJson(json['us']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (metric != null)
      json['metric'] = metric;
    if (us != null)
      json['us'] = us;
    return json;
  }

  static List<InlineResponse20010Amount> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20010Amount>() : json.map((value) => new InlineResponse20010Amount.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20010Amount> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20010Amount>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20010Amount.fromJson(value));
    }
    return map;
  }
}

