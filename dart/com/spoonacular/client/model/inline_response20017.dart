part of openapi.api;

class InlineResponse20017 {
  
  String cuisine = null;
  
  List<String> cuisines = [];
  
  num confidence = null;
  InlineResponse20017();

  @override
  String toString() {
    return 'InlineResponse20017[cuisine=$cuisine, cuisines=$cuisines, confidence=$confidence, ]';
  }

  InlineResponse20017.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['cuisine'] == null) {
      cuisine = null;
    } else {
          cuisine = json['cuisine'];
    }
    if (json['cuisines'] == null) {
      cuisines = null;
    } else {
      cuisines = (json['cuisines'] as List).cast<String>();
    }
    if (json['confidence'] == null) {
      confidence = null;
    } else {
          confidence = json['confidence'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (cuisine != null)
      json['cuisine'] = cuisine;
    if (cuisines != null)
      json['cuisines'] = cuisines;
    if (confidence != null)
      json['confidence'] = confidence;
    return json;
  }

  static List<InlineResponse20017> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20017>() : json.map((value) => new InlineResponse20017.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20017> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20017>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20017.fromJson(value));
    }
    return map;
  }
}

