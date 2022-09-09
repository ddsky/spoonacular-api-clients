//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures {
  /// Returns a new [GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures] instance.
  GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures({
    required this.metric,
    required this.us,
  });

  GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric metric;

  GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric us;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures &&
     other.metric == metric &&
     other.us == us;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (metric.hashCode) +
    (us.hashCode);

  @override
  String toString() => 'GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures[metric=$metric, us=$us]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'metric'] = metric;
      _json[r'us'] = us;
    return _json;
  }

  /// Returns a new [GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures(
        metric: GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric.fromJson(json[r'metric'])!,
        us: GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric.fromJson(json[r'us'])!,
      );
    }
    return null;
  }

  static List<GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures> mapFromJson(dynamic json) {
    final map = <String, GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures-objects as value to a dart map
  static Map<String, List<GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'metric',
    'us',
  };
}

