//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent {
  /// Returns a new [ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent] instance.
  ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent({
    required this.min,
    required this.max,
  });

  num min;

  num max;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent &&
    other.min == min &&
    other.max == max;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (min.hashCode) +
    (max.hashCode);

  @override
  String toString() => 'ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent[min=$min, max=$max]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'min'] = this.min;
      json[r'max'] = this.max;
    return json;
  }

  /// Returns a new [ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent(
        min: num.parse('${json[r'min']}'),
        max: num.parse('${json[r'max']}'),
      );
    }
    return null;
  }

  static List<ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent> mapFromJson(dynamic json) {
    final map = <String, ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent-objects as value to a dart map
  static Map<String, List<ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'min',
    'max',
  };
}

