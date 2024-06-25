//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetShoppingList200ResponseAislesInnerItemsInner {
  /// Returns a new [GetShoppingList200ResponseAislesInnerItemsInner] instance.
  GetShoppingList200ResponseAislesInnerItemsInner({
    required this.id,
    required this.name,
    this.measures,
    required this.pantryItem,
    required this.aisle,
    required this.cost,
    required this.ingredientId,
  });

  int id;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetShoppingList200ResponseAislesInnerItemsInnerMeasures? measures;

  bool pantryItem;

  String aisle;

  num cost;

  int ingredientId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetShoppingList200ResponseAislesInnerItemsInner &&
    other.id == id &&
    other.name == name &&
    other.measures == measures &&
    other.pantryItem == pantryItem &&
    other.aisle == aisle &&
    other.cost == cost &&
    other.ingredientId == ingredientId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (measures == null ? 0 : measures!.hashCode) +
    (pantryItem.hashCode) +
    (aisle.hashCode) +
    (cost.hashCode) +
    (ingredientId.hashCode);

  @override
  String toString() => 'GetShoppingList200ResponseAislesInnerItemsInner[id=$id, name=$name, measures=$measures, pantryItem=$pantryItem, aisle=$aisle, cost=$cost, ingredientId=$ingredientId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
    if (this.measures != null) {
      json[r'measures'] = this.measures;
    } else {
      json[r'measures'] = null;
    }
      json[r'pantryItem'] = this.pantryItem;
      json[r'aisle'] = this.aisle;
      json[r'cost'] = this.cost;
      json[r'ingredientId'] = this.ingredientId;
    return json;
  }

  /// Returns a new [GetShoppingList200ResponseAislesInnerItemsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetShoppingList200ResponseAislesInnerItemsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetShoppingList200ResponseAislesInnerItemsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetShoppingList200ResponseAislesInnerItemsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetShoppingList200ResponseAislesInnerItemsInner(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        measures: GetShoppingList200ResponseAislesInnerItemsInnerMeasures.fromJson(json[r'measures']),
        pantryItem: mapValueOfType<bool>(json, r'pantryItem')!,
        aisle: mapValueOfType<String>(json, r'aisle')!,
        cost: num.parse('${json[r'cost']}'),
        ingredientId: mapValueOfType<int>(json, r'ingredientId')!,
      );
    }
    return null;
  }

  static List<GetShoppingList200ResponseAislesInnerItemsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetShoppingList200ResponseAislesInnerItemsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetShoppingList200ResponseAislesInnerItemsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetShoppingList200ResponseAislesInnerItemsInner> mapFromJson(dynamic json) {
    final map = <String, GetShoppingList200ResponseAislesInnerItemsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetShoppingList200ResponseAislesInnerItemsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetShoppingList200ResponseAislesInnerItemsInner-objects as value to a dart map
  static Map<String, List<GetShoppingList200ResponseAislesInnerItemsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetShoppingList200ResponseAislesInnerItemsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetShoppingList200ResponseAislesInnerItemsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'pantryItem',
    'aisle',
    'cost',
    'ingredientId',
  };
}

