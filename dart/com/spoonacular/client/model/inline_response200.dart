part of openapi.api;

class InlineResponse200 {
  
  int offset = null;
  
  int number = null;
  
  List<InlineResponse200Results> results = [];
  
  int totalResults = null;
  InlineResponse200();

  @override
  String toString() {
    return 'InlineResponse200[offset=$offset, number=$number, results=$results, totalResults=$totalResults, ]';
  }

  InlineResponse200.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['results'] == null) {
      results = null;
    } else {
      results = InlineResponse200Results.listFromJson(json['results']);
    }
    if (json['totalResults'] == null) {
      totalResults = null;
    } else {
          totalResults = json['totalResults'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (offset != null)
      json['offset'] = offset;
    if (number != null)
      json['number'] = number;
    if (results != null)
      json['results'] = results;
    if (totalResults != null)
      json['totalResults'] = totalResults;
    return json;
  }

  static List<InlineResponse200> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse200>() : json.map((value) => new InlineResponse200.fromJson(value)).toList();
  }

  static Map<String, InlineResponse200> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse200>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse200.fromJson(value));
    }
    return map;
  }
}

