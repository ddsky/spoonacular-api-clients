part of openapi.api;

class InlineObject5 {
  /* The instructions to be analyzed. */
  String instructions = null;
  InlineObject5();

  @override
  String toString() {
    return 'InlineObject5[instructions=$instructions, ]';
  }

  InlineObject5.fromJson(Map<String, dynamic> json) {
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

  static List<InlineObject5> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject5>() : json.map((value) => new InlineObject5.fromJson(value)).toList();
  }

  static Map<String, InlineObject5> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject5>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject5.fromJson(value));
    }
    return map;
  }
}

