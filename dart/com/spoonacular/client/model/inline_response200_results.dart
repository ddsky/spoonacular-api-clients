part of openapi.api;

class InlineResponse200Results {
  
  int id = null;
  
  String title = null;
  
  num calories = null;
  
  String carbs = null;
  
  String fat = null;
  
  String image = null;
  
  String imageType = null;
  
  String protein = null;
  InlineResponse200Results();

  @override
  String toString() {
    return 'InlineResponse200Results[id=$id, title=$title, calories=$calories, carbs=$carbs, fat=$fat, image=$image, imageType=$imageType, protein=$protein, ]';
  }

  InlineResponse200Results.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    if (calories != null)
      json['calories'] = calories;
    if (carbs != null)
      json['carbs'] = carbs;
    if (fat != null)
      json['fat'] = fat;
    if (image != null)
      json['image'] = image;
    if (imageType != null)
      json['imageType'] = imageType;
    if (protein != null)
      json['protein'] = protein;
    return json;
  }

  static List<InlineResponse200Results> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse200Results>() : json.map((value) => new InlineResponse200Results.fromJson(value)).toList();
  }

  static Map<String, InlineResponse200Results> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse200Results>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse200Results.fromJson(value));
    }
    return map;
  }
}

