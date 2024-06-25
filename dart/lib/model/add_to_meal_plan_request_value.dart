//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AddToMealPlanRequestValue {
  /// Returns a new [AddToMealPlanRequestValue] instance.
  AddToMealPlanRequestValue({
    this.ingredients = const {},
  });

  Set<AddToMealPlanRequestValueIngredientsInner> ingredients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddToMealPlanRequestValue &&
    _deepEquality.equals(other.ingredients, ingredients);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ingredients.hashCode);

  @override
  String toString() => 'AddToMealPlanRequestValue[ingredients=$ingredients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ingredients'] = this.ingredients.toList(growable: false);
    return json;
  }

  /// Returns a new [AddToMealPlanRequestValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddToMealPlanRequestValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddToMealPlanRequestValue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddToMealPlanRequestValue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddToMealPlanRequestValue(
        ingredients: AddToMealPlanRequestValueIngredientsInner.listFromJson(json[r'ingredients']).toSet(),
      );
    }
    return null;
  }

  static List<AddToMealPlanRequestValue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddToMealPlanRequestValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddToMealPlanRequestValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddToMealPlanRequestValue> mapFromJson(dynamic json) {
    final map = <String, AddToMealPlanRequestValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddToMealPlanRequestValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddToMealPlanRequestValue-objects as value to a dart map
  static Map<String, List<AddToMealPlanRequestValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddToMealPlanRequestValue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddToMealPlanRequestValue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ingredients',
  };
}

