part of openapi.api;

class InlineResponse20032Results {
  
  int id = null;
  
  String title = null;
  InlineResponse20032Results();

  @override
  String toString() {
    return 'InlineResponse20032Results[id=$id, title=$title, ]';
  }

  InlineResponse20032Results.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<InlineResponse20032Results> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20032Results>() : json.map((value) => new InlineResponse20032Results.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20032Results> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20032Results>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20032Results.fromJson(value));
    }
    return map;
  }
}

