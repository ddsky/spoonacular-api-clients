//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetComparableProducts200Response {
  /// Returns a new [GetComparableProducts200Response] instance.
  GetComparableProducts200Response({
    required this.comparableProducts,
  });

  GetComparableProducts200ResponseComparableProducts comparableProducts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetComparableProducts200Response &&
    other.comparableProducts == comparableProducts;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (comparableProducts.hashCode);

  @override
  String toString() => 'GetComparableProducts200Response[comparableProducts=$comparableProducts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'comparableProducts'] = this.comparableProducts;
    return json;
  }

  /// Returns a new [GetComparableProducts200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetComparableProducts200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetComparableProducts200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetComparableProducts200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetComparableProducts200Response(
        comparableProducts: GetComparableProducts200ResponseComparableProducts.fromJson(json[r'comparableProducts'])!,
      );
    }
    return null;
  }

  static List<GetComparableProducts200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetComparableProducts200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetComparableProducts200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetComparableProducts200Response> mapFromJson(dynamic json) {
    final map = <String, GetComparableProducts200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetComparableProducts200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetComparableProducts200Response-objects as value to a dart map
  static Map<String, List<GetComparableProducts200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetComparableProducts200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetComparableProducts200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'comparableProducts',
  };
}

