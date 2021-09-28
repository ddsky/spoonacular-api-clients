part of openapi.api;

class InlineResponse20010 {
  
  List<InlineResponse20010Ingredients> ingredients = [];
  
  num totalCost = null;
  
  num totalCostPerServing = null;
  InlineResponse20010();

  @override
  String toString() {
    return 'InlineResponse20010[ingredients=$ingredients, totalCost=$totalCost, totalCostPerServing=$totalCostPerServing, ]';
  }

  InlineResponse20010.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['ingredients'] == null) {
      ingredients = null;
    } else {
      ingredients = InlineResponse20010Ingredients.listFromJson(json['ingredients']);
    }
    if (json['totalCost'] == null) {
      totalCost = null;
    } else {
          totalCost = json['totalCost'];
    }
    if (json['totalCostPerServing'] == null) {
      totalCostPerServing = null;
    } else {
          totalCostPerServing = json['totalCostPerServing'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ingredients != null)
      json['ingredients'] = ingredients;
    if (totalCost != null)
      json['totalCost'] = totalCost;
    if (totalCostPerServing != null)
      json['totalCostPerServing'] = totalCostPerServing;
    return json;
  }

  static List<InlineResponse20010> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20010>() : json.map((value) => new InlineResponse20010.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20010> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20010>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20010.fromJson(value));
    }
    return map;
  }
}

