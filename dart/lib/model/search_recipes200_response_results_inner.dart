//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchRecipes200ResponseResultsInner {
  /// Returns a new [SearchRecipes200ResponseResultsInner] instance.
  SearchRecipes200ResponseResultsInner({
    required this.id,
    required this.title,
    required this.image,
    required this.imageType,
  });

  int id;

  String title;

  String image;

  String imageType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchRecipes200ResponseResultsInner &&
    other.id == id &&
    other.title == title &&
    other.image == image &&
    other.imageType == imageType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (image.hashCode) +
    (imageType.hashCode);

  @override
  String toString() => 'SearchRecipes200ResponseResultsInner[id=$id, title=$title, image=$image, imageType=$imageType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
      json[r'image'] = this.image;
      json[r'imageType'] = this.imageType;
    return json;
  }

  /// Returns a new [SearchRecipes200ResponseResultsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchRecipes200ResponseResultsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchRecipes200ResponseResultsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchRecipes200ResponseResultsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchRecipes200ResponseResultsInner(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        image: mapValueOfType<String>(json, r'image')!,
        imageType: mapValueOfType<String>(json, r'imageType')!,
      );
    }
    return null;
  }

  static List<SearchRecipes200ResponseResultsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchRecipes200ResponseResultsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchRecipes200ResponseResultsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchRecipes200ResponseResultsInner> mapFromJson(dynamic json) {
    final map = <String, SearchRecipes200ResponseResultsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRecipes200ResponseResultsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchRecipes200ResponseResultsInner-objects as value to a dart map
  static Map<String, List<SearchRecipes200ResponseResultsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchRecipes200ResponseResultsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchRecipes200ResponseResultsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'image',
    'imageType',
  };
}

