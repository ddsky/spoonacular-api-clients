part of openapi.api;

class InlineResponse20047RecommendedWines {
  
  int id = null;
  
  String title = null;
  
  num averageRating = null;
  
  String description = null;
  
  String imageUrl = null;
  
  String link = null;
  
  String price = null;
  
  int ratingCount = null;
  
  num score = null;
  InlineResponse20047RecommendedWines();

  @override
  String toString() {
    return 'InlineResponse20047RecommendedWines[id=$id, title=$title, averageRating=$averageRating, description=$description, imageUrl=$imageUrl, link=$link, price=$price, ratingCount=$ratingCount, score=$score, ]';
  }

  InlineResponse20047RecommendedWines.fromJson(Map<String, dynamic> json) {
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
    if (json['averageRating'] == null) {
      averageRating = null;
    } else {
          averageRating = json['averageRating'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['imageUrl'] == null) {
      imageUrl = null;
    } else {
          imageUrl = json['imageUrl'];
    }
    if (json['link'] == null) {
      link = null;
    } else {
          link = json['link'];
    }
    if (json['price'] == null) {
      price = null;
    } else {
          price = json['price'];
    }
    if (json['ratingCount'] == null) {
      ratingCount = null;
    } else {
          ratingCount = json['ratingCount'];
    }
    if (json['score'] == null) {
      score = null;
    } else {
          score = json['score'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    if (averageRating != null)
      json['averageRating'] = averageRating;
    if (description != null)
      json['description'] = description;
    if (imageUrl != null)
      json['imageUrl'] = imageUrl;
    if (link != null)
      json['link'] = link;
    if (price != null)
      json['price'] = price;
    if (ratingCount != null)
      json['ratingCount'] = ratingCount;
    if (score != null)
      json['score'] = score;
    return json;
  }

  static List<InlineResponse20047RecommendedWines> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20047RecommendedWines>() : json.map((value) => new InlineResponse20047RecommendedWines.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20047RecommendedWines> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20047RecommendedWines>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20047RecommendedWines.fromJson(value));
    }
    return map;
  }
}

