//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ParseIngredients200ResponseInnerNutritionCaloricBreakdown {
  /// Returns a new [ParseIngredients200ResponseInnerNutritionCaloricBreakdown] instance.
  ParseIngredients200ResponseInnerNutritionCaloricBreakdown({
    required this.percentProtein,
    required this.percentFat,
    required this.percentCarbs,
  });

  num percentProtein;

  num percentFat;

  num percentCarbs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ParseIngredients200ResponseInnerNutritionCaloricBreakdown &&
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
  String toString() => 'ParseIngredients200ResponseInnerNutritionCaloricBreakdown[percentProtein=$percentProtein, percentFat=$percentFat, percentCarbs=$percentCarbs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'percentProtein'] = this.percentProtein;
      json[r'percentFat'] = this.percentFat;
      json[r'percentCarbs'] = this.percentCarbs;
    return json;
  }

  /// Returns a new [ParseIngredients200ResponseInnerNutritionCaloricBreakdown] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ParseIngredients200ResponseInnerNutritionCaloricBreakdown? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ParseIngredients200ResponseInnerNutritionCaloricBreakdown[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ParseIngredients200ResponseInnerNutritionCaloricBreakdown[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ParseIngredients200ResponseInnerNutritionCaloricBreakdown(
        percentProtein: num.parse('${json[r'percentProtein']}'),
        percentFat: num.parse('${json[r'percentFat']}'),
        percentCarbs: num.parse('${json[r'percentCarbs']}'),
      );
    }
    return null;
  }

  static List<ParseIngredients200ResponseInnerNutritionCaloricBreakdown> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ParseIngredients200ResponseInnerNutritionCaloricBreakdown>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ParseIngredients200ResponseInnerNutritionCaloricBreakdown.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ParseIngredients200ResponseInnerNutritionCaloricBreakdown> mapFromJson(dynamic json) {
    final map = <String, ParseIngredients200ResponseInnerNutritionCaloricBreakdown>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ParseIngredients200ResponseInnerNutritionCaloricBreakdown.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ParseIngredients200ResponseInnerNutritionCaloricBreakdown-objects as value to a dart map
  static Map<String, List<ParseIngredients200ResponseInnerNutritionCaloricBreakdown>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ParseIngredients200ResponseInnerNutritionCaloricBreakdown>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ParseIngredients200ResponseInnerNutritionCaloricBreakdown.listFromJson(entry.value, growable: growable,);
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

