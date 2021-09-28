part of openapi.api;

class InlineResponse20015 {
  
  String url = null;
  InlineResponse20015();

  @override
  String toString() {
    return 'InlineResponse20015[url=$url, ]';
  }

  InlineResponse20015.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<InlineResponse20015> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20015>() : json.map((value) => new InlineResponse20015.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20015> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20015>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20015.fromJson(value));
    }
    return map;
  }
}

