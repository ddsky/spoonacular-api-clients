part of openapi.api;

class InlineResponse20027 {
  
  List<InlineResponse2007> products = [];
  
  int totalProducts = null;
  
  String type = null;
  
  int offset = null;
  
  int number = null;
  InlineResponse20027();

  @override
  String toString() {
    return 'InlineResponse20027[products=$products, totalProducts=$totalProducts, type=$type, offset=$offset, number=$number, ]';
  }

  InlineResponse20027.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['products'] == null) {
      products = null;
    } else {
      products = InlineResponse2007.listFromJson(json['products']);
    }
    if (json['totalProducts'] == null) {
      totalProducts = null;
    } else {
          totalProducts = json['totalProducts'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (products != null)
      json['products'] = products;
    if (totalProducts != null)
      json['totalProducts'] = totalProducts;
    if (type != null)
      json['type'] = type;
    if (offset != null)
      json['offset'] = offset;
    if (number != null)
      json['number'] = number;
    return json;
  }

  static List<InlineResponse20027> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20027>() : json.map((value) => new InlineResponse20027.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20027> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20027>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20027.fromJson(value));
    }
    return map;
  }
}

