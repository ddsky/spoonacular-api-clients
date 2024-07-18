//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IngredientInformationNutritionPropertiesInner {
  /// Returns a new [IngredientInformationNutritionPropertiesInner] instance.
  IngredientInformationNutritionPropertiesInner({
    required this.name,
    required this.amount,
    required this.unit,
  });

  String name;

  num amount;

  String unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IngredientInformationNutritionPropertiesInner &&
    other.name == name &&
    other.amount == amount &&
    other.unit == unit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (amount.hashCode) +
    (unit.hashCode);

  @override
  String toString() => 'IngredientInformationNutritionPropertiesInner[name=$name, amount=$amount, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'amount'] = this.amount;
      json[r'unit'] = this.unit;
    return json;
  }

  /// Returns a new [IngredientInformationNutritionPropertiesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IngredientInformationNutritionPropertiesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IngredientInformationNutritionPropertiesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IngredientInformationNutritionPropertiesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IngredientInformationNutritionPropertiesInner(
        name: mapValueOfType<String>(json, r'name')!,
        amount: num.parse('${json[r'amount']}'),
        unit: mapValueOfType<String>(json, r'unit')!,
      );
    }
    return null;
  }

  static List<IngredientInformationNutritionPropertiesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IngredientInformationNutritionPropertiesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IngredientInformationNutritionPropertiesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IngredientInformationNutritionPropertiesInner> mapFromJson(dynamic json) {
    final map = <String, IngredientInformationNutritionPropertiesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IngredientInformationNutritionPropertiesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IngredientInformationNutritionPropertiesInner-objects as value to a dart map
  static Map<String, List<IngredientInformationNutritionPropertiesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IngredientInformationNutritionPropertiesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IngredientInformationNutritionPropertiesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'amount',
    'unit',
  };
}

