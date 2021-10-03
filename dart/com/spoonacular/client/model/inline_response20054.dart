part of openapi.api;

class InlineResponse20054 {
  
  List<InlineResponse20054Videos> videos = [];
  
  int totalResults = null;
  InlineResponse20054();

  @override
  String toString() {
    return 'InlineResponse20054[videos=$videos, totalResults=$totalResults, ]';
  }

  InlineResponse20054.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['videos'] == null) {
      videos = null;
    } else {
      videos = InlineResponse20054Videos.listFromJson(json['videos']);
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

  static List<InlineResponse20054> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20054>() : json.map((value) => new InlineResponse20054.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20054> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20054>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20054.fromJson(value));
    }
    return map;
  }
}

