part of openapi.api;

class InlineResponse20053Videos {
  
  String title = null;
  
  int length = null;
  
  num rating = null;
  
  String shortTitle = null;
  
  String thumbnail = null;
  
  int views = null;
  
  String youTubeId = null;
  InlineResponse20053Videos();

  @override
  String toString() {
    return 'InlineResponse20053Videos[title=$title, length=$length, rating=$rating, shortTitle=$shortTitle, thumbnail=$thumbnail, views=$views, youTubeId=$youTubeId, ]';
  }

  InlineResponse20053Videos.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['length'] == null) {
      length = null;
    } else {
          length = json['length'];
    }
    if (json['rating'] == null) {
      rating = null;
    } else {
          rating = json['rating'];
    }
    if (json['shortTitle'] == null) {
      shortTitle = null;
    } else {
          shortTitle = json['shortTitle'];
    }
    if (json['thumbnail'] == null) {
      thumbnail = null;
    } else {
          thumbnail = json['thumbnail'];
    }
    if (json['views'] == null) {
      views = null;
    } else {
          views = json['views'];
    }
    if (json['youTubeId'] == null) {
      youTubeId = null;
    } else {
          youTubeId = json['youTubeId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (title != null)
      json['title'] = title;
    if (length != null)
      json['length'] = length;
    if (rating != null)
      json['rating'] = rating;
    if (shortTitle != null)
      json['shortTitle'] = shortTitle;
    if (thumbnail != null)
      json['thumbnail'] = thumbnail;
    if (views != null)
      json['views'] = views;
    if (youTubeId != null)
      json['youTubeId'] = youTubeId;
    return json;
  }

  static List<InlineResponse20053Videos> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20053Videos>() : json.map((value) => new InlineResponse20053Videos.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20053Videos> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20053Videos>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20053Videos.fromJson(value));
    }
    return map;
  }
}

