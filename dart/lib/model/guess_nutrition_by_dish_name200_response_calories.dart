//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GuessNutritionByDishName200ResponseCalories {
  /// Returns a new [GuessNutritionByDishName200ResponseCalories] instance.
  GuessNutritionByDishName200ResponseCalories({
    required this.confidenceRange95Percent,
    required this.standardDeviation,
    required this.unit,
    required this.value,
  });

  GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent confidenceRange95Percent;

  num standardDeviation;

  String unit;

  num value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GuessNutritionByDishName200ResponseCalories &&
    other.confidenceRange95Percent == confidenceRange95Percent &&
    other.standardDeviation == standardDeviation &&
    other.unit == unit &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (confidenceRange95Percent.hashCode) +
    (standardDeviation.hashCode) +
    (unit.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'GuessNutritionByDishName200ResponseCalories[confidenceRange95Percent=$confidenceRange95Percent, standardDeviation=$standardDeviation, unit=$unit, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'confidenceRange95Percent'] = this.confidenceRange95Percent;
      json[r'standardDeviation'] = this.standardDeviation;
      json[r'unit'] = this.unit;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [GuessNutritionByDishName200ResponseCalories] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GuessNutritionByDishName200ResponseCalories? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GuessNutritionByDishName200ResponseCalories[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GuessNutritionByDishName200ResponseCalories[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GuessNutritionByDishName200ResponseCalories(
        confidenceRange95Percent: GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent.fromJson(json[r'confidenceRange95Percent'])!,
        standardDeviation: num.parse('${json[r'standardDeviation']}'),
        unit: mapValueOfType<String>(json, r'unit')!,
        value: num.parse('${json[r'value']}'),
      );
    }
    return null;
  }

  static List<GuessNutritionByDishName200ResponseCalories> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GuessNutritionByDishName200ResponseCalories>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GuessNutritionByDishName200ResponseCalories.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GuessNutritionByDishName200ResponseCalories> mapFromJson(dynamic json) {
    final map = <String, GuessNutritionByDishName200ResponseCalories>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GuessNutritionByDishName200ResponseCalories.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GuessNutritionByDishName200ResponseCalories-objects as value to a dart map
  static Map<String, List<GuessNutritionByDishName200ResponseCalories>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GuessNutritionByDishName200ResponseCalories>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GuessNutritionByDishName200ResponseCalories.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'confidenceRange95Percent',
    'standardDeviation',
    'unit',
    'value',
  };
}

