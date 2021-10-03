part of openapi.api;

class InlineResponse20047 {
  
  List<InlineResponse20047RecommendedWines> recommendedWines = [];
  
  int totalFound = null;
  InlineResponse20047();

  @override
  String toString() {
    return 'InlineResponse20047[recommendedWines=$recommendedWines, totalFound=$totalFound, ]';
  }

  InlineResponse20047.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['recommendedWines'] == null) {
      recommendedWines = null;
    } else {
      recommendedWines = InlineResponse20047RecommendedWines.listFromJson(json['recommendedWines']);
    }
    if (json['totalFound'] == null) {
      totalFound = null;
    } else {
          totalFound = json['totalFound'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (recommendedWines != null)
      json['recommendedWines'] = recommendedWines;
    if (totalFound != null)
      json['totalFound'] = totalFound;
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

