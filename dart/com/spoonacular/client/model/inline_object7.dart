part of openapi.api;

class InlineObject7 {
  /* The username. */
  String username = null;
  /* The private hash for the username. */
  String hash = null;
  InlineObject7();

  @override
  String toString() {
    return 'InlineObject7[username=$username, hash=$hash, ]';
  }

  InlineObject7.fromJson(Map<String, dynamic> json) {
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

  static List<InlineObject7> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject7>() : json.map((value) => new InlineObject7.fromJson(value)).toList();
  }

  static Map<String, InlineObject7> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject7>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject7.fromJson(value));
    }
    return map;
  }
}

