part of openapi.api;

class InlineResponse20028Servings {
  
  num number = null;
  
  num size = null;
  
  String unit = null;
  InlineResponse20028Servings();

  @override
  String toString() {
    return 'InlineResponse20028Servings[number=$number, size=$size, unit=$unit, ]';
  }

  InlineResponse20028Servings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['number'] == null) {
      number = null;
    } else {
          number = json['number'];
    }
    if (json['size'] == null) {
      size = null;
    } else {
          size = json['size'];
    }
    if (json['unit'] == null) {
      unit = null;
    } else {
          unit = json['unit'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (number != null)
      json['number'] = number;
    if (size != null)
      json['size'] = size;
    if (unit != null)
      json['unit'] = unit;
    return json;
  }

  static List<InlineResponse20028Servings> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20028Servings>() : json.map((value) => new InlineResponse20028Servings.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20028Servings> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20028Servings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20028Servings.fromJson(value));
    }
    return map;
  }
}

