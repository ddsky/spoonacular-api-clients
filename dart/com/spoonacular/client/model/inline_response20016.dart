part of openapi.api;

class InlineResponse20016 {
  
  List<Object> parsedInstructions = [];
  
  List<Object> ingredients = [];
  
  List<Object> equipment = [];
  InlineResponse20016();

  @override
  String toString() {
    return 'InlineResponse20016[parsedInstructions=$parsedInstructions, ingredients=$ingredients, equipment=$equipment, ]';
  }

  InlineResponse20016.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['parsedInstructions'] == null) {
      parsedInstructions = null;
    } else {
      parsedInstructions = Object.listFromJson(json['parsedInstructions']);
    }
    if (json['ingredients'] == null) {
      ingredients = null;
    } else {
      ingredients = Object.listFromJson(json['ingredients']);
    }
    if (json['equipment'] == null) {
      equipment = null;
    } else {
      equipment = Object.listFromJson(json['equipment']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (parsedInstructions != null)
      json['parsedInstructions'] = parsedInstructions;
    if (ingredients != null)
      json['ingredients'] = ingredients;
    if (equipment != null)
      json['equipment'] = equipment;
    return json;
  }

  static List<InlineResponse20016> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20016>() : json.map((value) => new InlineResponse20016.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20016> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20016>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20016.fromJson(value));
    }
    return map;
  }
}

