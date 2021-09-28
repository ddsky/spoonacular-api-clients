part of openapi.api;

class InlineResponse20037Nutrients {
  
  num calories = null;
  
  num carbohydrates = null;
  
  num fat = null;
  
  num protein = null;
  InlineResponse20037Nutrients();

  @override
  String toString() {
    return 'InlineResponse20037Nutrients[calories=$calories, carbohydrates=$carbohydrates, fat=$fat, protein=$protein, ]';
  }

  InlineResponse20037Nutrients.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['calories'] == null) {
      calories = null;
    } else {
          calories = json['calories'];
    }
    if (json['carbohydrates'] == null) {
      carbohydrates = null;
    } else {
          carbohydrates = json['carbohydrates'];
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (calories != null)
      json['calories'] = calories;
    if (carbohydrates != null)
      json['carbohydrates'] = carbohydrates;
    if (fat != null)
      json['fat'] = fat;
    if (protein != null)
      json['protein'] = protein;
    return json;
  }

  static List<InlineResponse20037Nutrients> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20037Nutrients>() : json.map((value) => new InlineResponse20037Nutrients.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20037Nutrients> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20037Nutrients>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20037Nutrients.fromJson(value));
    }
    return map;
  }
}

