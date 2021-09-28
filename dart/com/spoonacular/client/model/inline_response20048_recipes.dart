part of openapi.api;

class InlineResponse20048Recipes {
  
  int id = null;
  
  String title = null;
  
  String imageType = null;
  
  String url = null;
  InlineResponse20048Recipes();

  @override
  String toString() {
    return 'InlineResponse20048Recipes[id=$id, title=$title, imageType=$imageType, url=$url, ]';
  }

  InlineResponse20048Recipes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['imageType'] == null) {
      imageType = null;
    } else {
          imageType = json['imageType'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    if (imageType != null)
      json['imageType'] = imageType;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<InlineResponse20048Recipes> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20048Recipes>() : json.map((value) => new InlineResponse20048Recipes.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20048Recipes> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20048Recipes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20048Recipes.fromJson(value));
    }
    return map;
  }
}

