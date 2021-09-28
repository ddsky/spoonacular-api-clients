part of openapi.api;

class InlineResponse2003ExtendedIngredients {
  
  String aisle = null;
  
  num amount = null;
  
  String consitency = null;
  
  int id = null;
  
  String image = null;
  
  InlineResponse2003Measures measures = null;
  
  List<String> meta = [];
  
  String name = null;
  
  String original = null;
  
  String originalName = null;
  
  String unit = null;
  InlineResponse2003ExtendedIngredients();

  @override
  String toString() {
    return 'InlineResponse2003ExtendedIngredients[aisle=$aisle, amount=$amount, consitency=$consitency, id=$id, image=$image, measures=$measures, meta=$meta, name=$name, original=$original, originalName=$originalName, unit=$unit, ]';
  }

  InlineResponse2003ExtendedIngredients.fromJson(Map<String, dynamic> json) {
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
    if (json['consitency'] == null) {
      consitency = null;
    } else {
          consitency = json['consitency'];
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
    if (json['measures'] == null) {
      measures = null;
    } else {
      measures = new InlineResponse2003Measures.fromJson(json['measures']);
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (aisle != null)
      json['aisle'] = aisle;
    if (amount != null)
      json['amount'] = amount;
    if (consitency != null)
      json['consitency'] = consitency;
    if (id != null)
      json['id'] = id;
    if (image != null)
      json['image'] = image;
    if (measures != null)
      json['measures'] = measures;
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
    return json;
  }

  static List<InlineResponse2003ExtendedIngredients> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2003ExtendedIngredients>() : json.map((value) => new InlineResponse2003ExtendedIngredients.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2003ExtendedIngredients> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2003ExtendedIngredients>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2003ExtendedIngredients.fromJson(value));
    }
    return map;
  }
}

