part of openapi.api;

class InlineResponse20057Suggests {
  
  List<Object> _ = [];
  InlineResponse20057Suggests();

  @override
  String toString() {
    return 'InlineResponse20057Suggests[_=$_, ]';
  }

  InlineResponse20057Suggests.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_'] == null) {
      _ = null;
    } else {
      _ = Object.listFromJson(json['_']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (_ != null)
      json['_'] = _;
    return json;
  }

  static List<InlineResponse20057Suggests> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20057Suggests>() : json.map((value) => new InlineResponse20057Suggests.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20057Suggests> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20057Suggests>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20057Suggests.fromJson(value));
    }
    return map;
  }
}

