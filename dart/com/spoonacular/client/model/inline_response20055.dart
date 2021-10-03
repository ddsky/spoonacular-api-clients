part of openapi.api;

class InlineResponse20055 {
  
  String text = null;
  InlineResponse20055();

  @override
  String toString() {
    return 'InlineResponse20055[text=$text, ]';
  }

  InlineResponse20055.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['text'] == null) {
      text = null;
    } else {
          text = json['text'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (text != null)
      json['text'] = text;
    return json;
  }

  static List<InlineResponse20055> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20055>() : json.map((value) => new InlineResponse20055.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20055> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20055>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20055.fromJson(value));
    }
    return map;
  }
}

