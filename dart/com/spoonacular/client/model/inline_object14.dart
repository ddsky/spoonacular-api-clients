part of openapi.api;

class InlineObject14 {
  /* The username. */
  String username = null;
  /* The private hash for the username. */
  String hash = null;
  InlineObject14();

  @override
  String toString() {
    return 'InlineObject14[username=$username, hash=$hash, ]';
  }

  InlineObject14.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['username'] == null) {
      username = null;
    } else {
          username = json['username'];
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
    if (hash != null)
      json['hash'] = hash;
    return json;
  }

  static List<InlineObject14> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject14>() : json.map((value) => new InlineObject14.fromJson(value)).toList();
  }

  static Map<String, InlineObject14> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject14>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject14.fromJson(value));
    }
    return map;
  }
}

