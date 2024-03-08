//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ParseIngredients200ResponseInnerNutritionNutrientsInner {
  /// Returns a new [ParseIngredients200ResponseInnerNutritionNutrientsInner] instance.
  ParseIngredients200ResponseInnerNutritionNutrientsInner({
    required this.name,
    required this.amount,
    required this.unit,
    required this.percentOfDailyNeeds,
  });

  String name;

  num amount;

  String unit;

  num percentOfDailyNeeds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ParseIngredients200ResponseInnerNutritionNutrientsInner &&
    other.name == name &&
    other.amount == amount &&
    other.unit == unit &&
    other.percentOfDailyNeeds == percentOfDailyNeeds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (amount.hashCode) +
    (unit.hashCode) +
    (percentOfDailyNeeds.hashCode);

  @override
  String toString() => 'ParseIngredients200ResponseInnerNutritionNutrientsInner[name=$name, amount=$amount, unit=$unit, percentOfDailyNeeds=$percentOfDailyNeeds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'amount'] = this.amount;
      json[r'unit'] = this.unit;
      json[r'percentOfDailyNeeds'] = this.percentOfDailyNeeds;
    return json;
  }

  /// Returns a new [ParseIngredients200ResponseInnerNutritionNutrientsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ParseIngredients200ResponseInnerNutritionNutrientsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ParseIngredients200ResponseInnerNutritionNutrientsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ParseIngredients200ResponseInnerNutritionNutrientsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ParseIngredients200ResponseInnerNutritionNutrientsInner(
        name: mapValueOfType<String>(json, r'name')!,
        amount: num.parse('${json[r'amount']}'),
        unit: mapValueOfType<String>(json, r'unit')!,
        percentOfDailyNeeds: num.parse('${json[r'percentOfDailyNeeds']}'),
      );
    }
    return null;
  }

  static List<ParseIngredients200ResponseInnerNutritionNutrientsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ParseIngredients200ResponseInnerNutritionNutrientsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ParseIngredients200ResponseInnerNutritionNutrientsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ParseIngredients200ResponseInnerNutritionNutrientsInner> mapFromJson(dynamic json) {
    final map = <String, ParseIngredients200ResponseInnerNutritionNutrientsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ParseIngredients200ResponseInnerNutritionNutrientsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ParseIngredients200ResponseInnerNutritionNutrientsInner-objects as value to a dart map
  static Map<String, List<ParseIngredients200ResponseInnerNutritionNutrientsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ParseIngredients200ResponseInnerNutritionNutrientsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ParseIngredients200ResponseInnerNutritionNutrientsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'amount',
    'unit',
    'percentOfDailyNeeds',
  };
}

