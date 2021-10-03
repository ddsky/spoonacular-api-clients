part of openapi.api;

class InlineResponse20049Nutrition {
  
  int recipesUsed = null;
  
  InlineResponse20049NutritionCalories calories = null;
  
  InlineResponse20049NutritionCalories fat = null;
  
  InlineResponse20049NutritionCalories protein = null;
  
  InlineResponse20049NutritionCalories carbs = null;
  InlineResponse20049Nutrition();

  @override
  String toString() {
    return 'InlineResponse20049Nutrition[recipesUsed=$recipesUsed, calories=$calories, fat=$fat, protein=$protein, carbs=$carbs, ]';
  }

  InlineResponse20049Nutrition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['recipesUsed'] == null) {
      recipesUsed = null;
    } else {
          recipesUsed = json['recipesUsed'];
    }
    if (json['calories'] == null) {
      calories = null;
    } else {
      calories = new InlineResponse20049NutritionCalories.fromJson(json['calories']);
    }
    if (json['fat'] == null) {
      fat = null;
    } else {
      fat = new InlineResponse20049NutritionCalories.fromJson(json['fat']);
    }
    if (json['protein'] == null) {
      protein = null;
    } else {
      protein = new InlineResponse20049NutritionCalories.fromJson(json['protein']);
    }
    if (json['carbs'] == null) {
      carbs = null;
    } else {
      carbs = new InlineResponse20049NutritionCalories.fromJson(json['carbs']);
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

  static List<InlineResponse20049Nutrition> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20049Nutrition>() : json.map((value) => new InlineResponse20049Nutrition.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20049Nutrition> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20049Nutrition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20049Nutrition.fromJson(value));
    }
    return map;
  }
}

