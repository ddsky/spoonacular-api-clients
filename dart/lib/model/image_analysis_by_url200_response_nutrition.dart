//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImageAnalysisByURL200ResponseNutrition {
  /// Returns a new [ImageAnalysisByURL200ResponseNutrition] instance.
  ImageAnalysisByURL200ResponseNutrition({
    required this.recipesUsed,
    required this.calories,
    required this.fat,
    required this.protein,
    required this.carbs,
  });

  int recipesUsed;

  ImageAnalysisByURL200ResponseNutritionCalories calories;

  ImageAnalysisByURL200ResponseNutritionCalories fat;

  ImageAnalysisByURL200ResponseNutritionCalories protein;

  ImageAnalysisByURL200ResponseNutritionCalories carbs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImageAnalysisByURL200ResponseNutrition &&
    other.recipesUsed == recipesUsed &&
    other.calories == calories &&
    other.fat == fat &&
    other.protein == protein &&
    other.carbs == carbs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (recipesUsed.hashCode) +
    (calories.hashCode) +
    (fat.hashCode) +
    (protein.hashCode) +
    (carbs.hashCode);

  @override
  String toString() => 'ImageAnalysisByURL200ResponseNutrition[recipesUsed=$recipesUsed, calories=$calories, fat=$fat, protein=$protein, carbs=$carbs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'recipesUsed'] = this.recipesUsed;
      json[r'calories'] = this.calories;
      json[r'fat'] = this.fat;
      json[r'protein'] = this.protein;
      json[r'carbs'] = this.carbs;
    return json;
  }

  /// Returns a new [ImageAnalysisByURL200ResponseNutrition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageAnalysisByURL200ResponseNutrition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImageAnalysisByURL200ResponseNutrition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImageAnalysisByURL200ResponseNutrition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageAnalysisByURL200ResponseNutrition(
        recipesUsed: mapValueOfType<int>(json, r'recipesUsed')!,
        calories: ImageAnalysisByURL200ResponseNutritionCalories.fromJson(json[r'calories'])!,
        fat: ImageAnalysisByURL200ResponseNutritionCalories.fromJson(json[r'fat'])!,
        protein: ImageAnalysisByURL200ResponseNutritionCalories.fromJson(json[r'protein'])!,
        carbs: ImageAnalysisByURL200ResponseNutritionCalories.fromJson(json[r'carbs'])!,
      );
    }
    return null;
  }

  static List<ImageAnalysisByURL200ResponseNutrition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImageAnalysisByURL200ResponseNutrition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageAnalysisByURL200ResponseNutrition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageAnalysisByURL200ResponseNutrition> mapFromJson(dynamic json) {
    final map = <String, ImageAnalysisByURL200ResponseNutrition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageAnalysisByURL200ResponseNutrition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageAnalysisByURL200ResponseNutrition-objects as value to a dart map
  static Map<String, List<ImageAnalysisByURL200ResponseNutrition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImageAnalysisByURL200ResponseNutrition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImageAnalysisByURL200ResponseNutrition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'recipesUsed',
    'calories',
    'fat',
    'protein',
    'carbs',
  };
}

