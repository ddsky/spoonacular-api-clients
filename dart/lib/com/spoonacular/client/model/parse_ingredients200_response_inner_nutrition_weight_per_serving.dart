//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ParseIngredients200ResponseInnerNutritionWeightPerServing {
  /// Returns a new [ParseIngredients200ResponseInnerNutritionWeightPerServing] instance.
  ParseIngredients200ResponseInnerNutritionWeightPerServing({
    required this.amount,
    required this.unit,
  });

  num amount;

  String unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ParseIngredients200ResponseInnerNutritionWeightPerServing &&
     other.amount == amount &&
     other.unit == unit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amount.hashCode) +
    (unit.hashCode);

  @override
  String toString() => 'ParseIngredients200ResponseInnerNutritionWeightPerServing[amount=$amount, unit=$unit]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'amount'] = amount;
      _json[r'unit'] = unit;
    return _json;
  }

  /// Returns a new [ParseIngredients200ResponseInnerNutritionWeightPerServing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ParseIngredients200ResponseInnerNutritionWeightPerServing? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ParseIngredients200ResponseInnerNutritionWeightPerServing[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ParseIngredients200ResponseInnerNutritionWeightPerServing[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ParseIngredients200ResponseInnerNutritionWeightPerServing(
        amount: json[r'amount'] == null
            ? null
            : num.parse(json[r'amount'].toString()),
        unit: mapValueOfType<String>(json, r'unit')!,
      );
    }
    return null;
  }

  static List<ParseIngredients200ResponseInnerNutritionWeightPerServing>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ParseIngredients200ResponseInnerNutritionWeightPerServing>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ParseIngredients200ResponseInnerNutritionWeightPerServing.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ParseIngredients200ResponseInnerNutritionWeightPerServing> mapFromJson(dynamic json) {
    final map = <String, ParseIngredients200ResponseInnerNutritionWeightPerServing>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ParseIngredients200ResponseInnerNutritionWeightPerServing.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ParseIngredients200ResponseInnerNutritionWeightPerServing-objects as value to a dart map
  static Map<String, List<ParseIngredients200ResponseInnerNutritionWeightPerServing>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ParseIngredients200ResponseInnerNutritionWeightPerServing>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ParseIngredients200ResponseInnerNutritionWeightPerServing.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'amount',
    'unit',
  };
}

