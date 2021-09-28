part of openapi.api;

class InlineResponse20010Ingredients {
  
  InlineResponse20010Amount amount = null;
  
  String image = null;
  
  String name = null;
  
  num price = null;
  InlineResponse20010Ingredients();

  @override
  String toString() {
    return 'InlineResponse20010Ingredients[amount=$amount, image=$image, name=$name, price=$price, ]';
  }

  InlineResponse20010Ingredients.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['amount'] == null) {
      amount = null;
    } else {
      amount = new InlineResponse20010Amount.fromJson(json['amount']);
    }
    if (json['image'] == null) {
      image = null;
    } else {
          image = json['image'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['price'] == null) {
      price = null;
    } else {
          price = json['price'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (amount != null)
      json['amount'] = amount;
    if (image != null)
      json['image'] = image;
    if (name != null)
      json['name'] = name;
    if (price != null)
      json['price'] = price;
    return json;
  }

  static List<InlineResponse20010Ingredients> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20010Ingredients>() : json.map((value) => new InlineResponse20010Ingredients.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20010Ingredients> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20010Ingredients>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20010Ingredients.fromJson(value));
    }
    return map;
  }
}

