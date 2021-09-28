part of openapi.api;

class InlineResponse20048Nutrition {
  
  int recipesUsed = null;
  
  InlineResponse20048NutritionCalories calories = null;
  
  InlineResponse20048NutritionCalories fat = null;
  
  InlineResponse20048NutritionCalories protein = null;
  
  InlineResponse20048NutritionCalories carbs = null;
  InlineResponse20048Nutrition();

  @override
  String toString() {
    return 'InlineResponse20048Nutrition[recipesUsed=$recipesUsed, calories=$calories, fat=$fat, protein=$protein, carbs=$carbs, ]';
  }

  InlineResponse20048Nutrition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['recipesUsed'] == null) {
      recipesUsed = null;
    } else {
          recipesUsed = json['recipesUsed'];
    }
    if (json['calories'] == null) {
      calories = null;
    } else {
      calories = new InlineResponse20048NutritionCalories.fromJson(json['calories']);
    }
    if (json['fat'] == null) {
      fat = null;
    } else {
      fat = new InlineResponse20048NutritionCalories.fromJson(json['fat']);
    }
    if (json['protein'] == null) {
      protein = null;
    } else {
      protein = new InlineResponse20048NutritionCalories.fromJson(json['protein']);
    }
    if (json['carbs'] == null) {
      carbs = null;
    } else {
      carbs = new InlineResponse20048NutritionCalories.fromJson(json['carbs']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (recipesUsed != null)
      json['recipesUsed'] = recipesUsed;
    if (calories != null)
      json['calories'] = calories;
    if (fat != null)
      json['fat'] = fat;
    if (protein != null)
      json['protein'] = protein;
    if (carbs != null)
      json['carbs'] = carbs;
    return json;
  }

  static List<InlineResponse20048Nutrition> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20048Nutrition>() : json.map((value) => new InlineResponse20048Nutrition.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20048Nutrition> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20048Nutrition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20048Nutrition.fromJson(value));
    }
    return map;
  }
}

