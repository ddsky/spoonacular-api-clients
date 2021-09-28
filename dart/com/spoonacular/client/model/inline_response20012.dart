part of openapi.api;

class InlineResponse20012 {
  
  String calories = null;
  
  String carbs = null;
  
  String fat = null;
  
  String protein = null;
  
  List<Object> bad = [];
  
  List<Object> good = [];
  InlineResponse20012();

  @override
  String toString() {
    return 'InlineResponse20012[calories=$calories, carbs=$carbs, fat=$fat, protein=$protein, bad=$bad, good=$good, ]';
  }

  InlineResponse20012.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['calories'] == null) {
      calories = null;
    } else {
          calories = json['calories'];
    }
    if (json['carbs'] == null) {
      carbs = null;
    } else {
          carbs = json['carbs'];
    }
    if (json['fat'] == null) {
      fat = null;
    } else {
          fat = json['fat'];
    }
    if (json['protein'] == null) {
      protein = null;
    } else {
          protein = json['protein'];
    }
    if (json['bad'] == null) {
      bad = null;
    } else {
      bad = Object.listFromJson(json['bad']);
    }
    if (json['good'] == null) {
      good = null;
    } else {
      good = Object.listFromJson(json['good']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (calories != null)
      json['calories'] = calories;
    if (carbs != null)
      json['carbs'] = carbs;
    if (fat != null)
      json['fat'] = fat;
    if (protein != null)
      json['protein'] = protein;
    if (bad != null)
      json['bad'] = bad;
    if (good != null)
      json['good'] = good;
    return json;
  }

  static List<InlineResponse20012> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20012>() : json.map((value) => new InlineResponse20012.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20012> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20012>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20012.fromJson(value));
    }
    return map;
  }
}

