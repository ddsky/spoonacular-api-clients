part of openapi.api;

class InlineResponse20051 {
  
  List<Object> articles = [];
  
  List<Object> grocery Products = [];
  
  List<Object> menu Items = [];
  
  List<Object> recipes = [];
  InlineResponse20051();

  @override
  String toString() {
    return 'InlineResponse20051[articles=$articles, grocery Products=$grocery Products, menu Items=$menu Items, recipes=$recipes, ]';
  }

  InlineResponse20051.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['Articles'] == null) {
      articles = null;
    } else {
      articles = Object.listFromJson(json['Articles']);
    }
    if (json['Grocery Products'] == null) {
      grocery Products = null;
    } else {
      grocery Products = Object.listFromJson(json['Grocery Products']);
    }
    if (json['Menu Items'] == null) {
      menu Items = null;
    } else {
      menu Items = Object.listFromJson(json['Menu Items']);
    }
    if (json['Recipes'] == null) {
      recipes = null;
    } else {
      recipes = Object.listFromJson(json['Recipes']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (articles != null)
      json['Articles'] = articles;
    if (grocery Products != null)
      json['Grocery Products'] = grocery Products;
    if (menu Items != null)
      json['Menu Items'] = menu Items;
    if (recipes != null)
      json['Recipes'] = recipes;
    return json;
  }

  static List<InlineResponse20051> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20051>() : json.map((value) => new InlineResponse20051.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20051> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20051>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20051.fromJson(value));
    }
    return map;
  }
}

