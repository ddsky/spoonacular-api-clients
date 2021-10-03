part of openapi.api;

class InlineResponse20040 {
  
  String name = null;
  
  List<InlineResponse20040Items> items = [];
  
  bool publishAsPublic = null;
  InlineResponse20040();

  @override
  String toString() {
    return 'InlineResponse20040[name=$name, items=$items, publishAsPublic=$publishAsPublic, ]';
  }

  InlineResponse20040.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['items'] == null) {
      items = null;
    } else {
      items = InlineResponse20040Items.listFromJson(json['items']);
    }
    if (json['publishAsPublic'] == null) {
      publishAsPublic = null;
    } else {
          publishAsPublic = json['publishAsPublic'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (items != null)
      json['items'] = items;
    if (publishAsPublic != null)
      json['publishAsPublic'] = publishAsPublic;
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

