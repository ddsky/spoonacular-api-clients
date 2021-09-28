part of openapi.api;

class InlineResponse20041Aisles {
  
  String aisle = null;
  
  List<InlineResponse20041Items> items = [];
  InlineResponse20041Aisles();

  @override
  String toString() {
    return 'InlineResponse20041Aisles[aisle=$aisle, items=$items, ]';
  }

  InlineResponse20041Aisles.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['aisle'] == null) {
      aisle = null;
    } else {
          aisle = json['aisle'];
    }
    if (json['items'] == null) {
      items = null;
    } else {
      items = InlineResponse20041Items.listFromJson(json['items']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (aisle != null)
      json['aisle'] = aisle;
    if (items != null)
      json['items'] = items;
    return json;
  }

  static List<InlineResponse20041Aisles> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20041Aisles>() : json.map((value) => new InlineResponse20041Aisles.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20041Aisles> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20041Aisles>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20041Aisles.fromJson(value));
    }
    return map;
  }
}

