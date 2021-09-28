part of openapi.api;

class InlineResponse20035 {
  
  List<InlineResponse20035MenuItems> menuItems = [];
  
  int totalMenuItems = null;
  
  String type = null;
  
  int offset = null;
  
  int number = null;
  InlineResponse20035();

  @override
  String toString() {
    return 'InlineResponse20035[menuItems=$menuItems, totalMenuItems=$totalMenuItems, type=$type, offset=$offset, number=$number, ]';
  }

  InlineResponse20035.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['menuItems'] == null) {
      menuItems = null;
    } else {
      menuItems = InlineResponse20035MenuItems.listFromJson(json['menuItems']);
    }
    if (json['totalMenuItems'] == null) {
      totalMenuItems = null;
    } else {
          totalMenuItems = json['totalMenuItems'];
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
    if (menuItems != null)
      json['menuItems'] = menuItems;
    if (totalMenuItems != null)
      json['totalMenuItems'] = totalMenuItems;
    if (type != null)
      json['type'] = type;
    if (offset != null)
      json['offset'] = offset;
    if (number != null)
      json['number'] = number;
    return json;
  }

  static List<InlineResponse20035> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20035>() : json.map((value) => new InlineResponse20035.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20035> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20035>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20035.fromJson(value));
    }
    return map;
  }
}

