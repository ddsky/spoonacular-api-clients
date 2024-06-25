//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ParseIngredients200ResponseInnerNutrition {
  /// Returns a new [ParseIngredients200ResponseInnerNutrition] instance.
  ParseIngredients200ResponseInnerNutrition({
    this.nutrients = const {},
    this.properties = const {},
    this.flavonoids = const {},
    required this.caloricBreakdown,
    required this.weightPerServing,
  });

  Set<ParseIngredients200ResponseInnerNutritionNutrientsInner> nutrients;

  Set<ParseIngredients200ResponseInnerNutritionPropertiesInner> properties;

  Set<ParseIngredients200ResponseInnerNutritionPropertiesInner> flavonoids;

  ParseIngredients200ResponseInnerNutritionCaloricBreakdown caloricBreakdown;

  ParseIngredients200ResponseInnerNutritionWeightPerServing weightPerServing;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ParseIngredients200ResponseInnerNutrition &&
    _deepEquality.equals(other.nutrients, nutrients) &&
    _deepEquality.equals(other.properties, properties) &&
    _deepEquality.equals(other.flavonoids, flavonoids) &&
    other.caloricBreakdown == caloricBreakdown &&
    other.weightPerServing == weightPerServing;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nutrients.hashCode) +
    (properties.hashCode) +
    (flavonoids.hashCode) +
    (caloricBreakdown.hashCode) +
    (weightPerServing.hashCode);

  @override
  String toString() => 'ParseIngredients200ResponseInnerNutrition[nutrients=$nutrients, properties=$properties, flavonoids=$flavonoids, caloricBreakdown=$caloricBreakdown, weightPerServing=$weightPerServing]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'nutrients'] = this.nutrients.toList(growable: false);
      json[r'properties'] = this.properties.toList(growable: false);
      json[r'flavonoids'] = this.flavonoids.toList(growable: false);
      json[r'caloricBreakdown'] = this.caloricBreakdown;
      json[r'weightPerServing'] = this.weightPerServing;
    return json;
  }

  /// Returns a new [ParseIngredients200ResponseInnerNutrition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ParseIngredients200ResponseInnerNutrition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ParseIngredients200ResponseInnerNutrition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ParseIngredients200ResponseInnerNutrition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ParseIngredients200ResponseInnerNutrition(
        nutrients: ParseIngredients200ResponseInnerNutritionNutrientsInner.listFromJson(json[r'nutrients']).toSet(),
        properties: ParseIngredients200ResponseInnerNutritionPropertiesInner.listFromJson(json[r'properties']).toSet(),
        flavonoids: ParseIngredients200ResponseInnerNutritionPropertiesInner.listFromJson(json[r'flavonoids']).toSet(),
        caloricBreakdown: ParseIngredients200ResponseInnerNutritionCaloricBreakdown.fromJson(json[r'caloricBreakdown'])!,
        weightPerServing: ParseIngredients200ResponseInnerNutritionWeightPerServing.fromJson(json[r'weightPerServing'])!,
      );
    }
    return null;
  }

  static List<ParseIngredients200ResponseInnerNutrition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ParseIngredients200ResponseInnerNutrition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ParseIngredients200ResponseInnerNutrition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ParseIngredients200ResponseInnerNutrition> mapFromJson(dynamic json) {
    final map = <String, ParseIngredients200ResponseInnerNutrition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ParseIngredients200ResponseInnerNutrition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ParseIngredients200ResponseInnerNutrition-objects as value to a dart map
  static Map<String, List<ParseIngredients200ResponseInnerNutrition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ParseIngredients200ResponseInnerNutrition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ParseIngredients200ResponseInnerNutrition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'nutrients',
    'properties',
    'flavonoids',
    'caloricBreakdown',
    'weightPerServing',
  };
}

