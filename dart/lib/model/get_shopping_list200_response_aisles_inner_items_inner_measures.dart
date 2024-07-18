//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetShoppingList200ResponseAislesInnerItemsInnerMeasures {
  /// Returns a new [GetShoppingList200ResponseAislesInnerItemsInnerMeasures] instance.
  GetShoppingList200ResponseAislesInnerItemsInnerMeasures({
    required this.original,
    required this.metric,
    required this.us,
  });

  GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal original;

  GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal metric;

  GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal us;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetShoppingList200ResponseAislesInnerItemsInnerMeasures &&
    other.original == original &&
    other.metric == metric &&
    other.us == us;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (original.hashCode) +
    (metric.hashCode) +
    (us.hashCode);

  @override
  String toString() => 'GetShoppingList200ResponseAislesInnerItemsInnerMeasures[original=$original, metric=$metric, us=$us]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'original'] = this.original;
      json[r'metric'] = this.metric;
      json[r'us'] = this.us;
    return json;
  }

  /// Returns a new [GetShoppingList200ResponseAislesInnerItemsInnerMeasures] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetShoppingList200ResponseAislesInnerItemsInnerMeasures? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetShoppingList200ResponseAislesInnerItemsInnerMeasures[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetShoppingList200ResponseAislesInnerItemsInnerMeasures[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetShoppingList200ResponseAislesInnerItemsInnerMeasures(
        original: GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.fromJson(json[r'original'])!,
        metric: GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.fromJson(json[r'metric'])!,
        us: GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.fromJson(json[r'us'])!,
      );
    }
    return null;
  }

  static List<GetShoppingList200ResponseAislesInnerItemsInnerMeasures> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetShoppingList200ResponseAislesInnerItemsInnerMeasures>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetShoppingList200ResponseAislesInnerItemsInnerMeasures.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetShoppingList200ResponseAislesInnerItemsInnerMeasures> mapFromJson(dynamic json) {
    final map = <String, GetShoppingList200ResponseAislesInnerItemsInnerMeasures>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetShoppingList200ResponseAislesInnerItemsInnerMeasures.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetShoppingList200ResponseAislesInnerItemsInnerMeasures-objects as value to a dart map
  static Map<String, List<GetShoppingList200ResponseAislesInnerItemsInnerMeasures>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetShoppingList200ResponseAislesInnerItemsInnerMeasures>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetShoppingList200ResponseAislesInnerItemsInnerMeasures.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'original',
    'metric',
    'us',
  };
}

