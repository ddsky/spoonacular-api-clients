part of openapi.api;

class InlineResponse20013Steps {
  
  num number = null;
  
  String step = null;
  
  List<InlineResponse20013Ingredients> ingredients = [];
  
  List<InlineResponse20013Ingredients> equipment = [];
  InlineResponse20013Steps();

  @override
  String toString() {
    return 'InlineResponse20013Steps[number=$number, step=$step, ingredients=$ingredients, equipment=$equipment, ]';
  }

  InlineResponse20013Steps.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['number'] == null) {
      number = null;
    } else {
          number = json['number'];
    }
    if (json['step'] == null) {
      step = null;
    } else {
          step = json['step'];
    }
    if (json['ingredients'] == null) {
      ingredients = null;
    } else {
      ingredients = InlineResponse20013Ingredients.listFromJson(json['ingredients']);
    }
    if (json['equipment'] == null) {
      equipment = null;
    } else {
      equipment = InlineResponse20013Ingredients.listFromJson(json['equipment']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (number != null)
      json['number'] = number;
    if (step != null)
      json['step'] = step;
    if (ingredients != null)
      json['ingredients'] = ingredients;
    if (equipment != null)
      json['equipment'] = equipment;
    return json;
  }

  static List<InlineResponse20013Steps> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20013Steps>() : json.map((value) => new InlineResponse20013Steps.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013Steps> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20013Steps>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20013Steps.fromJson(value));
    }
    return map;
  }
}

