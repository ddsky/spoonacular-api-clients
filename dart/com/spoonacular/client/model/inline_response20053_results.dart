part of openapi.api;

class InlineResponse20053Results {
  
  String id = null;
  
  String name = null;
  
  String image = null;
  
  String link = null;
  
  String type = null;
  
  num relevance = null;
  
  String content = null;
  InlineResponse20053Results();

  @override
  String toString() {
    return 'InlineResponse20053Results[id=$id, name=$name, image=$image, link=$link, type=$type, relevance=$relevance, content=$content, ]';
  }

  InlineResponse20053Results.fromJson(Map<String, dynamic> json) {
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
    if (json['image'] == null) {
      image = null;
    } else {
          image = json['image'];
    }
    if (json['link'] == null) {
      link = null;
    } else {
          link = json['link'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['relevance'] == null) {
      relevance = null;
    } else {
          relevance = json['relevance'];
    }
    if (json['content'] == null) {
      content = null;
    } else {
          content = json['content'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
      json['image'] = image;
      json['link'] = link;
    if (type != null)
      json['type'] = type;
    if (relevance != null)
      json['relevance'] = relevance;
      json['content'] = content;
    return json;
  }

  static List<InlineResponse20053Results> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20053Results>() : json.map((value) => new InlineResponse20053Results.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20053Results> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20053Results>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20053Results.fromJson(value));
    }
    return map;
  }
}

