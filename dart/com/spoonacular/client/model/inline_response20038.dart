part of openapi.api;

class InlineResponse20038 {
  
  List<InlineResponse20038Days> days = [];
  InlineResponse20038();

  @override
  String toString() {
    return 'InlineResponse20038[days=$days, ]';
  }

  InlineResponse20038.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['days'] == null) {
      days = null;
    } else {
      days = InlineResponse20038Days.listFromJson(json['days']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (days != null)
      json['days'] = days;
    return json;
  }

  static List<InlineResponse20038> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20038>() : json.map((value) => new InlineResponse20038.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20038> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20038>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20038.fromJson(value));
    }
    return map;
  }
}

