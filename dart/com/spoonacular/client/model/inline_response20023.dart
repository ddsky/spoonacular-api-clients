part of openapi.api;

class InlineResponse20023 {
  
  num totalGlycemicLoad = null;
  
  List<InlineResponse20023Ingredients> ingredients = [];
  InlineResponse20023();

  @override
  String toString() {
    return 'InlineResponse20023[totalGlycemicLoad=$totalGlycemicLoad, ingredients=$ingredients, ]';
  }

  InlineResponse20023.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['totalGlycemicLoad'] == null) {
      totalGlycemicLoad = null;
    } else {
          totalGlycemicLoad = json['totalGlycemicLoad'];
    }
    if (json['ingredients'] == null) {
      ingredients = null;
    } else {
      ingredients = InlineResponse20023Ingredients.listFromJson(json['ingredients']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (totalGlycemicLoad != null)
      json['totalGlycemicLoad'] = totalGlycemicLoad;
    if (ingredients != null)
      json['ingredients'] = ingredients;
    return json;
  }

  static List<InlineResponse20023> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20023>() : json.map((value) => new InlineResponse20023.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20023> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20023>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20023.fromJson(value));
    }
    return map;
  }
}

