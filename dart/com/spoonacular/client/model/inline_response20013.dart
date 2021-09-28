part of openapi.api;

class InlineResponse20013 {
  
  List<InlineResponse20013ParsedInstructions> parsedInstructions = [];
  
  List<InlineResponse20013Ingredients1> ingredients = [];
  
  List<InlineResponse20013Ingredients1> equipment = [];
  InlineResponse20013();

  @override
  String toString() {
    return 'InlineResponse20013[parsedInstructions=$parsedInstructions, ingredients=$ingredients, equipment=$equipment, ]';
  }

  InlineResponse20013.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['parsedInstructions'] == null) {
      parsedInstructions = null;
    } else {
      parsedInstructions = InlineResponse20013ParsedInstructions.listFromJson(json['parsedInstructions']);
    }
    if (json['ingredients'] == null) {
      ingredients = null;
    } else {
      ingredients = InlineResponse20013Ingredients1.listFromJson(json['ingredients']);
    }
    if (json['equipment'] == null) {
      equipment = null;
    } else {
      equipment = InlineResponse20013Ingredients1.listFromJson(json['equipment']);
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

  static List<InlineResponse20013> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20013>() : json.map((value) => new InlineResponse20013.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20013>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20013.fromJson(value));
    }
    return map;
  }
}

