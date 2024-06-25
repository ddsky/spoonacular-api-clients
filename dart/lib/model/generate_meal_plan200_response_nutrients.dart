//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateMealPlan200ResponseNutrients {
  /// Returns a new [GenerateMealPlan200ResponseNutrients] instance.
  GenerateMealPlan200ResponseNutrients({
    required this.calories,
    required this.carbohydrates,
    required this.fat,
    required this.protein,
  });

  num calories;

  num carbohydrates;

  num fat;

  num protein;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateMealPlan200ResponseNutrients &&
    other.calories == calories &&
    other.carbohydrates == carbohydrates &&
    other.fat == fat &&
    other.protein == protein;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (calories.hashCode) +
    (carbohydrates.hashCode) +
    (fat.hashCode) +
    (protein.hashCode);

  @override
  String toString() => 'GenerateMealPlan200ResponseNutrients[calories=$calories, carbohydrates=$carbohydrates, fat=$fat, protein=$protein]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'calories'] = this.calories;
      json[r'carbohydrates'] = this.carbohydrates;
      json[r'fat'] = this.fat;
      json[r'protein'] = this.protein;
    return json;
  }

  /// Returns a new [GenerateMealPlan200ResponseNutrients] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateMealPlan200ResponseNutrients? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateMealPlan200ResponseNutrients[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateMealPlan200ResponseNutrients[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateMealPlan200ResponseNutrients(
        calories: num.parse('${json[r'calories']}'),
        carbohydrates: num.parse('${json[r'carbohydrates']}'),
        fat: num.parse('${json[r'fat']}'),
        protein: num.parse('${json[r'protein']}'),
      );
    }
    return null;
  }

  static List<GenerateMealPlan200ResponseNutrients> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateMealPlan200ResponseNutrients>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateMealPlan200ResponseNutrients.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateMealPlan200ResponseNutrients> mapFromJson(dynamic json) {
    final map = <String, GenerateMealPlan200ResponseNutrients>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateMealPlan200ResponseNutrients.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateMealPlan200ResponseNutrients-objects as value to a dart map
  static Map<String, List<GenerateMealPlan200ResponseNutrients>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateMealPlan200ResponseNutrients>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenerateMealPlan200ResponseNutrients.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'calories',
    'carbohydrates',
    'fat',
    'protein',
  };
}

