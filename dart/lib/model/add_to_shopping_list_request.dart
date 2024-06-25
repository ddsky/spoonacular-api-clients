//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AddToShoppingListRequest {
  /// Returns a new [AddToShoppingListRequest] instance.
  AddToShoppingListRequest({
    required this.item,
    required this.aisle,
    required this.parse,
  });

  String item;

  String aisle;

  bool parse;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddToShoppingListRequest &&
    other.item == item &&
    other.aisle == aisle &&
    other.parse == parse;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (item.hashCode) +
    (aisle.hashCode) +
    (parse.hashCode);

  @override
  String toString() => 'AddToShoppingListRequest[item=$item, aisle=$aisle, parse=$parse]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'item'] = this.item;
      json[r'aisle'] = this.aisle;
      json[r'parse'] = this.parse;
    return json;
  }

  /// Returns a new [AddToShoppingListRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddToShoppingListRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddToShoppingListRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddToShoppingListRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddToShoppingListRequest(
        item: mapValueOfType<String>(json, r'item')!,
        aisle: mapValueOfType<String>(json, r'aisle')!,
        parse: mapValueOfType<bool>(json, r'parse')!,
      );
    }
    return null;
  }

  static List<AddToShoppingListRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddToShoppingListRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddToShoppingListRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddToShoppingListRequest> mapFromJson(dynamic json) {
    final map = <String, AddToShoppingListRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddToShoppingListRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddToShoppingListRequest-objects as value to a dart map
  static Map<String, List<AddToShoppingListRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddToShoppingListRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddToShoppingListRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'item',
    'aisle',
    'parse',
  };
}

