part of openapi.api;

class InlineResponse2002 {
  
  num calories = null;
  
  String carbs = null;
  
  String fat = null;
  
  int id = null;
  
  String image = null;
  
  String imageType = null;
  
  String protein = null;
  
  String title = null;
  InlineResponse2002();

  @override
  String toString() {
    return 'InlineResponse2002[calories=$calories, carbs=$carbs, fat=$fat, id=$id, image=$image, imageType=$imageType, protein=$protein, title=$title, ]';
  }

  InlineResponse2002.fromJson(Map<String, dynamic> json) {
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
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['image'] == null) {
      image = null;
    } else {
          image = json['image'];
    }
    if (json['imageType'] == null) {
      imageType = null;
    } else {
          imageType = json['imageType'];
    }
    if (json['protein'] == null) {
      protein = null;
    } else {
          protein = json['protein'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
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
    if (id != null)
      json['id'] = id;
    if (image != null)
      json['image'] = image;
    if (imageType != null)
      json['imageType'] = imageType;
    if (protein != null)
      json['protein'] = protein;
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<InlineResponse2002> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2002>() : json.map((value) => new InlineResponse2002.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2002> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2002>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2002.fromJson(value));
    }
    return map;
  }
}

