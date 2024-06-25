//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImageAnalysisByURL200Response {
  /// Returns a new [ImageAnalysisByURL200Response] instance.
  ImageAnalysisByURL200Response({
    required this.nutrition,
    required this.category,
    this.recipes = const {},
  });

  ImageAnalysisByURL200ResponseNutrition nutrition;

  ImageAnalysisByURL200ResponseCategory category;

  Set<ImageAnalysisByURL200ResponseRecipesInner> recipes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImageAnalysisByURL200Response &&
    other.nutrition == nutrition &&
    other.category == category &&
    _deepEquality.equals(other.recipes, recipes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nutrition.hashCode) +
    (category.hashCode) +
    (recipes.hashCode);

  @override
  String toString() => 'ImageAnalysisByURL200Response[nutrition=$nutrition, category=$category, recipes=$recipes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'nutrition'] = this.nutrition;
      json[r'category'] = this.category;
      json[r'recipes'] = this.recipes.toList(growable: false);
    return json;
  }

  /// Returns a new [ImageAnalysisByURL200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageAnalysisByURL200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImageAnalysisByURL200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImageAnalysisByURL200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageAnalysisByURL200Response(
        nutrition: ImageAnalysisByURL200ResponseNutrition.fromJson(json[r'nutrition'])!,
        category: ImageAnalysisByURL200ResponseCategory.fromJson(json[r'category'])!,
        recipes: ImageAnalysisByURL200ResponseRecipesInner.listFromJson(json[r'recipes']).toSet(),
      );
    }
    return null;
  }

  static List<ImageAnalysisByURL200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImageAnalysisByURL200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageAnalysisByURL200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageAnalysisByURL200Response> mapFromJson(dynamic json) {
    final map = <String, ImageAnalysisByURL200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageAnalysisByURL200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageAnalysisByURL200Response-objects as value to a dart map
  static Map<String, List<ImageAnalysisByURL200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImageAnalysisByURL200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImageAnalysisByURL200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'nutrition',
    'category',
    'recipes',
  };
}

