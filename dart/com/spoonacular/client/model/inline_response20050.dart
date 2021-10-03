part of openapi.api;

class InlineResponse20050 {
  
  String answer = null;
  
  String image = null;
  InlineResponse20050();

  @override
  String toString() {
    return 'InlineResponse20050[answer=$answer, image=$image, ]';
  }

  InlineResponse20050.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['answer'] == null) {
      answer = null;
    } else {
          answer = json['answer'];
    }
    if (json['image'] == null) {
      image = null;
    } else {
          image = json['image'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (answer != null)
      json['answer'] = answer;
    if (image != null)
      json['image'] = image;
    return json;
  }

  static List<InlineResponse20050> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20050>() : json.map((value) => new InlineResponse20050.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20050> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20050>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20050.fromJson(value));
    }
    return map;
  }
}

