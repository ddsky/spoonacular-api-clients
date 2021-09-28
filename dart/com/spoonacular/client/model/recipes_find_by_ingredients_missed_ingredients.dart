part of openapi.api;

class RecipesFindByIngredientsMissedIngredients {
  
  String aisle = null;
  
  num amount = null;
  
  int id = null;
  
  String image = null;
  
  List<String> meta = [];
  
  String name = null;
  
  String original = null;
  
  String originalName = null;
  
  String unit = null;
  
  String unitLong = null;
  
  String unitShort = null;
  RecipesFindByIngredientsMissedIngredients();

  @override
  String toString() {
    return 'RecipesFindByIngredientsMissedIngredients[aisle=$aisle, amount=$amount, id=$id, image=$image, meta=$meta, name=$name, original=$original, originalName=$originalName, unit=$unit, unitLong=$unitLong, unitShort=$unitShort, ]';
  }

  RecipesFindByIngredientsMissedIngredients.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['aisle'] == null) {
      aisle = null;
    } else {
          aisle = json['aisle'];
    }
    if (json['amount'] == null) {
      amount = null;
    } else {
          amount = json['amount'];
    }
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
    if (json['meta'] == null) {
      meta = null;
    } else {
      meta = (json['meta'] as List).cast<String>();
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
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
    if (json['unit'] == null) {
      unit = null;
    } else {
          unit = json['unit'];
    }
    if (json['unitLong'] == null) {
      unitLong = null;
    } else {
          unitLong = json['unitLong'];
    }
    if (json['unitShort'] == null) {
      unitShort = null;
    } else {
          unitShort = json['unitShort'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (aisle != null)
      json['aisle'] = aisle;
    if (amount != null)
      json['amount'] = amount;
    if (id != null)
      json['id'] = id;
    if (image != null)
      json['image'] = image;
    if (meta != null)
      json['meta'] = meta;
    if (name != null)
      json['name'] = name;
    if (original != null)
      json['original'] = original;
    if (originalName != null)
      json['originalName'] = originalName;
    if (unit != null)
      json['unit'] = unit;
    if (unitLong != null)
      json['unitLong'] = unitLong;
    if (unitShort != null)
      json['unitShort'] = unitShort;
    return json;
  }

  static List<RecipesFindByIngredientsMissedIngredients> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecipesFindByIngredientsMissedIngredients>() : json.map((value) => new RecipesFindByIngredientsMissedIngredients.fromJson(value)).toList();
  }

  static Map<String, RecipesFindByIngredientsMissedIngredients> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RecipesFindByIngredientsMissedIngredients>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RecipesFindByIngredientsMissedIngredients.fromJson(value));
    }
    return map;
  }
}

