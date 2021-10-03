part of openapi.api;

class InlineResponse20049Category {
  
  String name = null;
  
  num probability = null;
  InlineResponse20049Category();

  @override
  String toString() {
    return 'InlineResponse20049Category[name=$name, probability=$probability, ]';
  }

  InlineResponse20049Category.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse20049Category> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20049Category>() : json.map((value) => new InlineResponse20049Category.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20049Category> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20049Category>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20049Category.fromJson(value));
    }
    return map;
  }
}

