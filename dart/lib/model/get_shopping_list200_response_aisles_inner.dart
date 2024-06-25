//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetShoppingList200ResponseAislesInner {
  /// Returns a new [GetShoppingList200ResponseAislesInner] instance.
  GetShoppingList200ResponseAislesInner({
    required this.aisle,
    this.items = const {},
  });

  String aisle;

  Set<GetShoppingList200ResponseAislesInnerItemsInner> items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetShoppingList200ResponseAislesInner &&
    other.aisle == aisle &&
    _deepEquality.equals(other.items, items);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aisle.hashCode) +
    (items.hashCode);

  @override
  String toString() => 'GetShoppingList200ResponseAislesInner[aisle=$aisle, items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'aisle'] = this.aisle;
      json[r'items'] = this.items.toList(growable: false);
    return json;
  }

  /// Returns a new [GetShoppingList200ResponseAislesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetShoppingList200ResponseAislesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetShoppingList200ResponseAislesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetShoppingList200ResponseAislesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetShoppingList200ResponseAislesInner(
        aisle: mapValueOfType<String>(json, r'aisle')!,
        items: GetShoppingList200ResponseAislesInnerItemsInner.listFromJson(json[r'items']).toSet(),
      );
    }
    return null;
  }

  static List<GetShoppingList200ResponseAislesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetShoppingList200ResponseAislesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetShoppingList200ResponseAislesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetShoppingList200ResponseAislesInner> mapFromJson(dynamic json) {
    final map = <String, GetShoppingList200ResponseAislesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetShoppingList200ResponseAislesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetShoppingList200ResponseAislesInner-objects as value to a dart map
  static Map<String, List<GetShoppingList200ResponseAislesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetShoppingList200ResponseAislesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetShoppingList200ResponseAislesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'aisle',
  };
}

