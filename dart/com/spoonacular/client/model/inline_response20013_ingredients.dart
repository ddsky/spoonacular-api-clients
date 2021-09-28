part of openapi.api;

class InlineResponse20013Ingredients {
  
  int id = null;
  
  String name = null;
  
  String localizedName = null;
  
  String image = null;
  InlineResponse20013Ingredients();

  @override
  String toString() {
    return 'InlineResponse20013Ingredients[id=$id, name=$name, localizedName=$localizedName, image=$image, ]';
  }

  InlineResponse20013Ingredients.fromJson(Map<String, dynamic> json) {
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
    if (json['localizedName'] == null) {
      localizedName = null;
    } else {
          localizedName = json['localizedName'];
    }
    if (json['image'] == null) {
      image = null;
    } else {
          image = json['image'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (localizedName != null)
      json['localizedName'] = localizedName;
    if (image != null)
      json['image'] = image;
    return json;
  }

  static List<InlineResponse20013Ingredients> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20013Ingredients>() : json.map((value) => new InlineResponse20013Ingredients.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013Ingredients> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20013Ingredients>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20013Ingredients.fromJson(value));
    }
    return map;
  }
}

