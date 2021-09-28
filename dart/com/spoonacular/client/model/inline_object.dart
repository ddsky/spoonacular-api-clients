part of openapi.api;

class InlineObject {
  
  String title = null;
  
  String upc = null;
  
  String pluCode = null;
  InlineObject();

  @override
  String toString() {
    return 'InlineObject[title=$title, upc=$upc, pluCode=$pluCode, ]';
  }

  InlineObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['upc'] == null) {
      upc = null;
    } else {
          upc = json['upc'];
    }
    if (json['plu_code'] == null) {
      pluCode = null;
    } else {
          pluCode = json['plu_code'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (title != null)
      json['title'] = title;
    if (upc != null)
      json['upc'] = upc;
    if (pluCode != null)
      json['plu_code'] = pluCode;
    return json;
  }

  static List<InlineObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject>() : json.map((value) => new InlineObject.fromJson(value)).toList();
  }

  static Map<String, InlineObject> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject.fromJson(value));
    }
    return map;
  }
}

