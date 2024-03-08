//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateShoppingList200Response {
  /// Returns a new [GenerateShoppingList200Response] instance.
  GenerateShoppingList200Response({
    this.aisles = const {},
    required this.cost,
    required this.startDate,
    required this.endDate,
  });

  Set<GetShoppingList200ResponseAislesInner> aisles;

  num cost;

  num startDate;

  num endDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateShoppingList200Response &&
    _deepEquality.equals(other.aisles, aisles) &&
    other.cost == cost &&
    other.startDate == startDate &&
    other.endDate == endDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aisles.hashCode) +
    (cost.hashCode) +
    (startDate.hashCode) +
    (endDate.hashCode);

  @override
  String toString() => 'GenerateShoppingList200Response[aisles=$aisles, cost=$cost, startDate=$startDate, endDate=$endDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'aisles'] = this.aisles.toList(growable: false);
      json[r'cost'] = this.cost;
      json[r'startDate'] = this.startDate;
      json[r'endDate'] = this.endDate;
    return json;
  }

  /// Returns a new [GenerateShoppingList200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateShoppingList200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateShoppingList200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateShoppingList200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateShoppingList200Response(
        aisles: GetShoppingList200ResponseAislesInner.listFromJson(json[r'aisles']).toSet(),
        cost: num.parse('${json[r'cost']}'),
        startDate: num.parse('${json[r'startDate']}'),
        endDate: num.parse('${json[r'endDate']}'),
      );
    }
    return null;
  }

  static List<GenerateShoppingList200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateShoppingList200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateShoppingList200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateShoppingList200Response> mapFromJson(dynamic json) {
    final map = <String, GenerateShoppingList200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateShoppingList200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateShoppingList200Response-objects as value to a dart map
  static Map<String, List<GenerateShoppingList200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateShoppingList200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenerateShoppingList200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'aisles',
    'cost',
    'startDate',
    'endDate',
  };
}

