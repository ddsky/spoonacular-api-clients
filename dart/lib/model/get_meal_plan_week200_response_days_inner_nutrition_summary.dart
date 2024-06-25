//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetMealPlanWeek200ResponseDaysInnerNutritionSummary {
  /// Returns a new [GetMealPlanWeek200ResponseDaysInnerNutritionSummary] instance.
  GetMealPlanWeek200ResponseDaysInnerNutritionSummary({
    this.nutrients = const {},
  });

  Set<GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner> nutrients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetMealPlanWeek200ResponseDaysInnerNutritionSummary &&
    _deepEquality.equals(other.nutrients, nutrients);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nutrients.hashCode);

  @override
  String toString() => 'GetMealPlanWeek200ResponseDaysInnerNutritionSummary[nutrients=$nutrients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'nutrients'] = this.nutrients.toList(growable: false);
    return json;
  }

  /// Returns a new [GetMealPlanWeek200ResponseDaysInnerNutritionSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetMealPlanWeek200ResponseDaysInnerNutritionSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetMealPlanWeek200ResponseDaysInnerNutritionSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetMealPlanWeek200ResponseDaysInnerNutritionSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetMealPlanWeek200ResponseDaysInnerNutritionSummary(
        nutrients: GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner.listFromJson(json[r'nutrients']).toSet(),
      );
    }
    return null;
  }

  static List<GetMealPlanWeek200ResponseDaysInnerNutritionSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetMealPlanWeek200ResponseDaysInnerNutritionSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetMealPlanWeek200ResponseDaysInnerNutritionSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetMealPlanWeek200ResponseDaysInnerNutritionSummary> mapFromJson(dynamic json) {
    final map = <String, GetMealPlanWeek200ResponseDaysInnerNutritionSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetMealPlanWeek200ResponseDaysInnerNutritionSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetMealPlanWeek200ResponseDaysInnerNutritionSummary-objects as value to a dart map
  static Map<String, List<GetMealPlanWeek200ResponseDaysInnerNutritionSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetMealPlanWeek200ResponseDaysInnerNutritionSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetMealPlanWeek200ResponseDaysInnerNutritionSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'nutrients',
  };
}

