part of openapi.api;

class InlineResponse20032 {
  
  List<InlineResponse20032Results> results = [];
  InlineResponse20032();

  @override
  String toString() {
    return 'InlineResponse20032[results=$results, ]';
  }

  InlineResponse20032.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['results'] == null) {
      results = null;
    } else {
      results = InlineResponse20032Results.listFromJson(json['results']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<InlineResponse20032> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20032>() : json.map((value) => new InlineResponse20032.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20032> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20032>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20032.fromJson(value));
    }
    return map;
  }
}

