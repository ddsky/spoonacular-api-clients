//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchRecipesByIngredients200ResponseInner {
  /// Returns a new [SearchRecipesByIngredients200ResponseInner] instance.
  SearchRecipesByIngredients200ResponseInner({
    required this.id,
    required this.image,
    required this.imageType,
    required this.likes,
    required this.missedIngredientCount,
    this.missedIngredients = const {},
    required this.title,
    this.unusedIngredients = const [],
    required this.usedIngredientCount,
    this.usedIngredients = const {},
  });

  int id;

  String image;

  String imageType;

  int likes;

  int missedIngredientCount;

  Set<SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner> missedIngredients;

  String title;

  List<Object> unusedIngredients;

  num usedIngredientCount;

  Set<SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner> usedIngredients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchRecipesByIngredients200ResponseInner &&
     other.id == id &&
     other.image == image &&
     other.imageType == imageType &&
     other.likes == likes &&
     other.missedIngredientCount == missedIngredientCount &&
     other.missedIngredients == missedIngredients &&
     other.title == title &&
     other.unusedIngredients == unusedIngredients &&
     other.usedIngredientCount == usedIngredientCount &&
     other.usedIngredients == usedIngredients;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (image.hashCode) +
    (imageType.hashCode) +
    (likes.hashCode) +
    (missedIngredientCount.hashCode) +
    (missedIngredients.hashCode) +
    (title.hashCode) +
    (unusedIngredients.hashCode) +
    (usedIngredientCount.hashCode) +
    (usedIngredients.hashCode);

  @override
  String toString() => 'SearchRecipesByIngredients200ResponseInner[id=$id, image=$image, imageType=$imageType, likes=$likes, missedIngredientCount=$missedIngredientCount, missedIngredients=$missedIngredients, title=$title, unusedIngredients=$unusedIngredients, usedIngredientCount=$usedIngredientCount, usedIngredients=$usedIngredients]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
      _json[r'image'] = image;
      _json[r'imageType'] = imageType;
      _json[r'likes'] = likes;
      _json[r'missedIngredientCount'] = missedIngredientCount;
      _json[r'missedIngredients'] = missedIngredients;
      _json[r'title'] = title;
      _json[r'unusedIngredients'] = unusedIngredients;
      _json[r'usedIngredientCount'] = usedIngredientCount;
      _json[r'usedIngredients'] = usedIngredients;
    return _json;
  }

  /// Returns a new [SearchRecipesByIngredients200ResponseInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchRecipesByIngredients200ResponseInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchRecipesByIngredients200ResponseInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchRecipesByIngredients200ResponseInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchRecipesByIngredients200ResponseInner(
        id: mapValueOfType<int>(json, r'id')!,
        image: mapValueOfType<String>(json, r'image')!,
        imageType: mapValueOfType<String>(json, r'imageType')!,
        likes: mapValueOfType<int>(json, r'likes')!,
        missedIngredientCount: mapValueOfType<int>(json, r'missedIngredientCount')!,
        missedIngredients: SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner.listFromJson(json[r'missedIngredients'])!,
        title: mapValueOfType<String>(json, r'title')!,
        unusedIngredients: Object.listFromJson(json[r'unusedIngredients'])!,
        usedIngredientCount: json[r'usedIngredientCount'] == null
            ? null
            : num.parse(json[r'usedIngredientCount'].toString()),
        usedIngredients: SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner.listFromJson(json[r'usedIngredients'])!,
      );
    }
    return null;
  }

  static List<SearchRecipesByIngredients200ResponseInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchRecipesByIngredients200ResponseInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchRecipesByIngredients200ResponseInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchRecipesByIngredients200ResponseInner> mapFromJson(dynamic json) {
    final map = <String, SearchRecipesByIngredients200ResponseInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRecipesByIngredients200ResponseInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchRecipesByIngredients200ResponseInner-objects as value to a dart map
  static Map<String, List<SearchRecipesByIngredients200ResponseInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchRecipesByIngredients200ResponseInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRecipesByIngredients200ResponseInner.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'image',
    'imageType',
    'likes',
    'missedIngredientCount',
    'missedIngredients',
    'title',
    'unusedIngredients',
    'usedIngredientCount',
    'usedIngredients',
  };
}

