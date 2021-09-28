part of openapi.api;

class InlineResponse20049 {
  
  String answer = null;
  
  String image = null;
  InlineResponse20049();

  @override
  String toString() {
    return 'InlineResponse20049[answer=$answer, image=$image, ]';
  }

  InlineResponse20049.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse20049> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20049>() : json.map((value) => new InlineResponse20049.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20049> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20049>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20049.fromJson(value));
    }
    return map;
  }
}

