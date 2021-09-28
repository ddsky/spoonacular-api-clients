part of openapi.api;

class InlineResponse2003MeasuresMetric {
  
  num amount = null;
  
  String unitLong = null;
  
  String unitShort = null;
  InlineResponse2003MeasuresMetric();

  @override
  String toString() {
    return 'InlineResponse2003MeasuresMetric[amount=$amount, unitLong=$unitLong, unitShort=$unitShort, ]';
  }

  InlineResponse2003MeasuresMetric.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['amount'] == null) {
      amount = null;
    } else {
          amount = json['amount'];
    }
    if (json['unitLong'] == null) {
      unitLong = null;
    } else {
          unitLong = json['unitLong'];
    }
    if (json['unitShort'] == null) {
      unitShort = null;
    } else {
          unitShort = json['unitShort'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (amount != null)
      json['amount'] = amount;
    if (unitLong != null)
      json['unitLong'] = unitLong;
    if (unitShort != null)
      json['unitShort'] = unitShort;
    return json;
  }

  static List<InlineResponse2003MeasuresMetric> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2003MeasuresMetric>() : json.map((value) => new InlineResponse2003MeasuresMetric.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2003MeasuresMetric> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2003MeasuresMetric>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2003MeasuresMetric.fromJson(value));
    }
    return map;
  }
}

