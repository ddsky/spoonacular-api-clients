part of openapi.api;

class InlineResponse20040 {
  
  int id = null;
  
  String name = null;
  
  List<InlineResponse20040Days> days = [];
  InlineResponse20040();

  @override
  String toString() {
    return 'InlineResponse20040[id=$id, name=$name, days=$days, ]';
  }

  InlineResponse20040.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['days'] == null) {
      days = null;
    } else {
      days = InlineResponse20040Days.listFromJson(json['days']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (days != null)
      json['days'] = days;
    return json;
  }

  static List<InlineResponse20040> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20040>() : json.map((value) => new InlineResponse20040.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20040> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20040>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20040.fromJson(value));
    }
    return map;
  }
}

