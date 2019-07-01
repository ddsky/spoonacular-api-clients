part of openapi.api;

class InlineObject {
  /* The ingredient list of the recipe, one ingredient per line. */
  String ingredientList = null;
  /* The number of servings. */
  num servings = null;
  /* Whether the default CSS should be added to the response. */
  bool defaultCss = null;
  /* Whether to show a backlink to spoonacular. If set false, this call counts against your quota. */
  bool showBacklink = null;
  InlineObject();

  @override
  String toString() {
    return 'InlineObject[ingredientList=$ingredientList, servings=$servings, defaultCss=$defaultCss, showBacklink=$showBacklink, ]';
  }

  InlineObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['ingredientList'] == null) {
      ingredientList = null;
    } else {
          ingredientList = json['ingredientList'];
    }
    if (json['servings'] == null) {
      servings = null;
    } else {
          servings = json['servings'];
    }
    if (json['defaultCss'] == null) {
      defaultCss = null;
    } else {
          defaultCss = json['defaultCss'];
    }
    if (json['showBacklink'] == null) {
      showBacklink = null;
    } else {
          showBacklink = json['showBacklink'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ingredientList != null)
      json['ingredientList'] = ingredientList;
    if (servings != null)
      json['servings'] = servings;
    if (defaultCss != null)
      json['defaultCss'] = defaultCss;
    if (showBacklink != null)
      json['showBacklink'] = showBacklink;
    return json;
  }

  static List<InlineObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject>() : json.map((value) => new InlineObject.fromJson(value)).toList();
  }

  static Map<String, InlineObject> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject.fromJson(value));
    }
    return map;
  }
}

