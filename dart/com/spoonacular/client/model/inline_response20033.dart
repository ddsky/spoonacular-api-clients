part of openapi.api;

class InlineResponse20033 {
  
  String cleanTitle = null;
  
  String image = null;
  
  String category = null;
  
  List<String> breadcrumbs = [];
  
  int usdaCode = null;
  InlineResponse20033();

  @override
  String toString() {
    return 'InlineResponse20033[cleanTitle=$cleanTitle, image=$image, category=$category, breadcrumbs=$breadcrumbs, usdaCode=$usdaCode, ]';
  }

  InlineResponse20033.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['cleanTitle'] == null) {
      cleanTitle = null;
    } else {
          cleanTitle = json['cleanTitle'];
    }
    if (json['image'] == null) {
      image = null;
    } else {
          image = json['image'];
    }
    if (json['category'] == null) {
      category = null;
    } else {
          category = json['category'];
    }
    if (json['breadcrumbs'] == null) {
      breadcrumbs = null;
    } else {
      breadcrumbs = (json['breadcrumbs'] as List).cast<String>();
    }
    if (json['usdaCode'] == null) {
      usdaCode = null;
    } else {
          usdaCode = json['usdaCode'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (cleanTitle != null)
      json['cleanTitle'] = cleanTitle;
    if (image != null)
      json['image'] = image;
    if (category != null)
      json['category'] = category;
    if (breadcrumbs != null)
      json['breadcrumbs'] = breadcrumbs;
    if (usdaCode != null)
      json['usdaCode'] = usdaCode;
    return json;
  }

  static List<InlineResponse20033> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20033>() : json.map((value) => new InlineResponse20033.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20033> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20033>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20033.fromJson(value));
    }
    return map;
  }
}

