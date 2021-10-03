part of openapi.api;

class InlineResponse20053SearchResults {
  
  String name = null;
  
  int totalResults = null;
  
  List<InlineResponse20053Results> results = [];
  InlineResponse20053SearchResults();

  @override
  String toString() {
    return 'InlineResponse20053SearchResults[name=$name, totalResults=$totalResults, results=$results, ]';
  }

  InlineResponse20053SearchResults.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['totalResults'] == null) {
      totalResults = null;
    } else {
          totalResults = json['totalResults'];
    }
    if (json['results'] == null) {
      results = null;
    } else {
      results = InlineResponse20053Results.listFromJson(json['results']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (totalResults != null)
      json['totalResults'] = totalResults;
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<InlineResponse20053SearchResults> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20053SearchResults>() : json.map((value) => new InlineResponse20053SearchResults.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20053SearchResults> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20053SearchResults>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20053SearchResults.fromJson(value));
    }
    return map;
  }
}

