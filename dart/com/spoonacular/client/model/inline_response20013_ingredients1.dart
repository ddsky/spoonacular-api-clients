part of openapi.api;

class InlineResponse20013Ingredients1 {
  
  int id = null;
  
  String name = null;
  InlineResponse20013Ingredients1();

  @override
  String toString() {
    return 'InlineResponse20013Ingredients1[id=$id, name=$name, ]';
  }

  InlineResponse20013Ingredients1.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<InlineResponse20013Ingredients1> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20013Ingredients1>() : json.map((value) => new InlineResponse20013Ingredients1.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013Ingredients1> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20013Ingredients1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20013Ingredients1.fromJson(value));
    }
    return map;
  }
}

