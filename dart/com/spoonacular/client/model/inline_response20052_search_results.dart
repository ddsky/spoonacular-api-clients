part of openapi.api;

class InlineResponse20052SearchResults {
  
  String name = null;
  
  int totalResults = null;
  
  List<InlineResponse20052Results> results = [];
  InlineResponse20052SearchResults();

  @override
  String toString() {
    return 'InlineResponse20052SearchResults[name=$name, totalResults=$totalResults, results=$results, ]';
  }

  InlineResponse20052SearchResults.fromJson(Map<String, dynamic> json) {
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
      results = InlineResponse20052Results.listFromJson(json['results']);
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

  static List<InlineResponse20052SearchResults> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20052SearchResults>() : json.map((value) => new InlineResponse20052SearchResults.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20052SearchResults> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20052SearchResults>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20052SearchResults.fromJson(value));
    }
    return map;
  }
}

