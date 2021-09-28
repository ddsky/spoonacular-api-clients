part of openapi.api;

class InlineResponse20038Value {
  
  num servings = null;
  
  num id = null;
  
  String title = null;
  
  String imageType = null;
  InlineResponse20038Value();

  @override
  String toString() {
    return 'InlineResponse20038Value[servings=$servings, id=$id, title=$title, imageType=$imageType, ]';
  }

  InlineResponse20038Value.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['servings'] == null) {
      servings = null;
    } else {
          servings = json['servings'];
    }
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (servings != null)
      json['servings'] = servings;
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    if (imageType != null)
      json['imageType'] = imageType;
    return json;
  }

  static List<InlineResponse20038Value> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20038Value>() : json.map((value) => new InlineResponse20038Value.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20038Value> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20038Value>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20038Value.fromJson(value));
    }
    return map;
  }
}

