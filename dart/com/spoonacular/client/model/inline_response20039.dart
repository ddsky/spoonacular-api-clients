part of openapi.api;

class InlineResponse20039 {
  
  List<InlineResponse20013Ingredients1> templates = [];
  InlineResponse20039();

  @override
  String toString() {
    return 'InlineResponse20039[templates=$templates, ]';
  }

  InlineResponse20039.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['templates'] == null) {
      templates = null;
    } else {
      templates = InlineResponse20013Ingredients1.listFromJson(json['templates']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (templates != null)
      json['templates'] = templates;
    return json;
  }

  static List<InlineResponse20039> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20039>() : json.map((value) => new InlineResponse20039.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20039> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20039>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20039.fromJson(value));
    }
    return map;
  }
}

