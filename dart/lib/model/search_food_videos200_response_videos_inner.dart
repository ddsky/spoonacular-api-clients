//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchFoodVideos200ResponseVideosInner {
  /// Returns a new [SearchFoodVideos200ResponseVideosInner] instance.
  SearchFoodVideos200ResponseVideosInner({
    required this.title,
    required this.length,
    required this.rating,
    required this.shortTitle,
    required this.thumbnail,
    required this.views,
    required this.youTubeId,
  });

  String title;

  int length;

  num rating;

  String shortTitle;

  String thumbnail;

  int views;

  String youTubeId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchFoodVideos200ResponseVideosInner &&
    other.title == title &&
    other.length == length &&
    other.rating == rating &&
    other.shortTitle == shortTitle &&
    other.thumbnail == thumbnail &&
    other.views == views &&
    other.youTubeId == youTubeId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title.hashCode) +
    (length.hashCode) +
    (rating.hashCode) +
    (shortTitle.hashCode) +
    (thumbnail.hashCode) +
    (views.hashCode) +
    (youTubeId.hashCode);

  @override
  String toString() => 'SearchFoodVideos200ResponseVideosInner[title=$title, length=$length, rating=$rating, shortTitle=$shortTitle, thumbnail=$thumbnail, views=$views, youTubeId=$youTubeId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'title'] = this.title;
      json[r'length'] = this.length;
      json[r'rating'] = this.rating;
      json[r'shortTitle'] = this.shortTitle;
      json[r'thumbnail'] = this.thumbnail;
      json[r'views'] = this.views;
      json[r'youTubeId'] = this.youTubeId;
    return json;
  }

  /// Returns a new [SearchFoodVideos200ResponseVideosInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchFoodVideos200ResponseVideosInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchFoodVideos200ResponseVideosInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchFoodVideos200ResponseVideosInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchFoodVideos200ResponseVideosInner(
        title: mapValueOfType<String>(json, r'title')!,
        length: mapValueOfType<int>(json, r'length')!,
        rating: num.parse('${json[r'rating']}'),
        shortTitle: mapValueOfType<String>(json, r'shortTitle')!,
        thumbnail: mapValueOfType<String>(json, r'thumbnail')!,
        views: mapValueOfType<int>(json, r'views')!,
        youTubeId: mapValueOfType<String>(json, r'youTubeId')!,
      );
    }
    return null;
  }

  static List<SearchFoodVideos200ResponseVideosInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchFoodVideos200ResponseVideosInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchFoodVideos200ResponseVideosInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchFoodVideos200ResponseVideosInner> mapFromJson(dynamic json) {
    final map = <String, SearchFoodVideos200ResponseVideosInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchFoodVideos200ResponseVideosInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchFoodVideos200ResponseVideosInner-objects as value to a dart map
  static Map<String, List<SearchFoodVideos200ResponseVideosInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchFoodVideos200ResponseVideosInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchFoodVideos200ResponseVideosInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'title',
    'length',
    'rating',
    'shortTitle',
    'thumbnail',
    'views',
    'youTubeId',
  };
}

