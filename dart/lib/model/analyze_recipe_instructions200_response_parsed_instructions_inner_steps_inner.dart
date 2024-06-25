//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner {
  /// Returns a new [AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner] instance.
  AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner({
    required this.number,
    required this.step,
    this.ingredients = const {},
    this.equipment = const {},
  });

  num number;

  String step;

  Set<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> ingredients;

  Set<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> equipment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner &&
    other.number == number &&
    other.step == step &&
    _deepEquality.equals(other.ingredients, ingredients) &&
    _deepEquality.equals(other.equipment, equipment);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (number.hashCode) +
    (step.hashCode) +
    (ingredients.hashCode) +
    (equipment.hashCode);

  @override
  String toString() => 'AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner[number=$number, step=$step, ingredients=$ingredients, equipment=$equipment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'number'] = this.number;
      json[r'step'] = this.step;
      json[r'ingredients'] = this.ingredients.toList(growable: false);
      json[r'equipment'] = this.equipment.toList(growable: false);
    return json;
  }

  /// Returns a new [AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner(
        number: num.parse('${json[r'number']}'),
        step: mapValueOfType<String>(json, r'step')!,
        ingredients: AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.listFromJson(json[r'ingredients']).toSet(),
        equipment: AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.listFromJson(json[r'equipment']).toSet(),
      );
    }
    return null;
  }

  static List<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner> mapFromJson(dynamic json) {
    final map = <String, AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner-objects as value to a dart map
  static Map<String, List<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'number',
    'step',
  };
}

