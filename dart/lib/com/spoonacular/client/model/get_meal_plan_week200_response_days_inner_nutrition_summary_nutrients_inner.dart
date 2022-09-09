//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner {
  /// Returns a new [GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner] instance.
  GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner({
    required this.name,
    required this.amount,
    required this.unit,
    required this.percentDailyNeeds,
  });

  String name;

  num amount;

  String unit;

  num percentDailyNeeds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner &&
     other.name == name &&
     other.amount == amount &&
     other.unit == unit &&
     other.percentDailyNeeds == percentDailyNeeds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (amount.hashCode) +
    (unit.hashCode) +
    (percentDailyNeeds.hashCode);

  @override
  String toString() => 'GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner[name=$name, amount=$amount, unit=$unit, percentDailyNeeds=$percentDailyNeeds]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'name'] = name;
      _json[r'amount'] = amount;
      _json[r'unit'] = unit;
      _json[r'percentDailyNeeds'] = percentDailyNeeds;
    return _json;
  }

  /// Returns a new [GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner(
        name: mapValueOfType<String>(json, r'name')!,
        amount: json[r'amount'] == null
            ? null
            : num.parse(json[r'amount'].toString()),
        unit: mapValueOfType<String>(json, r'unit')!,
        percentDailyNeeds: json[r'percentDailyNeeds'] == null
            ? null
            : num.parse(json[r'percentDailyNeeds'].toString()),
      );
    }
    return null;
  }

  static List<GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner> mapFromJson(dynamic json) {
    final map = <String, GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner-objects as value to a dart map
  static Map<String, List<GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'amount',
    'unit',
    'percentDailyNeeds',
  };
}

