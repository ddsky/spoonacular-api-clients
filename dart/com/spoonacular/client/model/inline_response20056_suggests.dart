part of openapi.api;

class InlineResponse20056Suggests {
  
  List<Object> _ = [];
  InlineResponse20056Suggests();

  @override
  String toString() {
    return 'InlineResponse20056Suggests[_=$_, ]';
  }

  InlineResponse20056Suggests.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse20056Suggests> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20056Suggests>() : json.map((value) => new InlineResponse20056Suggests.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20056Suggests> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20056Suggests>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20056Suggests.fromJson(value));
    }
    return map;
  }
}

