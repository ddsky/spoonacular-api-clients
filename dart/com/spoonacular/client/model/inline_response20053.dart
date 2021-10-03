part of openapi.api;

class InlineResponse20053 {
  
  String query = null;
  
  int totalResults = null;
  
  int limit = null;
  
  int offset = null;
  
  List<InlineResponse20053SearchResults> searchResults = [];
  InlineResponse20053();

  @override
  String toString() {
    return 'InlineResponse20053[query=$query, totalResults=$totalResults, limit=$limit, offset=$offset, searchResults=$searchResults, ]';
  }

  InlineResponse20053.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['query'] == null) {
      query = null;
    } else {
          query = json['query'];
    }
    if (json['totalResults'] == null) {
      totalResults = null;
    } else {
          totalResults = json['totalResults'];
    }
    if (json['limit'] == null) {
      limit = null;
    } else {
          limit = json['limit'];
    }
    if (json['offset'] == null) {
      offset = null;
    } else {
          offset = json['offset'];
    }
    if (json['searchResults'] == null) {
      searchResults = null;
    } else {
      searchResults = InlineResponse20053SearchResults.listFromJson(json['searchResults']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (query != null)
      json['query'] = query;
    if (totalResults != null)
      json['totalResults'] = totalResults;
    if (limit != null)
      json['limit'] = limit;
    if (offset != null)
      json['offset'] = offset;
    if (searchResults != null)
      json['searchResults'] = searchResults;
    return json;
  }

  static List<InlineResponse20053> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20053>() : json.map((value) => new InlineResponse20053.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20053> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20053>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20053.fromJson(value));
    }
    return map;
  }
}

