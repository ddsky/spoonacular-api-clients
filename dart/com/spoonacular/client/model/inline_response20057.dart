part of openapi.api;

class InlineResponse20057 {
  
  InlineResponse20057Suggests suggests = null;
  
  List<Object> words = [];
  InlineResponse20057();

  @override
  String toString() {
    return 'InlineResponse20057[suggests=$suggests, words=$words, ]';
  }

  InlineResponse20057.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['suggests'] == null) {
      suggests = null;
    } else {
      suggests = new InlineResponse20057Suggests.fromJson(json['suggests']);
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

  static List<InlineResponse20057> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20057>() : json.map((value) => new InlineResponse20057.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20057> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20057>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20057.fromJson(value));
    }
    return map;
  }
}

