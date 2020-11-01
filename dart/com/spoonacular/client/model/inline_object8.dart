part of openapi.api;

class InlineObject8 {
  /* The ingredient list of the recipe, one ingredient per line. */
  String ingredientList = null;
  /* The number of servings. */
  num servings = null;
  /* The original system of measurement, either \"metric\" or \"us\". */
  String measure = null;
  /* How to visualize the ingredients, either \"grid\" or \"list\". */
  String view = null;
  /* Whether the default CSS should be added to the response. */
  bool defaultCss = null;
  /* Whether to show a backlink to spoonacular. If set false, this call counts against your quota. */
  bool showBacklink = null;
  InlineObject8();

  @override
  String toString() {
    return 'InlineObject8[ingredientList=$ingredientList, servings=$servings, measure=$measure, view=$view, defaultCss=$defaultCss, showBacklink=$showBacklink, ]';
  }

  InlineObject8.fromJson(Map<String, dynamic> json) {
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
    if (json['measure'] == null) {
      measure = null;
    } else {
          measure = json['measure'];
    }
    if (json['view'] == null) {
      view = null;
    } else {
          view = json['view'];
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
    if (measure != null)
      json['measure'] = measure;
    if (view != null)
      json['view'] = view;
    if (defaultCss != null)
      json['defaultCss'] = defaultCss;
    if (showBacklink != null)
      json['showBacklink'] = showBacklink;
    return json;
  }

  static List<InlineObject8> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject8>() : json.map((value) => new InlineObject8.fromJson(value)).toList();
  }

  static Map<String, InlineObject8> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject8>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject8.fromJson(value));
    }
    return map;
  }
}

