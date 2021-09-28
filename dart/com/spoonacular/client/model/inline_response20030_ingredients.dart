part of openapi.api;

class InlineResponse20030Ingredients {
  
  Object description = null;
  
  String name = null;
  
  Object safetyLevel = null;
  InlineResponse20030Ingredients();

  @override
  String toString() {
    return 'InlineResponse20030Ingredients[description=$description, name=$name, safetyLevel=$safetyLevel, ]';
  }

  InlineResponse20030Ingredients.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
      description = new Object.fromJson(json['description']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['safety_level'] == null) {
      safetyLevel = null;
    } else {
      safetyLevel = new Object.fromJson(json['safety_level']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (name != null)
      json['name'] = name;
    if (safetyLevel != null)
      json['safety_level'] = safetyLevel;
    return json;
  }

  static List<InlineResponse20030Ingredients> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20030Ingredients>() : json.map((value) => new InlineResponse20030Ingredients.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20030Ingredients> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20030Ingredients>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20030Ingredients.fromJson(value));
    }
    return map;
  }
}

