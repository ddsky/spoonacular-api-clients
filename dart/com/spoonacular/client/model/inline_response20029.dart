part of openapi.api;

class InlineResponse20029 {
  
  List<InlineResponse20029CustomFoods> customFoods = [];
  
  String type = null;
  
  int offset = null;
  
  int number = null;
  InlineResponse20029();

  @override
  String toString() {
    return 'InlineResponse20029[customFoods=$customFoods, type=$type, offset=$offset, number=$number, ]';
  }

  InlineResponse20029.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['customFoods'] == null) {
      customFoods = null;
    } else {
      customFoods = InlineResponse20029CustomFoods.listFromJson(json['customFoods']);
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['offset'] == null) {
      offset = null;
    } else {
          offset = json['offset'];
    }
    if (json['number'] == null) {
      number = null;
    } else {
          number = json['number'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (customFoods != null)
      json['customFoods'] = customFoods;
    if (type != null)
      json['type'] = type;
    if (offset != null)
      json['offset'] = offset;
    if (number != null)
      json['number'] = number;
    return json;
  }

  static List<InlineResponse20029> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20029>() : json.map((value) => new InlineResponse20029.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20029> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20029>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20029.fromJson(value));
    }
    return map;
  }
}

