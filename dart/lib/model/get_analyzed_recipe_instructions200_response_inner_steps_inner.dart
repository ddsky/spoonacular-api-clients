//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetAnalyzedRecipeInstructions200ResponseInnerStepsInner {
  /// Returns a new [GetAnalyzedRecipeInstructions200ResponseInnerStepsInner] instance.
  GetAnalyzedRecipeInstructions200ResponseInnerStepsInner({
    required this.number,
    required this.step,
    this.ingredients = const {},
    this.equipment = const {},
  });

  num number;

  String step;

  Set<GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner> ingredients;

  Set<GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner> equipment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetAnalyzedRecipeInstructions200ResponseInnerStepsInner &&
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
  String toString() => 'GetAnalyzedRecipeInstructions200ResponseInnerStepsInner[number=$number, step=$step, ingredients=$ingredients, equipment=$equipment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'number'] = this.number;
      json[r'step'] = this.step;
      json[r'ingredients'] = this.ingredients.toList(growable: false);
      json[r'equipment'] = this.equipment.toList(growable: false);
    return json;
  }

  /// Returns a new [GetAnalyzedRecipeInstructions200ResponseInnerStepsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetAnalyzedRecipeInstructions200ResponseInnerStepsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetAnalyzedRecipeInstructions200ResponseInnerStepsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetAnalyzedRecipeInstructions200ResponseInnerStepsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetAnalyzedRecipeInstructions200ResponseInnerStepsInner(
        number: num.parse('${json[r'number']}'),
        step: mapValueOfType<String>(json, r'step')!,
        ingredients: GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.listFromJson(json[r'ingredients']).toSet(),
        equipment: GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.listFromJson(json[r'equipment']).toSet(),
      );
    }
    return null;
  }

  static List<GetAnalyzedRecipeInstructions200ResponseInnerStepsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetAnalyzedRecipeInstructions200ResponseInnerStepsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetAnalyzedRecipeInstructions200ResponseInnerStepsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetAnalyzedRecipeInstructions200ResponseInnerStepsInner> mapFromJson(dynamic json) {
    final map = <String, GetAnalyzedRecipeInstructions200ResponseInnerStepsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetAnalyzedRecipeInstructions200ResponseInnerStepsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetAnalyzedRecipeInstructions200ResponseInnerStepsInner-objects as value to a dart map
  static Map<String, List<GetAnalyzedRecipeInstructions200ResponseInnerStepsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetAnalyzedRecipeInstructions200ResponseInnerStepsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetAnalyzedRecipeInstructions200ResponseInnerStepsInner.listFromJson(entry.value, growable: growable,);
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

