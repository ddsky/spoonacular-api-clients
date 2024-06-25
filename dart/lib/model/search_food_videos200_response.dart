//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchFoodVideos200Response {
  /// Returns a new [SearchFoodVideos200Response] instance.
  SearchFoodVideos200Response({
    this.videos = const {},
    required this.totalResults,
  });

  Set<SearchFoodVideos200ResponseVideosInner> videos;

  int totalResults;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchFoodVideos200Response &&
    _deepEquality.equals(other.videos, videos) &&
    other.totalResults == totalResults;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (videos.hashCode) +
    (totalResults.hashCode);

  @override
  String toString() => 'SearchFoodVideos200Response[videos=$videos, totalResults=$totalResults]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'videos'] = this.videos.toList(growable: false);
      json[r'totalResults'] = this.totalResults;
    return json;
  }

  /// Returns a new [SearchFoodVideos200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchFoodVideos200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchFoodVideos200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchFoodVideos200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchFoodVideos200Response(
        videos: SearchFoodVideos200ResponseVideosInner.listFromJson(json[r'videos']).toSet(),
        totalResults: mapValueOfType<int>(json, r'totalResults')!,
      );
    }
    return null;
  }

  static List<SearchFoodVideos200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchFoodVideos200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchFoodVideos200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchFoodVideos200Response> mapFromJson(dynamic json) {
    final map = <String, SearchFoodVideos200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchFoodVideos200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchFoodVideos200Response-objects as value to a dart map
  static Map<String, List<SearchFoodVideos200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchFoodVideos200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchFoodVideos200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'videos',
    'totalResults',
  };
}

