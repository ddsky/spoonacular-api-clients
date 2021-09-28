part of openapi.api;

class InlineResponse20029CustomFoods {
  
  int id = null;
  
  String title = null;
  
  num servings = null;
  
  String imageUrl = null;
  
  num price = null;
  InlineResponse20029CustomFoods();

  @override
  String toString() {
    return 'InlineResponse20029CustomFoods[id=$id, title=$title, servings=$servings, imageUrl=$imageUrl, price=$price, ]';
  }

  InlineResponse20029CustomFoods.fromJson(Map<String, dynamic> json) {
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
    if (json['servings'] == null) {
      servings = null;
    } else {
          servings = json['servings'];
    }
    if (json['imageUrl'] == null) {
      imageUrl = null;
    } else {
          imageUrl = json['imageUrl'];
    }
    if (json['price'] == null) {
      price = null;
    } else {
          price = json['price'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    if (servings != null)
      json['servings'] = servings;
    if (imageUrl != null)
      json['imageUrl'] = imageUrl;
    if (price != null)
      json['price'] = price;
    return json;
  }

  static List<InlineResponse20029CustomFoods> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20029CustomFoods>() : json.map((value) => new InlineResponse20029CustomFoods.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20029CustomFoods> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20029CustomFoods>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20029CustomFoods.fromJson(value));
    }
    return map;
  }
}

