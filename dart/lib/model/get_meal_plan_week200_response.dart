//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetMealPlanWeek200Response {
  /// Returns a new [GetMealPlanWeek200Response] instance.
  GetMealPlanWeek200Response({
    this.days = const {},
  });

  Set<GetMealPlanWeek200ResponseDaysInner> days;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetMealPlanWeek200Response &&
    _deepEquality.equals(other.days, days);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (days.hashCode);

  @override
  String toString() => 'GetMealPlanWeek200Response[days=$days]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'days'] = this.days.toList(growable: false);
    return json;
  }

  /// Returns a new [GetMealPlanWeek200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetMealPlanWeek200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetMealPlanWeek200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetMealPlanWeek200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetMealPlanWeek200Response(
        days: GetMealPlanWeek200ResponseDaysInner.listFromJson(json[r'days']).toSet(),
      );
    }
    return null;
  }

  static List<GetMealPlanWeek200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetMealPlanWeek200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetMealPlanWeek200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetMealPlanWeek200Response> mapFromJson(dynamic json) {
    final map = <String, GetMealPlanWeek200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetMealPlanWeek200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetMealPlanWeek200Response-objects as value to a dart map
  static Map<String, List<GetMealPlanWeek200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetMealPlanWeek200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetMealPlanWeek200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'days',
  };
}

