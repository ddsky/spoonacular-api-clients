part of openapi.api;

class InlineObject6 {
  /* The title of the recipe. */
  String title = null;
  /* The ingredient list of the recipe, one ingredient per line (separate lines with \\n). */
  String ingredientList = null;
  InlineObject6();

  @override
  String toString() {
    return 'InlineObject6[title=$title, ingredientList=$ingredientList, ]';
  }

  InlineObject6.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['ingredientList'] == null) {
      ingredientList = null;
    } else {
          ingredientList = json['ingredientList'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (title != null)
      json['title'] = title;
    if (ingredientList != null)
      json['ingredientList'] = ingredientList;
    return json;
  }

  static List<InlineObject6> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject6>() : json.map((value) => new InlineObject6.fromJson(value)).toList();
  }

  static Map<String, InlineObject6> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject6>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject6.fromJson(value));
    }
    return map;
  }
}

