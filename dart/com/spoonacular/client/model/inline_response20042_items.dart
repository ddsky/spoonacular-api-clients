part of openapi.api;

class InlineResponse20042Items {
  
  int id = null;
  
  String name = null;
  
  InlineResponse20042Measures measures = null;
  
  bool pantryItem = null;
  
  String aisle = null;
  
  num cost = null;
  
  int ingredientId = null;
  InlineResponse20042Items();

  @override
  String toString() {
    return 'InlineResponse20042Items[id=$id, name=$name, measures=$measures, pantryItem=$pantryItem, aisle=$aisle, cost=$cost, ingredientId=$ingredientId, ]';
  }

  InlineResponse20042Items.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['measures'] == null) {
      measures = null;
    } else {
      measures = new InlineResponse20042Measures.fromJson(json['measures']);
    }
    if (json['pantryItem'] == null) {
      pantryItem = null;
    } else {
          pantryItem = json['pantryItem'];
    }
    if (json['aisle'] == null) {
      aisle = null;
    } else {
          aisle = json['aisle'];
    }
    if (json['cost'] == null) {
      cost = null;
    } else {
          cost = json['cost'];
    }
    if (json['ingredientId'] == null) {
      ingredientId = null;
    } else {
          ingredientId = json['ingredientId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (measures != null)
      json['measures'] = measures;
    if (pantryItem != null)
      json['pantryItem'] = pantryItem;
    if (aisle != null)
      json['aisle'] = aisle;
    if (cost != null)
      json['cost'] = cost;
    if (ingredientId != null)
      json['ingredientId'] = ingredientId;
    return json;
  }

  static List<InlineResponse20042Items> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20042Items>() : json.map((value) => new InlineResponse20042Items.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20042Items> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20042Items>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20042Items.fromJson(value));
    }
    return map;
  }
}

