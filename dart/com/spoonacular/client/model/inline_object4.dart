part of openapi.api;

class InlineObject4 {
  /* The instructions text. */
  String instructions = null;
  InlineObject4();

  @override
  String toString() {
    return 'InlineObject4[instructions=$instructions, ]';
  }

  InlineObject4.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['instructions'] == null) {
      instructions = null;
    } else {
          instructions = json['instructions'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (instructions != null)
      json['instructions'] = instructions;
    return json;
  }

  static List<InlineObject4> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject4>() : json.map((value) => new InlineObject4.fromJson(value)).toList();
  }

  static Map<String, InlineObject4> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject4>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject4.fromJson(value));
    }
    return map;
  }
}

