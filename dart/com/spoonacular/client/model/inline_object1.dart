part of openapi.api;

class InlineObject1 {
  /* The ingredient list of the recipe, one ingredient per line. */
  String ingredientList = null;
  /* The number of servings. */
  num servings = null;
  /* Whether the default CSS should be added to the response. */
  bool defaultCss = null;
  /* Whether to show a backlink to spoonacular. If set false, this call counts against your quota. */
  bool showBacklink = null;
  InlineObject1();

  @override
  String toString() {
    return 'InlineObject1[ingredientList=$ingredientList, servings=$servings, defaultCss=$defaultCss, showBacklink=$showBacklink, ]';
  }

  InlineObject1.fromJson(Map<String, dynamic> json) {
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

  static List<InlineObject1> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject1>() : json.map((value) => new InlineObject1.fromJson(value)).toList();
  }

  static Map<String, InlineObject1> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject1.fromJson(value));
    }
    return map;
  }
}

