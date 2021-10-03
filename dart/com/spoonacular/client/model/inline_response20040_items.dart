part of openapi.api;

class InlineResponse20040Items {
  
  int day = null;
  
  int slot = null;
  
  int position = null;
  
  String type = null;
  
  InlineResponse20040Value value = null;
  InlineResponse20040Items();

  @override
  String toString() {
    return 'InlineResponse20040Items[day=$day, slot=$slot, position=$position, type=$type, value=$value, ]';
  }

  InlineResponse20040Items.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['day'] == null) {
      day = null;
    } else {
          day = json['day'];
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
      value = new InlineResponse20040Value.fromJson(json['value']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (day != null)
      json['day'] = day;
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

  static List<InlineResponse20040Items> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20040Items>() : json.map((value) => new InlineResponse20040Items.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20040Items> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20040Items>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20040Items.fromJson(value));
    }
    return map;
  }
}

