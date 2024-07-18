//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchGroceryProductsByUPC200ResponseNutrition {
  /// Returns a new [SearchGroceryProductsByUPC200ResponseNutrition] instance.
  SearchGroceryProductsByUPC200ResponseNutrition({
    this.nutrients = const {},
    required this.caloricBreakdown,
  });

  Set<SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner> nutrients;

  SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown caloricBreakdown;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchGroceryProductsByUPC200ResponseNutrition &&
    _deepEquality.equals(other.nutrients, nutrients) &&
    other.caloricBreakdown == caloricBreakdown;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nutrients.hashCode) +
    (caloricBreakdown.hashCode);

  @override
  String toString() => 'SearchGroceryProductsByUPC200ResponseNutrition[nutrients=$nutrients, caloricBreakdown=$caloricBreakdown]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'nutrients'] = this.nutrients.toList(growable: false);
      json[r'caloricBreakdown'] = this.caloricBreakdown;
    return json;
  }

  /// Returns a new [SearchGroceryProductsByUPC200ResponseNutrition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchGroceryProductsByUPC200ResponseNutrition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchGroceryProductsByUPC200ResponseNutrition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchGroceryProductsByUPC200ResponseNutrition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchGroceryProductsByUPC200ResponseNutrition(
        nutrients: SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner.listFromJson(json[r'nutrients']).toSet(),
        caloricBreakdown: SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown.fromJson(json[r'caloricBreakdown'])!,
      );
    }
    return null;
  }

  static List<SearchGroceryProductsByUPC200ResponseNutrition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchGroceryProductsByUPC200ResponseNutrition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchGroceryProductsByUPC200ResponseNutrition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchGroceryProductsByUPC200ResponseNutrition> mapFromJson(dynamic json) {
    final map = <String, SearchGroceryProductsByUPC200ResponseNutrition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchGroceryProductsByUPC200ResponseNutrition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchGroceryProductsByUPC200ResponseNutrition-objects as value to a dart map
  static Map<String, List<SearchGroceryProductsByUPC200ResponseNutrition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchGroceryProductsByUPC200ResponseNutrition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchGroceryProductsByUPC200ResponseNutrition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'nutrients',
    'caloricBreakdown',
  };
}

