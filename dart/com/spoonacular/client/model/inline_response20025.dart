part of openapi.api;

class InlineResponse20025 {
  
  List<InlineResponse20025Results> results = [];
  
  int offset = null;
  
  int number = null;
  
  int totalResults = null;
  InlineResponse20025();

  @override
  String toString() {
    return 'InlineResponse20025[results=$results, offset=$offset, number=$number, totalResults=$totalResults, ]';
  }

  InlineResponse20025.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['results'] == null) {
      results = null;
    } else {
      results = InlineResponse20025Results.listFromJson(json['results']);
    }
    if (json['offset'] == null) {
      offset = null;
    } else {
          offset = json['offset'];
    }
    if (json['number'] == null) {
      number = null;
    } else {
          number = json['number'];
    }
    if (json['totalResults'] == null) {
      totalResults = null;
    } else {
          totalResults = json['totalResults'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    if (offset != null)
      json['offset'] = offset;
    if (number != null)
      json['number'] = number;
    if (totalResults != null)
      json['totalResults'] = totalResults;
    return json;
  }

  static List<InlineResponse20025> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20025>() : json.map((value) => new InlineResponse20025.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20025> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20025>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20025.fromJson(value));
    }
    return map;
  }
}

