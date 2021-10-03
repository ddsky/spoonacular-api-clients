part of openapi.api;

class InlineResponse20041 {
  
  int id = null;
  
  String name = null;
  
  List<InlineResponse20041Days> days = [];
  InlineResponse20041();

  @override
  String toString() {
    return 'InlineResponse20041[id=$id, name=$name, days=$days, ]';
  }

  InlineResponse20041.fromJson(Map<String, dynamic> json) {
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
      days = InlineResponse20041Days.listFromJson(json['days']);
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

  static List<InlineResponse20041> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20041>() : json.map((value) => new InlineResponse20041.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20041> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20041>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20041.fromJson(value));
    }
    return map;
  }
}

