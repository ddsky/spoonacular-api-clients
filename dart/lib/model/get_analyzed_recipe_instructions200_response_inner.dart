//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetAnalyzedRecipeInstructions200ResponseInner {
  /// Returns a new [GetAnalyzedRecipeInstructions200ResponseInner] instance.
  GetAnalyzedRecipeInstructions200ResponseInner({
    required this.name,
    this.steps = const {},
  });

  String name;

  Set<GetAnalyzedRecipeInstructions200ResponseInnerStepsInner> steps;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetAnalyzedRecipeInstructions200ResponseInner &&
    other.name == name &&
    _deepEquality.equals(other.steps, steps);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (steps.hashCode);

  @override
  String toString() => 'GetAnalyzedRecipeInstructions200ResponseInner[name=$name, steps=$steps]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'steps'] = this.steps.toList(growable: false);
    return json;
  }

  /// Returns a new [GetAnalyzedRecipeInstructions200ResponseInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetAnalyzedRecipeInstructions200ResponseInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetAnalyzedRecipeInstructions200ResponseInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetAnalyzedRecipeInstructions200ResponseInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetAnalyzedRecipeInstructions200ResponseInner(
        name: mapValueOfType<String>(json, r'name')!,
        steps: GetAnalyzedRecipeInstructions200ResponseInnerStepsInner.listFromJson(json[r'steps']).toSet(),
      );
    }
    return null;
  }

  static List<GetAnalyzedRecipeInstructions200ResponseInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetAnalyzedRecipeInstructions200ResponseInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetAnalyzedRecipeInstructions200ResponseInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetAnalyzedRecipeInstructions200ResponseInner> mapFromJson(dynamic json) {
    final map = <String, GetAnalyzedRecipeInstructions200ResponseInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetAnalyzedRecipeInstructions200ResponseInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetAnalyzedRecipeInstructions200ResponseInner-objects as value to a dart map
  static Map<String, List<GetAnalyzedRecipeInstructions200ResponseInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetAnalyzedRecipeInstructions200ResponseInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetAnalyzedRecipeInstructions200ResponseInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

