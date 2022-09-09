//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetIngredientInformation200ResponseNutrition {
  /// Returns a new [GetIngredientInformation200ResponseNutrition] instance.
  GetIngredientInformation200ResponseNutrition({
    this.nutrients = const {},
    this.properties = const {},
    required this.caloricBreakdown,
    required this.weightPerServing,
  });

  Set<ParseIngredients200ResponseInnerNutritionNutrientsInner> nutrients;

  Set<ParseIngredients200ResponseInnerNutritionPropertiesInner> properties;

  ParseIngredients200ResponseInnerNutritionCaloricBreakdown caloricBreakdown;

  ParseIngredients200ResponseInnerNutritionWeightPerServing weightPerServing;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetIngredientInformation200ResponseNutrition &&
     other.nutrients == nutrients &&
     other.properties == properties &&
     other.caloricBreakdown == caloricBreakdown &&
     other.weightPerServing == weightPerServing;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nutrients.hashCode) +
    (properties.hashCode) +
    (caloricBreakdown.hashCode) +
    (weightPerServing.hashCode);

  @override
  String toString() => 'GetIngredientInformation200ResponseNutrition[nutrients=$nutrients, properties=$properties, caloricBreakdown=$caloricBreakdown, weightPerServing=$weightPerServing]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'nutrients'] = nutrients;
      _json[r'properties'] = properties;
      _json[r'caloricBreakdown'] = caloricBreakdown;
      _json[r'weightPerServing'] = weightPerServing;
    return _json;
  }

  /// Returns a new [GetIngredientInformation200ResponseNutrition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetIngredientInformation200ResponseNutrition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetIngredientInformation200ResponseNutrition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetIngredientInformation200ResponseNutrition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetIngredientInformation200ResponseNutrition(
        nutrients: ParseIngredients200ResponseInnerNutritionNutrientsInner.listFromJson(json[r'nutrients'])!,
        properties: ParseIngredients200ResponseInnerNutritionPropertiesInner.listFromJson(json[r'properties'])!,
        caloricBreakdown: ParseIngredients200ResponseInnerNutritionCaloricBreakdown.fromJson(json[r'caloricBreakdown'])!,
        weightPerServing: ParseIngredients200ResponseInnerNutritionWeightPerServing.fromJson(json[r'weightPerServing'])!,
      );
    }
    return null;
  }

  static List<GetIngredientInformation200ResponseNutrition>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetIngredientInformation200ResponseNutrition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetIngredientInformation200ResponseNutrition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetIngredientInformation200ResponseNutrition> mapFromJson(dynamic json) {
    final map = <String, GetIngredientInformation200ResponseNutrition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetIngredientInformation200ResponseNutrition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetIngredientInformation200ResponseNutrition-objects as value to a dart map
  static Map<String, List<GetIngredientInformation200ResponseNutrition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetIngredientInformation200ResponseNutrition>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetIngredientInformation200ResponseNutrition.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'nutrients',
    'properties',
    'caloricBreakdown',
    'weightPerServing',
  };
}

