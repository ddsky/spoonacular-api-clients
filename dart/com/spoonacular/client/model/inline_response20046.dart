part of openapi.api;

class InlineResponse20046 {
  
  List<InlineResponse20046RecommendedWines> recommendedWines = [];
  
  int totalFound = null;
  InlineResponse20046();

  @override
  String toString() {
    return 'InlineResponse20046[recommendedWines=$recommendedWines, totalFound=$totalFound, ]';
  }

  InlineResponse20046.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['recommendedWines'] == null) {
      recommendedWines = null;
    } else {
      recommendedWines = InlineResponse20046RecommendedWines.listFromJson(json['recommendedWines']);
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

  static List<InlineResponse20046> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20046>() : json.map((value) => new InlineResponse20046.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20046> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20046>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20046.fromJson(value));
    }
    return map;
  }
}

