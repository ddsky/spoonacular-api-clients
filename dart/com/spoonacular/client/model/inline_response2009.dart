part of openapi.api;

class InlineResponse2009 {
  
  List<Object> equipment = [];
  InlineResponse2009();

  @override
  String toString() {
    return 'InlineResponse2009[equipment=$equipment, ]';
  }

  InlineResponse2009.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['equipment'] == null) {
      equipment = null;
    } else {
      equipment = Object.listFromJson(json['equipment']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (equipment != null)
      json['equipment'] = equipment;
    return json;
  }

  static List<InlineResponse2009> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2009>() : json.map((value) => new InlineResponse2009.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2009> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2009>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2009.fromJson(value));
    }
    return map;
  }
}

