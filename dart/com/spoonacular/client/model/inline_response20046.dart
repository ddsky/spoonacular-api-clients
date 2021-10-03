part of openapi.api;

class InlineResponse20046 {
  
  String wineDescription = null;
  InlineResponse20046();

  @override
  String toString() {
    return 'InlineResponse20046[wineDescription=$wineDescription, ]';
  }

  InlineResponse20046.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse20046> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20046>() : json.map((value) => new InlineResponse20046.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20046> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20046>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20046.fromJson(value));
    }
    return map;
  }
}

