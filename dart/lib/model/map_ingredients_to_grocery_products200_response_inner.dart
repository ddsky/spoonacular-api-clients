//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MapIngredientsToGroceryProducts200ResponseInner {
  /// Returns a new [MapIngredientsToGroceryProducts200ResponseInner] instance.
  MapIngredientsToGroceryProducts200ResponseInner({
    required this.original,
    required this.originalName,
    required this.ingredientImage,
    this.meta = const [],
    this.products = const {},
  });

  String original;

  String originalName;

  String ingredientImage;

  List<String> meta;

  Set<MapIngredientsToGroceryProducts200ResponseInnerProductsInner> products;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MapIngredientsToGroceryProducts200ResponseInner &&
    other.original == original &&
    other.originalName == originalName &&
    other.ingredientImage == ingredientImage &&
    _deepEquality.equals(other.meta, meta) &&
    _deepEquality.equals(other.products, products);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (original.hashCode) +
    (originalName.hashCode) +
    (ingredientImage.hashCode) +
    (meta.hashCode) +
    (products.hashCode);

  @override
  String toString() => 'MapIngredientsToGroceryProducts200ResponseInner[original=$original, originalName=$originalName, ingredientImage=$ingredientImage, meta=$meta, products=$products]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'original'] = this.original;
      json[r'originalName'] = this.originalName;
      json[r'ingredientImage'] = this.ingredientImage;
      json[r'meta'] = this.meta;
      json[r'products'] = this.products.toList(growable: false);
    return json;
  }

  /// Returns a new [MapIngredientsToGroceryProducts200ResponseInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MapIngredientsToGroceryProducts200ResponseInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MapIngredientsToGroceryProducts200ResponseInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MapIngredientsToGroceryProducts200ResponseInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MapIngredientsToGroceryProducts200ResponseInner(
        original: mapValueOfType<String>(json, r'original')!,
        originalName: mapValueOfType<String>(json, r'originalName')!,
        ingredientImage: mapValueOfType<String>(json, r'ingredientImage')!,
        meta: json[r'meta'] is Iterable
            ? (json[r'meta'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        products: MapIngredientsToGroceryProducts200ResponseInnerProductsInner.listFromJson(json[r'products']).toSet(),
      );
    }
    return null;
  }

  static List<MapIngredientsToGroceryProducts200ResponseInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MapIngredientsToGroceryProducts200ResponseInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MapIngredientsToGroceryProducts200ResponseInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MapIngredientsToGroceryProducts200ResponseInner> mapFromJson(dynamic json) {
    final map = <String, MapIngredientsToGroceryProducts200ResponseInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MapIngredientsToGroceryProducts200ResponseInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MapIngredientsToGroceryProducts200ResponseInner-objects as value to a dart map
  static Map<String, List<MapIngredientsToGroceryProducts200ResponseInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MapIngredientsToGroceryProducts200ResponseInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MapIngredientsToGroceryProducts200ResponseInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'original',
    'originalName',
    'ingredientImage',
    'meta',
    'products',
  };
}

