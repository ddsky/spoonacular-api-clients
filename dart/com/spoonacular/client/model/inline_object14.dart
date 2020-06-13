part of openapi.api;

class InlineObject14 {
  /* The text in which food items, such as dish names and ingredients, should be detected in. */
  String text = null;
  InlineObject14();

  @override
  String toString() {
    return 'InlineObject14[text=$text, ]';
  }

  InlineObject14.fromJson(Map<String, dynamic> json) {
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

  static List<InlineObject14> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject14>() : json.map((value) => new InlineObject14.fromJson(value)).toList();
  }

  static Map<String, InlineObject14> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject14>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject14.fromJson(value));
    }
    return map;
  }
}

