part of openapi.api;

class InlineResponse20049Recipes {
  
  int id = null;
  
  String title = null;
  
  String imageType = null;
  
  String url = null;
  InlineResponse20049Recipes();

  @override
  String toString() {
    return 'InlineResponse20049Recipes[id=$id, title=$title, imageType=$imageType, url=$url, ]';
  }

  InlineResponse20049Recipes.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse20049Recipes> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20049Recipes>() : json.map((value) => new InlineResponse20049Recipes.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20049Recipes> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20049Recipes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20049Recipes.fromJson(value));
    }
    return map;
  }
}

