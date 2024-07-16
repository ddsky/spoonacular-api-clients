//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IngredientInformationNutrition {
  /// Returns a new [IngredientInformationNutrition] instance.
  IngredientInformationNutrition({
    this.nutrients = const {},
    this.properties = const {},
    required this.caloricBreakdown,
    required this.weightPerServing,
  });

  Set<SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner> nutrients;

  Set<IngredientInformationNutritionPropertiesInner> properties;

  SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown caloricBreakdown;

  GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal weightPerServing;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IngredientInformationNutrition &&
    _deepEquality.equals(other.nutrients, nutrients) &&
    _deepEquality.equals(other.properties, properties) &&
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
  String toString() => 'IngredientInformationNutrition[nutrients=$nutrients, properties=$properties, caloricBreakdown=$caloricBreakdown, weightPerServing=$weightPerServing]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'nutrients'] = this.nutrients.toList(growable: false);
      json[r'properties'] = this.properties.toList(growable: false);
      json[r'caloricBreakdown'] = this.caloricBreakdown;
      json[r'weightPerServing'] = this.weightPerServing;
    return json;
  }

  /// Returns a new [IngredientInformationNutrition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IngredientInformationNutrition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IngredientInformationNutrition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IngredientInformationNutrition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IngredientInformationNutrition(
        nutrients: SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner.listFromJson(json[r'nutrients']).toSet(),
        properties: IngredientInformationNutritionPropertiesInner.listFromJson(json[r'properties']).toSet(),
        caloricBreakdown: SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown.fromJson(json[r'caloricBreakdown'])!,
        weightPerServing: GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.fromJson(json[r'weightPerServing'])!,
      );
    }
    return null;
  }

  static List<IngredientInformationNutrition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IngredientInformationNutrition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IngredientInformationNutrition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IngredientInformationNutrition> mapFromJson(dynamic json) {
    final map = <String, IngredientInformationNutrition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IngredientInformationNutrition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IngredientInformationNutrition-objects as value to a dart map
  static Map<String, List<IngredientInformationNutrition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IngredientInformationNutrition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IngredientInformationNutrition.listFromJson(entry.value, growable: growable,);
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

