part of openapi.api;

class InlineResponse20042Aisles {
  
  String aisle = null;
  
  List<InlineResponse20042Items> items = [];
  InlineResponse20042Aisles();

  @override
  String toString() {
    return 'InlineResponse20042Aisles[aisle=$aisle, items=$items, ]';
  }

  InlineResponse20042Aisles.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['aisle'] == null) {
      aisle = null;
    } else {
          aisle = json['aisle'];
    }
    if (json['items'] == null) {
      items = null;
    } else {
      items = InlineResponse20042Items.listFromJson(json['items']);
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

  static List<InlineResponse20042Aisles> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20042Aisles>() : json.map((value) => new InlineResponse20042Aisles.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20042Aisles> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20042Aisles>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20042Aisles.fromJson(value));
    }
    return map;
  }
}

