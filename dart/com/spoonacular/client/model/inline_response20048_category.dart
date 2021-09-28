part of openapi.api;

class InlineResponse20048Category {
  
  String name = null;
  
  num probability = null;
  InlineResponse20048Category();

  @override
  String toString() {
    return 'InlineResponse20048Category[name=$name, probability=$probability, ]';
  }

  InlineResponse20048Category.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['probability'] == null) {
      probability = null;
    } else {
          probability = json['probability'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (probability != null)
      json['probability'] = probability;
    return json;
  }

  static List<InlineResponse20048Category> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20048Category>() : json.map((value) => new InlineResponse20048Category.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20048Category> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20048Category>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20048Category.fromJson(value));
    }
    return map;
  }
}

