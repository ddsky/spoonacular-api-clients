//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MapIngredientsToGroceryProducts200ResponseInnerProductsInner {
  /// Returns a new [MapIngredientsToGroceryProducts200ResponseInnerProductsInner] instance.
  MapIngredientsToGroceryProducts200ResponseInnerProductsInner({
    required this.id,
    required this.title,
    required this.upc,
  });

  int id;

  String title;

  String upc;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MapIngredientsToGroceryProducts200ResponseInnerProductsInner &&
    other.id == id &&
    other.title == title &&
    other.upc == upc;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (upc.hashCode);

  @override
  String toString() => 'MapIngredientsToGroceryProducts200ResponseInnerProductsInner[id=$id, title=$title, upc=$upc]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
      json[r'upc'] = this.upc;
    return json;
  }

  /// Returns a new [MapIngredientsToGroceryProducts200ResponseInnerProductsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MapIngredientsToGroceryProducts200ResponseInnerProductsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MapIngredientsToGroceryProducts200ResponseInnerProductsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MapIngredientsToGroceryProducts200ResponseInnerProductsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MapIngredientsToGroceryProducts200ResponseInnerProductsInner(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        upc: mapValueOfType<String>(json, r'upc')!,
      );
    }
    return null;
  }

  static List<MapIngredientsToGroceryProducts200ResponseInnerProductsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MapIngredientsToGroceryProducts200ResponseInnerProductsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MapIngredientsToGroceryProducts200ResponseInnerProductsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MapIngredientsToGroceryProducts200ResponseInnerProductsInner> mapFromJson(dynamic json) {
    final map = <String, MapIngredientsToGroceryProducts200ResponseInnerProductsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MapIngredientsToGroceryProducts200ResponseInnerProductsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MapIngredientsToGroceryProducts200ResponseInnerProductsInner-objects as value to a dart map
  static Map<String, List<MapIngredientsToGroceryProducts200ResponseInnerProductsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MapIngredientsToGroceryProducts200ResponseInnerProductsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MapIngredientsToGroceryProducts200ResponseInnerProductsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'upc',
  };
}

