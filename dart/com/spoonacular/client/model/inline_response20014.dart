part of openapi.api;

class InlineResponse20014 {
  
  int id = null;
  
  String summary = null;
  
  String title = null;
  InlineResponse20014();

  @override
  String toString() {
    return 'InlineResponse20014[id=$id, summary=$summary, title=$title, ]';
  }

  InlineResponse20014.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['summary'] == null) {
      summary = null;
    } else {
          summary = json['summary'];
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
    if (summary != null)
      json['summary'] = summary;
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<InlineResponse20014> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20014>() : json.map((value) => new InlineResponse20014.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20014> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20014>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20014.fromJson(value));
    }
    return map;
  }
}

