part of openapi.api;

class InlineResponse20037 {
  
  List<InlineResponse2005> meals = [];
  
  InlineResponse20037Nutrients nutrients = null;
  InlineResponse20037();

  @override
  String toString() {
    return 'InlineResponse20037[meals=$meals, nutrients=$nutrients, ]';
  }

  InlineResponse20037.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['meals'] == null) {
      meals = null;
    } else {
      meals = InlineResponse2005.listFromJson(json['meals']);
    }
    if (json['nutrients'] == null) {
      nutrients = null;
    } else {
      nutrients = new InlineResponse20037Nutrients.fromJson(json['nutrients']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (meals != null)
      json['meals'] = meals;
    if (nutrients != null)
      json['nutrients'] = nutrients;
    return json;
  }

  static List<InlineResponse20037> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20037>() : json.map((value) => new InlineResponse20037.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20037> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20037>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20037.fromJson(value));
    }
    return map;
  }
}

