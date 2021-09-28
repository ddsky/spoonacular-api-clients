part of openapi.api;

class InlineResponse20028 {
  
  int id = null;
  
  String title = null;
  
  List<String> badges = [];
  
  List<String> importantBadges = [];
  
  List<String> breadcrumbs = [];
  
  String generatedText = null;
  
  String imageType = null;
  
  int ingredientCount = null;
  
  String ingredientList = null;
  
  List<InlineResponse20028Ingredients> ingredients = [];
  
  num likes = null;
  
  InlineResponse20028Nutrition nutrition = null;
  
  num price = null;
  
  InlineResponse20028Servings servings = null;
  
  num spoonacularScore = null;
  InlineResponse20028();

  @override
  String toString() {
    return 'InlineResponse20028[id=$id, title=$title, badges=$badges, importantBadges=$importantBadges, breadcrumbs=$breadcrumbs, generatedText=$generatedText, imageType=$imageType, ingredientCount=$ingredientCount, ingredientList=$ingredientList, ingredients=$ingredients, likes=$likes, nutrition=$nutrition, price=$price, servings=$servings, spoonacularScore=$spoonacularScore, ]';
  }

  InlineResponse20028.fromJson(Map<String, dynamic> json) {
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
    if (json['badges'] == null) {
      badges = null;
    } else {
      badges = (json['badges'] as List).cast<String>();
    }
    if (json['importantBadges'] == null) {
      importantBadges = null;
    } else {
      importantBadges = (json['importantBadges'] as List).cast<String>();
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
    if (json['ingredientCount'] == null) {
      ingredientCount = null;
    } else {
          ingredientCount = json['ingredientCount'];
    }
    if (json['ingredientList'] == null) {
      ingredientList = null;
    } else {
          ingredientList = json['ingredientList'];
    }
    if (json['ingredients'] == null) {
      ingredients = null;
    } else {
      ingredients = InlineResponse20028Ingredients.listFromJson(json['ingredients']);
    }
    if (json['likes'] == null) {
      likes = null;
    } else {
          likes = json['likes'];
    }
    if (json['nutrition'] == null) {
      nutrition = null;
    } else {
      nutrition = new InlineResponse20028Nutrition.fromJson(json['nutrition']);
    }
    if (json['price'] == null) {
      price = null;
    } else {
          price = json['price'];
    }
    if (json['servings'] == null) {
      servings = null;
    } else {
      servings = new InlineResponse20028Servings.fromJson(json['servings']);
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
    if (badges != null)
      json['badges'] = badges;
    if (importantBadges != null)
      json['importantBadges'] = importantBadges;
    if (breadcrumbs != null)
      json['breadcrumbs'] = breadcrumbs;
    if (generatedText != null)
      json['generatedText'] = generatedText;
    if (imageType != null)
      json['imageType'] = imageType;
    if (ingredientCount != null)
      json['ingredientCount'] = ingredientCount;
    if (ingredientList != null)
      json['ingredientList'] = ingredientList;
    if (ingredients != null)
      json['ingredients'] = ingredients;
    if (likes != null)
      json['likes'] = likes;
    if (nutrition != null)
      json['nutrition'] = nutrition;
    if (price != null)
      json['price'] = price;
    if (servings != null)
      json['servings'] = servings;
    if (spoonacularScore != null)
      json['spoonacularScore'] = spoonacularScore;
    return json;
  }

  static List<InlineResponse20028> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20028>() : json.map((value) => new InlineResponse20028.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20028> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20028>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20028.fromJson(value));
    }
    return map;
  }
}

