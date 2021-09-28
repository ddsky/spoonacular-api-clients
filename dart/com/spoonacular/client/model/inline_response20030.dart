part of openapi.api;

class InlineResponse20030 {
  
  int id = null;
  
  String title = null;
  
  List<String> breadcrumbs = [];
  
  String imageType = null;
  
  List<String> badges = [];
  
  List<String> importantBadges = [];
  
  int ingredientCount = null;
  
  Object generatedText = null;
  
  String ingredientList = null;
  
  List<InlineResponse20030Ingredients> ingredients = [];
  
  num likes = null;
  
  String aisle = null;
  
  InlineResponse20028Nutrition nutrition = null;
  
  num price = null;
  
  InlineResponse20028Servings servings = null;
  
  num spoonacularScore = null;
  InlineResponse20030();

  @override
  String toString() {
    return 'InlineResponse20030[id=$id, title=$title, breadcrumbs=$breadcrumbs, imageType=$imageType, badges=$badges, importantBadges=$importantBadges, ingredientCount=$ingredientCount, generatedText=$generatedText, ingredientList=$ingredientList, ingredients=$ingredients, likes=$likes, aisle=$aisle, nutrition=$nutrition, price=$price, servings=$servings, spoonacularScore=$spoonacularScore, ]';
  }

  InlineResponse20030.fromJson(Map<String, dynamic> json) {
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
    if (json['breadcrumbs'] == null) {
      breadcrumbs = null;
    } else {
      breadcrumbs = (json['breadcrumbs'] as List).cast<String>();
    }
    if (json['imageType'] == null) {
      imageType = null;
    } else {
          imageType = json['imageType'];
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
    if (json['ingredientCount'] == null) {
      ingredientCount = null;
    } else {
          ingredientCount = json['ingredientCount'];
    }
    if (json['generatedText'] == null) {
      generatedText = null;
    } else {
      generatedText = new Object.fromJson(json['generatedText']);
    }
    if (json['ingredientList'] == null) {
      ingredientList = null;
    } else {
          ingredientList = json['ingredientList'];
    }
    if (json['ingredients'] == null) {
      ingredients = null;
    } else {
      ingredients = InlineResponse20030Ingredients.listFromJson(json['ingredients']);
    }
    if (json['likes'] == null) {
      likes = null;
    } else {
          likes = json['likes'];
    }
    if (json['aisle'] == null) {
      aisle = null;
    } else {
          aisle = json['aisle'];
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
    if (breadcrumbs != null)
      json['breadcrumbs'] = breadcrumbs;
    if (imageType != null)
      json['imageType'] = imageType;
    if (badges != null)
      json['badges'] = badges;
    if (importantBadges != null)
      json['importantBadges'] = importantBadges;
    if (ingredientCount != null)
      json['ingredientCount'] = ingredientCount;
    if (generatedText != null)
      json['generatedText'] = generatedText;
    if (ingredientList != null)
      json['ingredientList'] = ingredientList;
    if (ingredients != null)
      json['ingredients'] = ingredients;
    if (likes != null)
      json['likes'] = likes;
    if (aisle != null)
      json['aisle'] = aisle;
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

  static List<InlineResponse20030> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20030>() : json.map((value) => new InlineResponse20030.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20030> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20030>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20030.fromJson(value));
    }
    return map;
  }
}

