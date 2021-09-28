part of openapi.api;

class InlineResponse20018Ingredients {
  
  String image = null;
  
  bool include = null;
  
  String name = null;
  InlineResponse20018Ingredients();

  @override
  String toString() {
    return 'InlineResponse20018Ingredients[image=$image, include=$include, name=$name, ]';
  }

  InlineResponse20018Ingredients.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['image'] == null) {
      image = null;
    } else {
          image = json['image'];
    }
    if (json['include'] == null) {
      include = null;
    } else {
          include = json['include'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (image != null)
      json['image'] = image;
    if (include != null)
      json['include'] = include;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<InlineResponse20018Ingredients> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20018Ingredients>() : json.map((value) => new InlineResponse20018Ingredients.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20018Ingredients> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20018Ingredients>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20018Ingredients.fromJson(value));
    }
    return map;
  }
}

