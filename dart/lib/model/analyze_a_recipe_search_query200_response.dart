//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnalyzeARecipeSearchQuery200Response {
  /// Returns a new [AnalyzeARecipeSearchQuery200Response] instance.
  AnalyzeARecipeSearchQuery200Response({
    this.dishes = const {},
    this.ingredients = const {},
    this.cuisines = const [],
    this.modifiers = const [],
  });

  Set<AnalyzeARecipeSearchQuery200ResponseDishesInner> dishes;

  Set<AnalyzeARecipeSearchQuery200ResponseIngredientsInner> ingredients;

  List<String> cuisines;

  List<String> modifiers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyzeARecipeSearchQuery200Response &&
    _deepEquality.equals(other.dishes, dishes) &&
    _deepEquality.equals(other.ingredients, ingredients) &&
    _deepEquality.equals(other.cuisines, cuisines) &&
    _deepEquality.equals(other.modifiers, modifiers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dishes.hashCode) +
    (ingredients.hashCode) +
    (cuisines.hashCode) +
    (modifiers.hashCode);

  @override
  String toString() => 'AnalyzeARecipeSearchQuery200Response[dishes=$dishes, ingredients=$ingredients, cuisines=$cuisines, modifiers=$modifiers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'dishes'] = this.dishes.toList(growable: false);
      json[r'ingredients'] = this.ingredients.toList(growable: false);
      json[r'cuisines'] = this.cuisines;
      json[r'modifiers'] = this.modifiers;
    return json;
  }

  /// Returns a new [AnalyzeARecipeSearchQuery200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnalyzeARecipeSearchQuery200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnalyzeARecipeSearchQuery200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnalyzeARecipeSearchQuery200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnalyzeARecipeSearchQuery200Response(
        dishes: AnalyzeARecipeSearchQuery200ResponseDishesInner.listFromJson(json[r'dishes']).toSet(),
        ingredients: AnalyzeARecipeSearchQuery200ResponseIngredientsInner.listFromJson(json[r'ingredients']).toSet(),
        cuisines: json[r'cuisines'] is Iterable
            ? (json[r'cuisines'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        modifiers: json[r'modifiers'] is Iterable
            ? (json[r'modifiers'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<AnalyzeARecipeSearchQuery200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyzeARecipeSearchQuery200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyzeARecipeSearchQuery200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnalyzeARecipeSearchQuery200Response> mapFromJson(dynamic json) {
    final map = <String, AnalyzeARecipeSearchQuery200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnalyzeARecipeSearchQuery200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnalyzeARecipeSearchQuery200Response-objects as value to a dart map
  static Map<String, List<AnalyzeARecipeSearchQuery200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnalyzeARecipeSearchQuery200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnalyzeARecipeSearchQuery200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'dishes',
    'ingredients',
    'cuisines',
    'modifiers',
  };
}

