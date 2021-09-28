part of openapi.api;

class InlineResponse20020 {
  
  int id = null;
  
  String original = null;
  
  String originalName = null;
  
  String name = null;
  
  String nameClean = null;
  
  num amount = null;
  
  String unit = null;
  
  String unitShort = null;
  
  String unitLong = null;
  
  List<String> possibleUnits = [];
  
  RecipesParseIngredientsEstimatedCost estimatedCost = null;
  
  String consistency = null;
  
  String aisle = null;
  
  String image = null;
  
  List<String> meta = [];
  
  RecipesParseIngredientsNutrition nutrition = null;
  InlineResponse20020();

  @override
  String toString() {
    return 'InlineResponse20020[id=$id, original=$original, originalName=$originalName, name=$name, nameClean=$nameClean, amount=$amount, unit=$unit, unitShort=$unitShort, unitLong=$unitLong, possibleUnits=$possibleUnits, estimatedCost=$estimatedCost, consistency=$consistency, aisle=$aisle, image=$image, meta=$meta, nutrition=$nutrition, ]';
  }

  InlineResponse20020.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
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
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['nameClean'] == null) {
      nameClean = null;
    } else {
          nameClean = json['nameClean'];
    }
    if (json['amount'] == null) {
      amount = null;
    } else {
          amount = json['amount'];
    }
    if (json['unit'] == null) {
      unit = null;
    } else {
          unit = json['unit'];
    }
    if (json['unitShort'] == null) {
      unitShort = null;
    } else {
          unitShort = json['unitShort'];
    }
    if (json['unitLong'] == null) {
      unitLong = null;
    } else {
          unitLong = json['unitLong'];
    }
    if (json['possibleUnits'] == null) {
      possibleUnits = null;
    } else {
      possibleUnits = (json['possibleUnits'] as List).cast<String>();
    }
    if (json['estimatedCost'] == null) {
      estimatedCost = null;
    } else {
      estimatedCost = new RecipesParseIngredientsEstimatedCost.fromJson(json['estimatedCost']);
    }
    if (json['consistency'] == null) {
      consistency = null;
    } else {
          consistency = json['consistency'];
    }
    if (json['aisle'] == null) {
      aisle = null;
    } else {
          aisle = json['aisle'];
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
    if (json['nutrition'] == null) {
      nutrition = null;
    } else {
      nutrition = new RecipesParseIngredientsNutrition.fromJson(json['nutrition']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (original != null)
      json['original'] = original;
    if (originalName != null)
      json['originalName'] = originalName;
    if (name != null)
      json['name'] = name;
    if (nameClean != null)
      json['nameClean'] = nameClean;
    if (amount != null)
      json['amount'] = amount;
    if (unit != null)
      json['unit'] = unit;
    if (unitShort != null)
      json['unitShort'] = unitShort;
    if (unitLong != null)
      json['unitLong'] = unitLong;
    if (possibleUnits != null)
      json['possibleUnits'] = possibleUnits;
    if (estimatedCost != null)
      json['estimatedCost'] = estimatedCost;
    if (consistency != null)
      json['consistency'] = consistency;
    if (aisle != null)
      json['aisle'] = aisle;
    if (image != null)
      json['image'] = image;
    if (meta != null)
      json['meta'] = meta;
    if (nutrition != null)
      json['nutrition'] = nutrition;
    return json;
  }

  static List<InlineResponse20020> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20020>() : json.map((value) => new InlineResponse20020.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20020> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20020>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20020.fromJson(value));
    }
    return map;
  }
}

