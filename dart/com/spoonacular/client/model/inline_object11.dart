part of openapi.api;

class InlineObject11 {
  /* The username. */
  String username = null;
  /* The start date in the format yyyy-mm-dd. */
  String startDate = null;
  /* The end date in the format yyyy-mm-dd. */
  String endDate = null;
  /* The private hash for the username. */
  String hash = null;
  InlineObject11();

  @override
  String toString() {
    return 'InlineObject11[username=$username, startDate=$startDate, endDate=$endDate, hash=$hash, ]';
  }

  InlineObject11.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['username'] == null) {
      username = null;
    } else {
          username = json['username'];
    }
    if (json['start-date'] == null) {
      startDate = null;
    } else {
          startDate = json['start-date'];
    }
    if (json['end-date'] == null) {
      endDate = null;
    } else {
          endDate = json['end-date'];
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
    if (startDate != null)
      json['start-date'] = startDate;
    if (endDate != null)
      json['end-date'] = endDate;
    if (hash != null)
      json['hash'] = hash;
    return json;
  }

  static List<InlineObject11> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject11>() : json.map((value) => new InlineObject11.fromJson(value)).toList();
  }

  static Map<String, InlineObject11> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject11>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject11.fromJson(value));
    }
    return map;
  }
}

