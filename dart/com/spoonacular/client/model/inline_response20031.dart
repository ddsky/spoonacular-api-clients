part of openapi.api;

class InlineResponse20031 {
  
  InlineResponse20031ComparableProducts comparableProducts = null;
  InlineResponse20031();

  @override
  String toString() {
    return 'InlineResponse20031[comparableProducts=$comparableProducts, ]';
  }

  InlineResponse20031.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['comparableProducts'] == null) {
      comparableProducts = null;
    } else {
      comparableProducts = new InlineResponse20031ComparableProducts.fromJson(json['comparableProducts']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (comparableProducts != null)
      json['comparableProducts'] = comparableProducts;
    return json;
  }

  static List<InlineResponse20031> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20031>() : json.map((value) => new InlineResponse20031.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20031> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20031>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20031.fromJson(value));
    }
    return map;
  }
}

