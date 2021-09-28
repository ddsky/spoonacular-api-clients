part of openapi.api;

class InlineResponse20055 {
  
  String answerText = null;
  
  List<Object> media = [];
  InlineResponse20055();

  @override
  String toString() {
    return 'InlineResponse20055[answerText=$answerText, media=$media, ]';
  }

  InlineResponse20055.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['answerText'] == null) {
      answerText = null;
    } else {
          answerText = json['answerText'];
    }
    if (json['media'] == null) {
      media = null;
    } else {
      media = Object.listFromJson(json['media']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (answerText != null)
      json['answerText'] = answerText;
    if (media != null)
      json['media'] = media;
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

