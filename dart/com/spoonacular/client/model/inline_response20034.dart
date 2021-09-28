part of openapi.api;

class InlineResponse20034 {
  
  String original = null;
  
  String originalName = null;
  
  String ingredientImage = null;
  
  List<String> meta = [];
  
  List<FoodIngredientsMapProducts> products = [];
  InlineResponse20034();

  @override
  String toString() {
    return 'InlineResponse20034[original=$original, originalName=$originalName, ingredientImage=$ingredientImage, meta=$meta, products=$products, ]';
  }

  InlineResponse20034.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['original'] == null) {
      original = null;
    } else {
          original = json['original'];
    }
    if (json['originalName'] == null) {
      originalName = null;
    } else {
          originalName = json['originalName'];
    }
    if (json['ingredientImage'] == null) {
      ingredientImage = null;
    } else {
          ingredientImage = json['ingredientImage'];
    }
    if (json['meta'] == null) {
      meta = null;
    } else {
      meta = (json['meta'] as List).cast<String>();
    }
    if (json['products'] == null) {
      products = null;
    } else {
      products = FoodIngredientsMapProducts.listFromJson(json['products']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (original != null)
      json['original'] = original;
    if (originalName != null)
      json['originalName'] = originalName;
    if (ingredientImage != null)
      json['ingredientImage'] = ingredientImage;
    if (meta != null)
      json['meta'] = meta;
    if (products != null)
      json['products'] = products;
    return json;
  }

  static List<InlineResponse20034> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20034>() : json.map((value) => new InlineResponse20034.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20034> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20034>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20034.fromJson(value));
    }
    return map;
  }
}

