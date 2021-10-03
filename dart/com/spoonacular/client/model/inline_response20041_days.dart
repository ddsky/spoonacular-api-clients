part of openapi.api;

class InlineResponse20041Days {
  
  InlineResponse20038NutritionSummary nutritionSummary = null;
  
  InlineResponse20038NutritionSummary nutritionSummaryBreakfast = null;
  
  InlineResponse20038NutritionSummary nutritionSummaryLunch = null;
  
  InlineResponse20038NutritionSummary nutritionSummaryDinner = null;
  
  String day = null;
  
  List<InlineResponse20041Items> items = [];
  InlineResponse20041Days();

  @override
  String toString() {
    return 'InlineResponse20041Days[nutritionSummary=$nutritionSummary, nutritionSummaryBreakfast=$nutritionSummaryBreakfast, nutritionSummaryLunch=$nutritionSummaryLunch, nutritionSummaryDinner=$nutritionSummaryDinner, day=$day, items=$items, ]';
  }

  InlineResponse20041Days.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['nutritionSummary'] == null) {
      nutritionSummary = null;
    } else {
      nutritionSummary = new InlineResponse20038NutritionSummary.fromJson(json['nutritionSummary']);
    }
    if (json['nutritionSummaryBreakfast'] == null) {
      nutritionSummaryBreakfast = null;
    } else {
      nutritionSummaryBreakfast = new InlineResponse20038NutritionSummary.fromJson(json['nutritionSummaryBreakfast']);
    }
    if (json['nutritionSummaryLunch'] == null) {
      nutritionSummaryLunch = null;
    } else {
      nutritionSummaryLunch = new InlineResponse20038NutritionSummary.fromJson(json['nutritionSummaryLunch']);
    }
    if (json['nutritionSummaryDinner'] == null) {
      nutritionSummaryDinner = null;
    } else {
      nutritionSummaryDinner = new InlineResponse20038NutritionSummary.fromJson(json['nutritionSummaryDinner']);
    }
    if (json['day'] == null) {
      day = null;
    } else {
          day = json['day'];
    }
    if (json['items'] == null) {
      items = null;
    } else {
      items = InlineResponse20041Items.listFromJson(json['items']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (nutritionSummary != null)
      json['nutritionSummary'] = nutritionSummary;
    if (nutritionSummaryBreakfast != null)
      json['nutritionSummaryBreakfast'] = nutritionSummaryBreakfast;
    if (nutritionSummaryLunch != null)
      json['nutritionSummaryLunch'] = nutritionSummaryLunch;
    if (nutritionSummaryDinner != null)
      json['nutritionSummaryDinner'] = nutritionSummaryDinner;
    if (day != null)
      json['day'] = day;
    if (items != null)
      json['items'] = items;
    return json;
  }

  static List<InlineResponse20041Days> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20041Days>() : json.map((value) => new InlineResponse20041Days.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20041Days> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20041Days>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20041Days.fromJson(value));
    }
    return map;
  }
}

