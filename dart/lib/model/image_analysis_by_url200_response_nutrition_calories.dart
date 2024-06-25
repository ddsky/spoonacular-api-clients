//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImageAnalysisByURL200ResponseNutritionCalories {
  /// Returns a new [ImageAnalysisByURL200ResponseNutritionCalories] instance.
  ImageAnalysisByURL200ResponseNutritionCalories({
    required this.value,
    required this.unit,
    required this.confidenceRange95Percent,
    required this.standardDeviation,
  });

  num value;

  String unit;

  ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent confidenceRange95Percent;

  num standardDeviation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImageAnalysisByURL200ResponseNutritionCalories &&
    other.value == value &&
    other.unit == unit &&
    other.confidenceRange95Percent == confidenceRange95Percent &&
    other.standardDeviation == standardDeviation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (value.hashCode) +
    (unit.hashCode) +
    (confidenceRange95Percent.hashCode) +
    (standardDeviation.hashCode);

  @override
  String toString() => 'ImageAnalysisByURL200ResponseNutritionCalories[value=$value, unit=$unit, confidenceRange95Percent=$confidenceRange95Percent, standardDeviation=$standardDeviation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'value'] = this.value;
      json[r'unit'] = this.unit;
      json[r'confidenceRange95Percent'] = this.confidenceRange95Percent;
      json[r'standardDeviation'] = this.standardDeviation;
    return json;
  }

  /// Returns a new [ImageAnalysisByURL200ResponseNutritionCalories] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageAnalysisByURL200ResponseNutritionCalories? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImageAnalysisByURL200ResponseNutritionCalories[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImageAnalysisByURL200ResponseNutritionCalories[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageAnalysisByURL200ResponseNutritionCalories(
        value: num.parse('${json[r'value']}'),
        unit: mapValueOfType<String>(json, r'unit')!,
        confidenceRange95Percent: ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.fromJson(json[r'confidenceRange95Percent'])!,
        standardDeviation: num.parse('${json[r'standardDeviation']}'),
      );
    }
    return null;
  }

  static List<ImageAnalysisByURL200ResponseNutritionCalories> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImageAnalysisByURL200ResponseNutritionCalories>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageAnalysisByURL200ResponseNutritionCalories.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageAnalysisByURL200ResponseNutritionCalories> mapFromJson(dynamic json) {
    final map = <String, ImageAnalysisByURL200ResponseNutritionCalories>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageAnalysisByURL200ResponseNutritionCalories.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageAnalysisByURL200ResponseNutritionCalories-objects as value to a dart map
  static Map<String, List<ImageAnalysisByURL200ResponseNutritionCalories>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImageAnalysisByURL200ResponseNutritionCalories>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImageAnalysisByURL200ResponseNutritionCalories.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'value',
    'unit',
    'confidenceRange95Percent',
    'standardDeviation',
  };
}

