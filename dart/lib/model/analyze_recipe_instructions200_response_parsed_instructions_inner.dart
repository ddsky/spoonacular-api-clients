//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnalyzeRecipeInstructions200ResponseParsedInstructionsInner {
  /// Returns a new [AnalyzeRecipeInstructions200ResponseParsedInstructionsInner] instance.
  AnalyzeRecipeInstructions200ResponseParsedInstructionsInner({
    required this.name,
    this.steps = const {},
  });

  String name;

  Set<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner> steps;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyzeRecipeInstructions200ResponseParsedInstructionsInner &&
    other.name == name &&
    _deepEquality.equals(other.steps, steps);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (steps.hashCode);

  @override
  String toString() => 'AnalyzeRecipeInstructions200ResponseParsedInstructionsInner[name=$name, steps=$steps]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'steps'] = this.steps.toList(growable: false);
    return json;
  }

  /// Returns a new [AnalyzeRecipeInstructions200ResponseParsedInstructionsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnalyzeRecipeInstructions200ResponseParsedInstructionsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnalyzeRecipeInstructions200ResponseParsedInstructionsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnalyzeRecipeInstructions200ResponseParsedInstructionsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnalyzeRecipeInstructions200ResponseParsedInstructionsInner(
        name: mapValueOfType<String>(json, r'name')!,
        steps: AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.listFromJson(json[r'steps']).toSet(),
      );
    }
    return null;
  }

  static List<AnalyzeRecipeInstructions200ResponseParsedInstructionsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyzeRecipeInstructions200ResponseParsedInstructionsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyzeRecipeInstructions200ResponseParsedInstructionsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnalyzeRecipeInstructions200ResponseParsedInstructionsInner> mapFromJson(dynamic json) {
    final map = <String, AnalyzeRecipeInstructions200ResponseParsedInstructionsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnalyzeRecipeInstructions200ResponseParsedInstructionsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnalyzeRecipeInstructions200ResponseParsedInstructionsInner-objects as value to a dart map
  static Map<String, List<AnalyzeRecipeInstructions200ResponseParsedInstructionsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnalyzeRecipeInstructions200ResponseParsedInstructionsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnalyzeRecipeInstructions200ResponseParsedInstructionsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

