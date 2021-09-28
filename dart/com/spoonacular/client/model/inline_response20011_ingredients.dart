part of openapi.api;

class InlineResponse20011Ingredients {
  
  InlineResponse20010Amount amount = null;
  
  String image = null;
  
  String name = null;
  InlineResponse20011Ingredients();

  @override
  String toString() {
    return 'InlineResponse20011Ingredients[amount=$amount, image=$image, name=$name, ]';
  }

  InlineResponse20011Ingredients.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (amount != null)
      json['amount'] = amount;
    if (image != null)
      json['image'] = image;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<InlineResponse20011Ingredients> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20011Ingredients>() : json.map((value) => new InlineResponse20011Ingredients.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20011Ingredients> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20011Ingredients>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20011Ingredients.fromJson(value));
    }
    return map;
  }
}

