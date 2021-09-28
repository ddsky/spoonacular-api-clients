part of openapi.api;

class InlineResponse20054 {
  
  String text = null;
  InlineResponse20054();

  @override
  String toString() {
    return 'InlineResponse20054[text=$text, ]';
  }

  InlineResponse20054.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse20054> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20054>() : json.map((value) => new InlineResponse20054.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20054> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20054>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20054.fromJson(value));
    }
    return map;
  }
}

