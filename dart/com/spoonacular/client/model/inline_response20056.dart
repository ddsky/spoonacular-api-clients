part of openapi.api;

class InlineResponse20056 {
  
  InlineResponse20056Suggests suggests = null;
  
  List<Object> words = [];
  InlineResponse20056();

  @override
  String toString() {
    return 'InlineResponse20056[suggests=$suggests, words=$words, ]';
  }

  InlineResponse20056.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['suggests'] == null) {
      suggests = null;
    } else {
      suggests = new InlineResponse20056Suggests.fromJson(json['suggests']);
    }
    if (json['words'] == null) {
      words = null;
    } else {
      words = Object.listFromJson(json['words']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (suggests != null)
      json['suggests'] = suggests;
    if (words != null)
      json['words'] = words;
    return json;
  }

  static List<InlineResponse20056> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20056>() : json.map((value) => new InlineResponse20056.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20056> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20056>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20056.fromJson(value));
    }
    return map;
  }
}

