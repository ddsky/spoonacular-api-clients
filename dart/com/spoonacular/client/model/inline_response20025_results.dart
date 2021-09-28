part of openapi.api;

class InlineResponse20025Results {
  
  int id = null;
  
  String name = null;
  
  String image = null;
  InlineResponse20025Results();

  @override
  String toString() {
    return 'InlineResponse20025Results[id=$id, name=$name, image=$image, ]';
  }

  InlineResponse20025Results.fromJson(Map<String, dynamic> json) {
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
    if (json['image'] == null) {
      image = null;
    } else {
          image = json['image'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (image != null)
      json['image'] = image;
    return json;
  }

  static List<InlineResponse20025Results> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20025Results>() : json.map((value) => new InlineResponse20025Results.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20025Results> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20025Results>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20025Results.fromJson(value));
    }
    return map;
  }
}

