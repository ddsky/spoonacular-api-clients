part of openapi.api;

class InlineResponse20013ParsedInstructions {
  
  String name = null;
  
  List<InlineResponse20013Steps> steps = [];
  InlineResponse20013ParsedInstructions();

  @override
  String toString() {
    return 'InlineResponse20013ParsedInstructions[name=$name, steps=$steps, ]';
  }

  InlineResponse20013ParsedInstructions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['steps'] == null) {
      steps = null;
    } else {
      steps = InlineResponse20013Steps.listFromJson(json['steps']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (steps != null)
      json['steps'] = steps;
    return json;
  }

  static List<InlineResponse20013ParsedInstructions> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20013ParsedInstructions>() : json.map((value) => new InlineResponse20013ParsedInstructions.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013ParsedInstructions> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20013ParsedInstructions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20013ParsedInstructions.fromJson(value));
    }
    return map;
  }
}

