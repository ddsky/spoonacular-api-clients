part of openapi.api;

class InlineResponse20031ComparableProductsProtein {
  
  num difference = null;
  
  int id = null;
  
  String image = null;
  
  String title = null;
  InlineResponse20031ComparableProductsProtein();

  @override
  String toString() {
    return 'InlineResponse20031ComparableProductsProtein[difference=$difference, id=$id, image=$image, title=$title, ]';
  }

  InlineResponse20031ComparableProductsProtein.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['difference'] == null) {
      difference = null;
    } else {
          difference = json['difference'];
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
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (difference != null)
      json['difference'] = difference;
    if (id != null)
      json['id'] = id;
    if (image != null)
      json['image'] = image;
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<InlineResponse20031ComparableProductsProtein> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20031ComparableProductsProtein>() : json.map((value) => new InlineResponse20031ComparableProductsProtein.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20031ComparableProductsProtein> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20031ComparableProductsProtein>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20031ComparableProductsProtein.fromJson(value));
    }
    return map;
  }
}

