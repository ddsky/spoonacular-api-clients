part of openapi.api;

class InlineResponse20041Value {
  
  num id = null;
  
  String title = null;
  
  String imageType = null;
  InlineResponse20041Value();

  @override
  String toString() {
    return 'InlineResponse20041Value[id=$id, title=$title, imageType=$imageType, ]';
  }

  InlineResponse20041Value.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse20041Value> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20041Value>() : json.map((value) => new InlineResponse20041Value.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20041Value> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20041Value>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20041Value.fromJson(value));
    }
    return map;
  }
}

