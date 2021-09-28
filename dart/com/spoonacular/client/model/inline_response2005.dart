part of openapi.api;

class InlineResponse2005 {
  
  int id = null;
  
  String title = null;
  
  String imageType = null;
  
  int readyInMinutes = null;
  
  num servings = null;
  
  String sourceUrl = null;
  InlineResponse2005();

  @override
  String toString() {
    return 'InlineResponse2005[id=$id, title=$title, imageType=$imageType, readyInMinutes=$readyInMinutes, servings=$servings, sourceUrl=$sourceUrl, ]';
  }

  InlineResponse2005.fromJson(Map<String, dynamic> json) {
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
    if (json['readyInMinutes'] == null) {
      readyInMinutes = null;
    } else {
          readyInMinutes = json['readyInMinutes'];
    }
    if (json['servings'] == null) {
      servings = null;
    } else {
          servings = json['servings'];
    }
    if (json['sourceUrl'] == null) {
      sourceUrl = null;
    } else {
          sourceUrl = json['sourceUrl'];
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
    if (readyInMinutes != null)
      json['readyInMinutes'] = readyInMinutes;
    if (servings != null)
      json['servings'] = servings;
    if (sourceUrl != null)
      json['sourceUrl'] = sourceUrl;
    return json;
  }

  static List<InlineResponse2005> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2005>() : json.map((value) => new InlineResponse2005.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2005> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2005>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2005.fromJson(value));
    }
    return map;
  }
}

