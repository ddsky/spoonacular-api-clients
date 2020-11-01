part of openapi.api;

class InlineObject3 {
  /* The recipe's instructions. */
  String instructions = null;
  /* How to visualize the equipment, either \"grid\" or \"list\". */
  String view = null;
  /* Whether the default CSS should be added to the response. */
  bool defaultCss = null;
  /* Whether to show a backlink to spoonacular. If set false, this call counts against your quota. */
  bool showBacklink = null;
  InlineObject3();

  @override
  String toString() {
    return 'InlineObject3[instructions=$instructions, view=$view, defaultCss=$defaultCss, showBacklink=$showBacklink, ]';
  }

  InlineObject3.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['instructions'] == null) {
      instructions = null;
    } else {
          instructions = json['instructions'];
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
    if (instructions != null)
      json['instructions'] = instructions;
    if (view != null)
      json['view'] = view;
    if (defaultCss != null)
      json['defaultCss'] = defaultCss;
    if (showBacklink != null)
      json['showBacklink'] = showBacklink;
    return json;
  }

  static List<InlineObject3> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject3>() : json.map((value) => new InlineObject3.fromJson(value)).toList();
  }

  static Map<String, InlineObject3> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject3>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject3.fromJson(value));
    }
    return map;
  }
}

