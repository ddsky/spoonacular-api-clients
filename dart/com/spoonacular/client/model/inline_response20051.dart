part of openapi.api;

class InlineResponse20051 {
  
  List<Object> annotations = [];
  InlineResponse20051();

  @override
  String toString() {
    return 'InlineResponse20051[annotations=$annotations, ]';
  }

  InlineResponse20051.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['annotations'] == null) {
      annotations = null;
    } else {
      annotations = Object.listFromJson(json['annotations']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (annotations != null)
      json['annotations'] = annotations;
    return json;
  }

  static List<InlineResponse20051> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20051>() : json.map((value) => new InlineResponse20051.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20051> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20051>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20051.fromJson(value));
    }
    return map;
  }
}

