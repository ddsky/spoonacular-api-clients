//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MapIngredientsToGroceryProductsRequest {
  /// Returns a new [MapIngredientsToGroceryProductsRequest] instance.
  MapIngredientsToGroceryProductsRequest({
    this.ingredients = const [],
    required this.servings,
  });

  List<String> ingredients;

  num servings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MapIngredientsToGroceryProductsRequest &&
     other.ingredients == ingredients &&
     other.servings == servings;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ingredients.hashCode) +
    (servings.hashCode);

  @override
  String toString() => 'MapIngredientsToGroceryProductsRequest[ingredients=$ingredients, servings=$servings]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'ingredients'] = ingredients;
      _json[r'servings'] = servings;
    return _json;
  }

  /// Returns a new [MapIngredientsToGroceryProductsRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MapIngredientsToGroceryProductsRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MapIngredientsToGroceryProductsRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MapIngredientsToGroceryProductsRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MapIngredientsToGroceryProductsRequest(
        ingredients: json[r'ingredients'] is List
            ? (json[r'ingredients'] as List).cast<String>()
            : const [],
        servings: json[r'servings'] == null
            ? null
            : num.parse(json[r'servings'].toString()),
      );
    }
    return null;
  }

  static List<MapIngredientsToGroceryProductsRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MapIngredientsToGroceryProductsRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MapIngredientsToGroceryProductsRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MapIngredientsToGroceryProductsRequest> mapFromJson(dynamic json) {
    final map = <String, MapIngredientsToGroceryProductsRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MapIngredientsToGroceryProductsRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MapIngredientsToGroceryProductsRequest-objects as value to a dart map
  static Map<String, List<MapIngredientsToGroceryProductsRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MapIngredientsToGroceryProductsRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MapIngredientsToGroceryProductsRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ingredients',
    'servings',
  };
}

