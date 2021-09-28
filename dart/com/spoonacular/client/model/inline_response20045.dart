part of openapi.api;

class InlineResponse20045 {
  
  String wineDescription = null;
  InlineResponse20045();

  @override
  String toString() {
    return 'InlineResponse20045[wineDescription=$wineDescription, ]';
  }

  InlineResponse20045.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['wineDescription'] == null) {
      wineDescription = null;
    } else {
          wineDescription = json['wineDescription'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (wineDescription != null)
      json['wineDescription'] = wineDescription;
    return json;
  }

  static List<InlineResponse20045> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20045>() : json.map((value) => new InlineResponse20045.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20045> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20045>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20045.fromJson(value));
    }
    return map;
  }
}

