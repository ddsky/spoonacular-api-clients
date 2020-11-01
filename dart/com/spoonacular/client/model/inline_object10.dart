part of openapi.api;

class InlineObject10 {
  /* The username. */
  String username = null;
  /* The date in the format yyyy-mm-dd. */
  String date = null;
  /* The private hash for the username. */
  String hash = null;
  InlineObject10();

  @override
  String toString() {
    return 'InlineObject10[username=$username, date=$date, hash=$hash, ]';
  }

  InlineObject10.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['username'] == null) {
      username = null;
    } else {
          username = json['username'];
    }
    if (json['date'] == null) {
      date = null;
    } else {
          date = json['date'];
    }
    if (json['hash'] == null) {
      hash = null;
    } else {
          hash = json['hash'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (username != null)
      json['username'] = username;
    if (date != null)
      json['date'] = date;
    if (hash != null)
      json['hash'] = hash;
    return json;
  }

  static List<InlineObject10> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject10>() : json.map((value) => new InlineObject10.fromJson(value)).toList();
  }

  static Map<String, InlineObject10> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject10>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject10.fromJson(value));
    }
    return map;
  }
}

