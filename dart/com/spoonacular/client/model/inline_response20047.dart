part of openapi.api;

class InlineResponse20047 {
  
  String category = null;
  
  num probability = null;
  InlineResponse20047();

  @override
  String toString() {
    return 'InlineResponse20047[category=$category, probability=$probability, ]';
  }

  InlineResponse20047.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['category'] == null) {
      category = null;
    } else {
          category = json['category'];
    }
    if (json['probability'] == null) {
      probability = null;
    } else {
          probability = json['probability'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (category != null)
      json['category'] = category;
    if (probability != null)
      json['probability'] = probability;
    return json;
  }

  static List<InlineResponse20047> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20047>() : json.map((value) => new InlineResponse20047.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20047> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20047>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20047.fromJson(value));
    }
    return map;
  }
}

