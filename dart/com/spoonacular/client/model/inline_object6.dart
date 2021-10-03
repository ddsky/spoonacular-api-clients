part of openapi.api;

class InlineObject6 {
  /* The username. */
  String username = null;
  /* The private hash for the username. */
  String hash = null;
  InlineObject6();

  @override
  String toString() {
    return 'InlineObject6[username=$username, hash=$hash, ]';
  }

  InlineObject6.fromJson(Map<String, dynamic> json) {
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

