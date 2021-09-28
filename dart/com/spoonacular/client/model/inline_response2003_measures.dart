part of openapi.api;

class InlineResponse2003Measures {
  
  InlineResponse2003MeasuresMetric metric = null;
  
  InlineResponse2003MeasuresMetric us = null;
  InlineResponse2003Measures();

  @override
  String toString() {
    return 'InlineResponse2003Measures[metric=$metric, us=$us, ]';
  }

  InlineResponse2003Measures.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['metric'] == null) {
      metric = null;
    } else {
      metric = new InlineResponse2003MeasuresMetric.fromJson(json['metric']);
    }
    if (json['us'] == null) {
      us = null;
    } else {
      us = new InlineResponse2003MeasuresMetric.fromJson(json['us']);
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

  static List<InlineResponse2003Measures> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2003Measures>() : json.map((value) => new InlineResponse2003Measures.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2003Measures> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2003Measures>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2003Measures.fromJson(value));
    }
    return map;
  }
}

