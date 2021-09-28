part of openapi.api;

class InlineResponse20043 {
  
  List<String> pairings = [];
  
  String text = null;
  InlineResponse20043();

  @override
  String toString() {
    return 'InlineResponse20043[pairings=$pairings, text=$text, ]';
  }

  InlineResponse20043.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['pairings'] == null) {
      pairings = null;
    } else {
      pairings = (json['pairings'] as List).cast<String>();
    }
    if (json['text'] == null) {
      text = null;
    } else {
          text = json['text'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pairings != null)
      json['pairings'] = pairings;
    if (text != null)
      json['text'] = text;
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

