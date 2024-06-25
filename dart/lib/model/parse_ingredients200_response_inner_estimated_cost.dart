//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ParseIngredients200ResponseInnerEstimatedCost {
  /// Returns a new [ParseIngredients200ResponseInnerEstimatedCost] instance.
  ParseIngredients200ResponseInnerEstimatedCost({
    required this.value,
    required this.unit,
  });

  num value;

  String unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ParseIngredients200ResponseInnerEstimatedCost &&
    other.value == value &&
    other.unit == unit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (value.hashCode) +
    (unit.hashCode);

  @override
  String toString() => 'ParseIngredients200ResponseInnerEstimatedCost[value=$value, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'value'] = this.value;
      json[r'unit'] = this.unit;
    return json;
  }

  /// Returns a new [ParseIngredients200ResponseInnerEstimatedCost] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ParseIngredients200ResponseInnerEstimatedCost? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ParseIngredients200ResponseInnerEstimatedCost[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ParseIngredients200ResponseInnerEstimatedCost[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ParseIngredients200ResponseInnerEstimatedCost(
        value: num.parse('${json[r'value']}'),
        unit: mapValueOfType<String>(json, r'unit')!,
      );
    }
    return null;
  }

  static List<ParseIngredients200ResponseInnerEstimatedCost> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ParseIngredients200ResponseInnerEstimatedCost>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ParseIngredients200ResponseInnerEstimatedCost.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ParseIngredients200ResponseInnerEstimatedCost> mapFromJson(dynamic json) {
    final map = <String, ParseIngredients200ResponseInnerEstimatedCost>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ParseIngredients200ResponseInnerEstimatedCost.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ParseIngredients200ResponseInnerEstimatedCost-objects as value to a dart map
  static Map<String, List<ParseIngredients200ResponseInnerEstimatedCost>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ParseIngredients200ResponseInnerEstimatedCost>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ParseIngredients200ResponseInnerEstimatedCost.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'value',
    'unit',
  };
}

