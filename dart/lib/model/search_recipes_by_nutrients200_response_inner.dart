//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchRecipesByNutrients200ResponseInner {
  /// Returns a new [SearchRecipesByNutrients200ResponseInner] instance.
  SearchRecipesByNutrients200ResponseInner({
    required this.calories,
    required this.carbs,
    required this.fat,
    required this.id,
    required this.image,
    required this.imageType,
    required this.protein,
    required this.title,
  });

  num calories;

  String carbs;

  String fat;

  int id;

  String image;

  String imageType;

  String protein;

  String title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchRecipesByNutrients200ResponseInner &&
    other.calories == calories &&
    other.carbs == carbs &&
    other.fat == fat &&
    other.id == id &&
    other.image == image &&
    other.imageType == imageType &&
    other.protein == protein &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (calories.hashCode) +
    (carbs.hashCode) +
    (fat.hashCode) +
    (id.hashCode) +
    (image.hashCode) +
    (imageType.hashCode) +
    (protein.hashCode) +
    (title.hashCode);

  @override
  String toString() => 'SearchRecipesByNutrients200ResponseInner[calories=$calories, carbs=$carbs, fat=$fat, id=$id, image=$image, imageType=$imageType, protein=$protein, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'calories'] = this.calories;
      json[r'carbs'] = this.carbs;
      json[r'fat'] = this.fat;
      json[r'id'] = this.id;
      json[r'image'] = this.image;
      json[r'imageType'] = this.imageType;
      json[r'protein'] = this.protein;
      json[r'title'] = this.title;
    return json;
  }

  /// Returns a new [SearchRecipesByNutrients200ResponseInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchRecipesByNutrients200ResponseInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchRecipesByNutrients200ResponseInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchRecipesByNutrients200ResponseInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchRecipesByNutrients200ResponseInner(
        calories: num.parse('${json[r'calories']}'),
        carbs: mapValueOfType<String>(json, r'carbs')!,
        fat: mapValueOfType<String>(json, r'fat')!,
        id: mapValueOfType<int>(json, r'id')!,
        image: mapValueOfType<String>(json, r'image')!,
        imageType: mapValueOfType<String>(json, r'imageType')!,
        protein: mapValueOfType<String>(json, r'protein')!,
        title: mapValueOfType<String>(json, r'title')!,
      );
    }
    return null;
  }

  static List<SearchRecipesByNutrients200ResponseInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchRecipesByNutrients200ResponseInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchRecipesByNutrients200ResponseInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchRecipesByNutrients200ResponseInner> mapFromJson(dynamic json) {
    final map = <String, SearchRecipesByNutrients200ResponseInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRecipesByNutrients200ResponseInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchRecipesByNutrients200ResponseInner-objects as value to a dart map
  static Map<String, List<SearchRecipesByNutrients200ResponseInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchRecipesByNutrients200ResponseInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchRecipesByNutrients200ResponseInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'calories',
    'carbs',
    'fat',
    'id',
    'image',
    'imageType',
    'protein',
    'title',
  };
}

