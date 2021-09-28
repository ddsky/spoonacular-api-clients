part of openapi.api;

class InlineResponse20018Dishes {
  
  String image = null;
  
  String name = null;
  InlineResponse20018Dishes();

  @override
  String toString() {
    return 'InlineResponse20018Dishes[image=$image, name=$name, ]';
  }

  InlineResponse20018Dishes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['image'] == null) {
      image = null;
    } else {
          image = json['image'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (image != null)
      json['image'] = image;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<InlineResponse20018Dishes> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20018Dishes>() : json.map((value) => new InlineResponse20018Dishes.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20018Dishes> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20018Dishes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20018Dishes.fromJson(value));
    }
    return map;
  }
}

