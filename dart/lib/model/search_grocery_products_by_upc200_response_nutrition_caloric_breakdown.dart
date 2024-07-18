//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown {
  /// Returns a new [SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown] instance.
  SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown({
    required this.percentProtein,
    required this.percentFat,
    required this.percentCarbs,
  });

  num percentProtein;

  num percentFat;

  num percentCarbs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown &&
    other.percentProtein == percentProtein &&
    other.percentFat == percentFat &&
    other.percentCarbs == percentCarbs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (percentProtein.hashCode) +
    (percentFat.hashCode) +
    (percentCarbs.hashCode);

  @override
  String toString() => 'SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown[percentProtein=$percentProtein, percentFat=$percentFat, percentCarbs=$percentCarbs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'percentProtein'] = this.percentProtein;
      json[r'percentFat'] = this.percentFat;
      json[r'percentCarbs'] = this.percentCarbs;
    return json;
  }

  /// Returns a new [SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown(
        percentProtein: num.parse('${json[r'percentProtein']}'),
        percentFat: num.parse('${json[r'percentFat']}'),
        percentCarbs: num.parse('${json[r'percentCarbs']}'),
      );
    }
    return null;
  }

  static List<SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown> mapFromJson(dynamic json) {
    final map = <String, SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown-objects as value to a dart map
  static Map<String, List<SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'percentProtein',
    'percentFat',
    'percentCarbs',
  };
}

