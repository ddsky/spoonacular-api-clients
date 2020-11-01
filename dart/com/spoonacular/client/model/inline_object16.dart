part of openapi.api;

class InlineObject16 {
  /* The text in which food items, such as dish names and ingredients, should be detected in. */
  String text = null;
  InlineObject16();

  @override
  String toString() {
    return 'InlineObject16[text=$text, ]';
  }

  InlineObject16.fromJson(Map<String, dynamic> json) {
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

  static List<InlineObject16> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject16>() : json.map((value) => new InlineObject16.fromJson(value)).toList();
  }

  static Map<String, InlineObject16> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject16>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject16.fromJson(value));
    }
    return map;
  }
}

