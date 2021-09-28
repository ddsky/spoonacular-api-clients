part of openapi.api;

class InlineResponse20035MenuItems {
  
  int id = null;
  
  String title = null;
  
  String restaurantChain = null;
  
  String image = null;
  
  String imageType = null;
  
  InlineResponse20028Servings servings = null;
  InlineResponse20035MenuItems();

  @override
  String toString() {
    return 'InlineResponse20035MenuItems[id=$id, title=$title, restaurantChain=$restaurantChain, image=$image, imageType=$imageType, servings=$servings, ]';
  }

  InlineResponse20035MenuItems.fromJson(Map<String, dynamic> json) {
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
    if (json['servings'] == null) {
      servings = null;
    } else {
      servings = new InlineResponse20028Servings.fromJson(json['servings']);
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
    if (image != null)
      json['image'] = image;
    if (imageType != null)
      json['imageType'] = imageType;
    if (servings != null)
      json['servings'] = servings;
    return json;
  }

  static List<InlineResponse20035MenuItems> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20035MenuItems>() : json.map((value) => new InlineResponse20035MenuItems.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20035MenuItems> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20035MenuItems>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20035MenuItems.fromJson(value));
    }
    return map;
  }
}

