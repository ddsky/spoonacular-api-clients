part of openapi.api;

class InlineObject4 {
  /* The username. */
  String username = null;
  /* The private hash for the username. */
  String hash = null;
  InlineObject4();

  @override
  String toString() {
    return 'InlineObject4[username=$username, hash=$hash, ]';
  }

  InlineObject4.fromJson(Map<String, dynamic> json) {
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

  static List<InlineObject4> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject4>() : json.map((value) => new InlineObject4.fromJson(value)).toList();
  }

  static Map<String, InlineObject4> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject4>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject4.fromJson(value));
    }
    return map;
  }
}

