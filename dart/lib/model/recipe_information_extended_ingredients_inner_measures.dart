//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RecipeInformationExtendedIngredientsInnerMeasures {
  /// Returns a new [RecipeInformationExtendedIngredientsInnerMeasures] instance.
  RecipeInformationExtendedIngredientsInnerMeasures({
    required this.metric,
    required this.us,
  });

  RecipeInformationExtendedIngredientsInnerMeasuresMetric metric;

  RecipeInformationExtendedIngredientsInnerMeasuresMetric us;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RecipeInformationExtendedIngredientsInnerMeasures &&
    other.metric == metric &&
    other.us == us;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (metric.hashCode) +
    (us.hashCode);

  @override
  String toString() => 'RecipeInformationExtendedIngredientsInnerMeasures[metric=$metric, us=$us]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'metric'] = this.metric;
      json[r'us'] = this.us;
    return json;
  }

  /// Returns a new [RecipeInformationExtendedIngredientsInnerMeasures] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RecipeInformationExtendedIngredientsInnerMeasures? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RecipeInformationExtendedIngredientsInnerMeasures[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RecipeInformationExtendedIngredientsInnerMeasures[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RecipeInformationExtendedIngredientsInnerMeasures(
        metric: RecipeInformationExtendedIngredientsInnerMeasuresMetric.fromJson(json[r'metric'])!,
        us: RecipeInformationExtendedIngredientsInnerMeasuresMetric.fromJson(json[r'us'])!,
      );
    }
    return null;
  }

  static List<RecipeInformationExtendedIngredientsInnerMeasures> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RecipeInformationExtendedIngredientsInnerMeasures>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecipeInformationExtendedIngredientsInnerMeasures.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RecipeInformationExtendedIngredientsInnerMeasures> mapFromJson(dynamic json) {
    final map = <String, RecipeInformationExtendedIngredientsInnerMeasures>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecipeInformationExtendedIngredientsInnerMeasures.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RecipeInformationExtendedIngredientsInnerMeasures-objects as value to a dart map
  static Map<String, List<RecipeInformationExtendedIngredientsInnerMeasures>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RecipeInformationExtendedIngredientsInnerMeasures>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RecipeInformationExtendedIngredientsInnerMeasures.listFromJson(entry.value, growable: growable,);
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

