part of openapi.api;

class InlineObject9 {
  /* The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). */
  String locale = null;
  InlineObject9();

  @override
  String toString() {
    return 'InlineObject9[locale=$locale, ]';
  }

  InlineObject9.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['locale'] == null) {
      locale = null;
    } else {
          locale = json['locale'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (locale != null)
      json['locale'] = locale;
    return json;
  }

  static List<InlineObject9> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject9>() : json.map((value) => new InlineObject9.fromJson(value)).toList();
  }

  static Map<String, InlineObject9> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject9>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject9.fromJson(value));
    }
    return map;
  }
}

