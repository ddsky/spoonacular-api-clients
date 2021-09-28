part of openapi.api;

class InlineResponse20031ComparableProducts {
  
  List<Object> calories = [];
  
  List<Object> likes = [];
  
  List<Object> price = [];
  
  List<InlineResponse20031ComparableProductsProtein> protein = [];
  
  List<InlineResponse20031ComparableProductsProtein> spoonacularScore = [];
  
  List<Object> sugar = [];
  InlineResponse20031ComparableProducts();

  @override
  String toString() {
    return 'InlineResponse20031ComparableProducts[calories=$calories, likes=$likes, price=$price, protein=$protein, spoonacularScore=$spoonacularScore, sugar=$sugar, ]';
  }

  InlineResponse20031ComparableProducts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['calories'] == null) {
      calories = null;
    } else {
      calories = Object.listFromJson(json['calories']);
    }
    if (json['likes'] == null) {
      likes = null;
    } else {
      likes = Object.listFromJson(json['likes']);
    }
    if (json['price'] == null) {
      price = null;
    } else {
      price = Object.listFromJson(json['price']);
    }
    if (json['protein'] == null) {
      protein = null;
    } else {
      protein = InlineResponse20031ComparableProductsProtein.listFromJson(json['protein']);
    }
    if (json['spoonacularScore'] == null) {
      spoonacularScore = null;
    } else {
      spoonacularScore = InlineResponse20031ComparableProductsProtein.listFromJson(json['spoonacularScore']);
    }
    if (json['sugar'] == null) {
      sugar = null;
    } else {
      sugar = Object.listFromJson(json['sugar']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (calories != null)
      json['calories'] = calories;
    if (likes != null)
      json['likes'] = likes;
    if (price != null)
      json['price'] = price;
    if (protein != null)
      json['protein'] = protein;
    if (spoonacularScore != null)
      json['spoonacularScore'] = spoonacularScore;
    if (sugar != null)
      json['sugar'] = sugar;
    return json;
  }

  static List<InlineResponse20031ComparableProducts> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20031ComparableProducts>() : json.map((value) => new InlineResponse20031ComparableProducts.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20031ComparableProducts> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20031ComparableProducts>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20031ComparableProducts.fromJson(value));
    }
    return map;
  }
}

