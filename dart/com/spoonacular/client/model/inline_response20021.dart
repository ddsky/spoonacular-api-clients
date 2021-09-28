part of openapi.api;

class InlineResponse20021 {
  
  InlineResponse20021Calories calories = null;
  
  InlineResponse20021Calories carbs = null;
  
  InlineResponse20021Calories fat = null;
  
  InlineResponse20021Calories protein = null;
  
  int recipesUsed = null;
  InlineResponse20021();

  @override
  String toString() {
    return 'InlineResponse20021[calories=$calories, carbs=$carbs, fat=$fat, protein=$protein, recipesUsed=$recipesUsed, ]';
  }

  InlineResponse20021.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['calories'] == null) {
      calories = null;
    } else {
      calories = new InlineResponse20021Calories.fromJson(json['calories']);
    }
    if (json['carbs'] == null) {
      carbs = null;
    } else {
      carbs = new InlineResponse20021Calories.fromJson(json['carbs']);
    }
    if (json['fat'] == null) {
      fat = null;
    } else {
      fat = new InlineResponse20021Calories.fromJson(json['fat']);
    }
    if (json['protein'] == null) {
      protein = null;
    } else {
      protein = new InlineResponse20021Calories.fromJson(json['protein']);
    }
    if (json['recipesUsed'] == null) {
      recipesUsed = null;
    } else {
          recipesUsed = json['recipesUsed'];
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
    if (recipesUsed != null)
      json['recipesUsed'] = recipesUsed;
    return json;
  }

  static List<InlineResponse20021> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20021>() : json.map((value) => new InlineResponse20021.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20021> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20021>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20021.fromJson(value));
    }
    return map;
  }
}

