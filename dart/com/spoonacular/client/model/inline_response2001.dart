part of openapi.api;

class InlineResponse2001 {
  
  int id = null;
  
  String image = null;
  
  String imageType = null;
  
  int likes = null;
  
  int missedIngredientCount = null;
  
  List<RecipesFindByIngredientsMissedIngredients> missedIngredients = [];
  
  String title = null;
  
  List<Object> unusedIngredients = [];
  
  num usedIngredientCount = null;
  
  List<RecipesFindByIngredientsMissedIngredients> usedIngredients = [];
  
  String  = null;
  InlineResponse2001();

  @override
  String toString() {
    return 'InlineResponse2001[id=$id, image=$image, imageType=$imageType, likes=$likes, missedIngredientCount=$missedIngredientCount, missedIngredients=$missedIngredients, title=$title, unusedIngredients=$unusedIngredients, usedIngredientCount=$usedIngredientCount, usedIngredients=$usedIngredients, =$, ]';
  }

  InlineResponse2001.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['likes'] == null) {
      likes = null;
    } else {
          likes = json['likes'];
    }
    if (json['missedIngredientCount'] == null) {
      missedIngredientCount = null;
    } else {
          missedIngredientCount = json['missedIngredientCount'];
    }
    if (json['missedIngredients'] == null) {
      missedIngredients = null;
    } else {
      missedIngredients = RecipesFindByIngredientsMissedIngredients.listFromJson(json['missedIngredients']);
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['unusedIngredients'] == null) {
      unusedIngredients = null;
    } else {
      unusedIngredients = Object.listFromJson(json['unusedIngredients']);
    }
    if (json['usedIngredientCount'] == null) {
      usedIngredientCount = null;
    } else {
          usedIngredientCount = json['usedIngredientCount'];
    }
    if (json['usedIngredients'] == null) {
      usedIngredients = null;
    } else {
      usedIngredients = RecipesFindByIngredientsMissedIngredients.listFromJson(json['usedIngredients']);
    }
    if (json[''] == null) {
       = null;
    } else {
           = json[''];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (image != null)
      json['image'] = image;
    if (imageType != null)
      json['imageType'] = imageType;
    if (likes != null)
      json['likes'] = likes;
    if (missedIngredientCount != null)
      json['missedIngredientCount'] = missedIngredientCount;
    if (missedIngredients != null)
      json['missedIngredients'] = missedIngredients;
    if (title != null)
      json['title'] = title;
    if (unusedIngredients != null)
      json['unusedIngredients'] = unusedIngredients;
    if (usedIngredientCount != null)
      json['usedIngredientCount'] = usedIngredientCount;
    if (usedIngredients != null)
      json['usedIngredients'] = usedIngredients;
    if ( != null)
      json[''] = ;
    return json;
  }

  static List<InlineResponse2001> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2001>() : json.map((value) => new InlineResponse2001.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2001> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2001>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2001.fromJson(value));
    }
    return map;
  }
}

