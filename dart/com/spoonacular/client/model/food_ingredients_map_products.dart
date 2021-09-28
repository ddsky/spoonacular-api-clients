part of openapi.api;

class FoodIngredientsMapProducts {
  
  int id = null;
  
  String title = null;
  
  String upc = null;
  FoodIngredientsMapProducts();

  @override
  String toString() {
    return 'FoodIngredientsMapProducts[id=$id, title=$title, upc=$upc, ]';
  }

  FoodIngredientsMapProducts.fromJson(Map<String, dynamic> json) {
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
    if (json['upc'] == null) {
      upc = null;
    } else {
          upc = json['upc'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    if (upc != null)
      json['upc'] = upc;
    return json;
  }

  static List<FoodIngredientsMapProducts> listFromJson(List<dynamic> json) {
    return json == null ? new List<FoodIngredientsMapProducts>() : json.map((value) => new FoodIngredientsMapProducts.fromJson(value)).toList();
  }

  static Map<String, FoodIngredientsMapProducts> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, FoodIngredientsMapProducts>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new FoodIngredientsMapProducts.fromJson(value));
    }
    return map;
  }
}

