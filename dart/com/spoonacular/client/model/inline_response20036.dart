part of openapi.api;

class InlineResponse20036 {
  
  int id = null;
  
  String title = null;
  
  String restaurantChain = null;
  
  InlineResponse20028Nutrition nutrition = null;
  
  List<String> badges = [];
  
  List<String> breadcrumbs = [];
  
  String generatedText = null;
  
  String imageType = null;
  
  num likes = null;
  
  InlineResponse20028Servings servings = null;
  
  num price = null;
  
  num spoonacularScore = null;
  InlineResponse20036();

  @override
  String toString() {
    return 'InlineResponse20036[id=$id, title=$title, restaurantChain=$restaurantChain, nutrition=$nutrition, badges=$badges, breadcrumbs=$breadcrumbs, generatedText=$generatedText, imageType=$imageType, likes=$likes, servings=$servings, price=$price, spoonacularScore=$spoonacularScore, ]';
  }

  InlineResponse20036.fromJson(Map<String, dynamic> json) {
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
    if (json['restaurantChain'] == null) {
      restaurantChain = null;
    } else {
          restaurantChain = json['restaurantChain'];
    }
    if (json['nutrition'] == null) {
      nutrition = null;
    } else {
      nutrition = new InlineResponse20028Nutrition.fromJson(json['nutrition']);
    }
    if (json['badges'] == null) {
      badges = null;
    } else {
      badges = (json['badges'] as List).cast<String>();
    }
    if (json['breadcrumbs'] == null) {
      breadcrumbs = null;
    } else {
      breadcrumbs = (json['breadcrumbs'] as List).cast<String>();
    }
    if (json['generatedText'] == null) {
      generatedText = null;
    } else {
          generatedText = json['generatedText'];
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
    if (json['servings'] == null) {
      servings = null;
    } else {
      servings = new InlineResponse20028Servings.fromJson(json['servings']);
    }
    if (json['price'] == null) {
      price = null;
    } else {
          price = json['price'];
    }
    if (json['spoonacularScore'] == null) {
      spoonacularScore = null;
    } else {
          spoonacularScore = json['spoonacularScore'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    if (restaurantChain != null)
      json['restaurantChain'] = restaurantChain;
    if (nutrition != null)
      json['nutrition'] = nutrition;
    if (badges != null)
      json['badges'] = badges;
    if (breadcrumbs != null)
      json['breadcrumbs'] = breadcrumbs;
    if (generatedText != null)
      json['generatedText'] = generatedText;
    if (imageType != null)
      json['imageType'] = imageType;
    if (likes != null)
      json['likes'] = likes;
    if (servings != null)
      json['servings'] = servings;
    if (price != null)
      json['price'] = price;
    if (spoonacularScore != null)
      json['spoonacularScore'] = spoonacularScore;
    return json;
  }

  static List<InlineResponse20036> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20036>() : json.map((value) => new InlineResponse20036.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20036> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20036>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20036.fromJson(value));
    }
    return map;
  }
}

