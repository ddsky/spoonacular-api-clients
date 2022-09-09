//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetMealPlanWeek200ResponseDaysInner {
  /// Returns a new [GetMealPlanWeek200ResponseDaysInner] instance.
  GetMealPlanWeek200ResponseDaysInner({
    this.nutritionSummary,
    this.nutritionSummaryBreakfast,
    this.nutritionSummaryLunch,
    this.nutritionSummaryDinner,
    required this.date,
    required this.day,
    this.items = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetMealPlanWeek200ResponseDaysInnerNutritionSummary? nutritionSummary;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetMealPlanWeek200ResponseDaysInnerNutritionSummary? nutritionSummaryBreakfast;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetMealPlanWeek200ResponseDaysInnerNutritionSummary? nutritionSummaryLunch;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetMealPlanWeek200ResponseDaysInnerNutritionSummary? nutritionSummaryDinner;

  num date;

  String day;

  Set<GetMealPlanWeek200ResponseDaysInnerItemsInner> items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetMealPlanWeek200ResponseDaysInner &&
     other.nutritionSummary == nutritionSummary &&
     other.nutritionSummaryBreakfast == nutritionSummaryBreakfast &&
     other.nutritionSummaryLunch == nutritionSummaryLunch &&
     other.nutritionSummaryDinner == nutritionSummaryDinner &&
     other.date == date &&
     other.day == day &&
     other.items == items;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nutritionSummary == null ? 0 : nutritionSummary!.hashCode) +
    (nutritionSummaryBreakfast == null ? 0 : nutritionSummaryBreakfast!.hashCode) +
    (nutritionSummaryLunch == null ? 0 : nutritionSummaryLunch!.hashCode) +
    (nutritionSummaryDinner == null ? 0 : nutritionSummaryDinner!.hashCode) +
    (date.hashCode) +
    (day.hashCode) +
    (items.hashCode);

  @override
  String toString() => 'GetMealPlanWeek200ResponseDaysInner[nutritionSummary=$nutritionSummary, nutritionSummaryBreakfast=$nutritionSummaryBreakfast, nutritionSummaryLunch=$nutritionSummaryLunch, nutritionSummaryDinner=$nutritionSummaryDinner, date=$date, day=$day, items=$items]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (nutritionSummary != null) {
      _json[r'nutritionSummary'] = nutritionSummary;
    } else {
      _json[r'nutritionSummary'] = null;
    }
    if (nutritionSummaryBreakfast != null) {
      _json[r'nutritionSummaryBreakfast'] = nutritionSummaryBreakfast;
    } else {
      _json[r'nutritionSummaryBreakfast'] = null;
    }
    if (nutritionSummaryLunch != null) {
      _json[r'nutritionSummaryLunch'] = nutritionSummaryLunch;
    } else {
      _json[r'nutritionSummaryLunch'] = null;
    }
    if (nutritionSummaryDinner != null) {
      _json[r'nutritionSummaryDinner'] = nutritionSummaryDinner;
    } else {
      _json[r'nutritionSummaryDinner'] = null;
    }
      _json[r'date'] = date;
      _json[r'day'] = day;
      _json[r'items'] = items;
    return _json;
  }

  /// Returns a new [GetMealPlanWeek200ResponseDaysInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetMealPlanWeek200ResponseDaysInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetMealPlanWeek200ResponseDaysInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetMealPlanWeek200ResponseDaysInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetMealPlanWeek200ResponseDaysInner(
        nutritionSummary: GetMealPlanWeek200ResponseDaysInnerNutritionSummary.fromJson(json[r'nutritionSummary']),
        nutritionSummaryBreakfast: GetMealPlanWeek200ResponseDaysInnerNutritionSummary.fromJson(json[r'nutritionSummaryBreakfast']),
        nutritionSummaryLunch: GetMealPlanWeek200ResponseDaysInnerNutritionSummary.fromJson(json[r'nutritionSummaryLunch']),
        nutritionSummaryDinner: GetMealPlanWeek200ResponseDaysInnerNutritionSummary.fromJson(json[r'nutritionSummaryDinner']),
        date: json[r'date'] == null
            ? null
            : num.parse(json[r'date'].toString()),
        day: mapValueOfType<String>(json, r'day')!,
        items: GetMealPlanWeek200ResponseDaysInnerItemsInner.listFromJson(json[r'items']) ?? const {},
      );
    }
    return null;
  }

  static List<GetMealPlanWeek200ResponseDaysInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetMealPlanWeek200ResponseDaysInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetMealPlanWeek200ResponseDaysInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetMealPlanWeek200ResponseDaysInner> mapFromJson(dynamic json) {
    final map = <String, GetMealPlanWeek200ResponseDaysInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetMealPlanWeek200ResponseDaysInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetMealPlanWeek200ResponseDaysInner-objects as value to a dart map
  static Map<String, List<GetMealPlanWeek200ResponseDaysInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetMealPlanWeek200ResponseDaysInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetMealPlanWeek200ResponseDaysInner.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'date',
    'day',
  };
}

