part of openapi.api;

class InlineResponse20026 {
  
  String ingredient = null;
  
  List<String> substitutes = [];
  
  String message = null;
  InlineResponse20026();

  @override
  String toString() {
    return 'InlineResponse20026[ingredient=$ingredient, substitutes=$substitutes, message=$message, ]';
  }

  InlineResponse20026.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['ingredient'] == null) {
      ingredient = null;
    } else {
          ingredient = json['ingredient'];
    }
    if (json['substitutes'] == null) {
      substitutes = null;
    } else {
      substitutes = (json['substitutes'] as List).cast<String>();
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ingredient != null)
      json['ingredient'] = ingredient;
    if (substitutes != null)
      json['substitutes'] = substitutes;
    if (message != null)
      json['message'] = message;
    return json;
  }

  static List<InlineResponse20026> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20026>() : json.map((value) => new InlineResponse20026.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20026> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20026>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20026.fromJson(value));
    }
    return map;
  }
}

