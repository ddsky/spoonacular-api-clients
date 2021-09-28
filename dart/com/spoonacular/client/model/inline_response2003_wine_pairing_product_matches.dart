part of openapi.api;

class InlineResponse2003WinePairingProductMatches {
  
  int id = null;
  
  String title = null;
  
  String description = null;
  
  String price = null;
  
  String imageUrl = null;
  
  num averageRating = null;
  
  int ratingCount = null;
  
  num score = null;
  
  String link = null;
  InlineResponse2003WinePairingProductMatches();

  @override
  String toString() {
    return 'InlineResponse2003WinePairingProductMatches[id=$id, title=$title, description=$description, price=$price, imageUrl=$imageUrl, averageRating=$averageRating, ratingCount=$ratingCount, score=$score, link=$link, ]';
  }

  InlineResponse2003WinePairingProductMatches.fromJson(Map<String, dynamic> json) {
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
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['price'] == null) {
      price = null;
    } else {
          price = json['price'];
    }
    if (json['imageUrl'] == null) {
      imageUrl = null;
    } else {
          imageUrl = json['imageUrl'];
    }
    if (json['averageRating'] == null) {
      averageRating = null;
    } else {
          averageRating = json['averageRating'];
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
    if (json['link'] == null) {
      link = null;
    } else {
          link = json['link'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    if (description != null)
      json['description'] = description;
    if (price != null)
      json['price'] = price;
    if (imageUrl != null)
      json['imageUrl'] = imageUrl;
    if (averageRating != null)
      json['averageRating'] = averageRating;
    if (ratingCount != null)
      json['ratingCount'] = ratingCount;
    if (score != null)
      json['score'] = score;
    if (link != null)
      json['link'] = link;
    return json;
  }

  static List<InlineResponse2003WinePairingProductMatches> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2003WinePairingProductMatches>() : json.map((value) => new InlineResponse2003WinePairingProductMatches.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2003WinePairingProductMatches> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2003WinePairingProductMatches>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2003WinePairingProductMatches.fromJson(value));
    }
    return map;
  }
}

