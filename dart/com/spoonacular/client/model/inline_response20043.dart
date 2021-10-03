part of openapi.api;

class InlineResponse20043 {
  
  String username = null;
  
  String hash = null;
  InlineResponse20043();

  @override
  String toString() {
    return 'InlineResponse20043[username=$username, hash=$hash, ]';
  }

  InlineResponse20043.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse20043> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20043>() : json.map((value) => new InlineResponse20043.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20043> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20043>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20043.fromJson(value));
    }
    return map;
  }
}

