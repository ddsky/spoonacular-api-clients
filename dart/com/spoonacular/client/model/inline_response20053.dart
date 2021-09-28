part of openapi.api;

class InlineResponse20053 {
  
  List<InlineResponse20053Videos> videos = [];
  
  int totalResults = null;
  InlineResponse20053();

  @override
  String toString() {
    return 'InlineResponse20053[videos=$videos, totalResults=$totalResults, ]';
  }

  InlineResponse20053.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['videos'] == null) {
      videos = null;
    } else {
      videos = InlineResponse20053Videos.listFromJson(json['videos']);
    }
    if (json['totalResults'] == null) {
      totalResults = null;
    } else {
          totalResults = json['totalResults'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (videos != null)
      json['videos'] = videos;
    if (totalResults != null)
      json['totalResults'] = totalResults;
    return json;
  }

  static List<InlineResponse20053> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20053>() : json.map((value) => new InlineResponse20053.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20053> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20053>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20053.fromJson(value));
    }
    return map;
  }
}

