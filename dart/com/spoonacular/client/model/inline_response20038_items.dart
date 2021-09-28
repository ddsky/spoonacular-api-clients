part of openapi.api;

class InlineResponse20038Items {
  
  int id = null;
  
  int slot = null;
  
  int position = null;
  
  String type = null;
  
  InlineResponse20038Value value = null;
  InlineResponse20038Items();

  @override
  String toString() {
    return 'InlineResponse20038Items[id=$id, slot=$slot, position=$position, type=$type, value=$value, ]';
  }

  InlineResponse20038Items.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['slot'] == null) {
      slot = null;
    } else {
          slot = json['slot'];
    }
    if (json['position'] == null) {
      position = null;
    } else {
          position = json['position'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
      value = new InlineResponse20038Value.fromJson(json['value']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (slot != null)
      json['slot'] = slot;
    if (position != null)
      json['position'] = position;
    if (type != null)
      json['type'] = type;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<InlineResponse20038Items> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20038Items>() : json.map((value) => new InlineResponse20038Items.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20038Items> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20038Items>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20038Items.fromJson(value));
    }
    return map;
  }
}

