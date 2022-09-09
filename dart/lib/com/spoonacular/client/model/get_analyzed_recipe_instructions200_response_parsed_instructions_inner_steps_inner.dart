//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner {
  /// Returns a new [GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner] instance.
  GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner({
    required this.number,
    required this.step,
    this.ingredients = const {},
    this.equipment = const {},
  });

  num number;

  String step;

  Set<GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> ingredients;

  Set<GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> equipment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner &&
     other.number == number &&
     other.step == step &&
     other.ingredients == ingredients &&
     other.equipment == equipment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (number.hashCode) +
    (step.hashCode) +
    (ingredients.hashCode) +
    (equipment.hashCode);

  @override
  String toString() => 'GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner[number=$number, step=$step, ingredients=$ingredients, equipment=$equipment]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'number'] = number;
      _json[r'step'] = step;
      _json[r'ingredients'] = ingredients;
      _json[r'equipment'] = equipment;
    return _json;
  }

  /// Returns a new [GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner(
        number: json[r'number'] == null
            ? null
            : num.parse(json[r'number'].toString()),
        step: mapValueOfType<String>(json, r'step')!,
        ingredients: GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.listFromJson(json[r'ingredients']) ?? const {},
        equipment: GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.listFromJson(json[r'equipment']) ?? const {},
      );
    }
    return null;
  }

  static List<GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner> mapFromJson(dynamic json) {
    final map = <String, GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner-objects as value to a dart map
  static Map<String, List<GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
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

