part of openapi.api;

class InlineResponse20048 {
  
  String category = null;
  
  num probability = null;
  InlineResponse20048();

  @override
  String toString() {
    return 'InlineResponse20048[category=$category, probability=$probability, ]';
  }

  InlineResponse20048.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse20048> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20048>() : json.map((value) => new InlineResponse20048.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20048> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20048>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20048.fromJson(value));
    }
    return map;
  }
}

