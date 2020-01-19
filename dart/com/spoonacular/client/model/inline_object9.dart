part of openapi.api;

class InlineObject9 {
  /* The text in which food items, such as dish names and ingredients, should be detected in. */
  String text = null;
  InlineObject9();

  @override
  String toString() {
    return 'InlineObject9[text=$text, ]';
  }

  InlineObject9.fromJson(Map<String, dynamic> json) {
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

  static List<InlineObject9> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject9>() : json.map((value) => new InlineObject9.fromJson(value)).toList();
  }

  static Map<String, InlineObject9> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject9>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject9.fromJson(value));
    }
    return map;
  }
}

