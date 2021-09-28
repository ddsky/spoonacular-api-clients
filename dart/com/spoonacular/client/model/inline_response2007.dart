part of openapi.api;

class InlineResponse2007 {
  
  int id = null;
  
  String title = null;
  
  String imageType = null;
  InlineResponse2007();

  @override
  String toString() {
    return 'InlineResponse2007[id=$id, title=$title, imageType=$imageType, ]';
  }

  InlineResponse2007.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    if (imageType != null)
      json['imageType'] = imageType;
    return json;
  }

  static List<InlineResponse2007> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2007>() : json.map((value) => new InlineResponse2007.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2007> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2007>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2007.fromJson(value));
    }
    return map;
  }
}

