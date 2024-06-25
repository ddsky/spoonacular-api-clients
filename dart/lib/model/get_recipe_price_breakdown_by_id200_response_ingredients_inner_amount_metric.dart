//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric {
  /// Returns a new [GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric] instance.
  GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric({
    required this.unit,
    required this.value,
  });

  String unit;

  num value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric &&
    other.unit == unit &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (unit.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric[unit=$unit, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'unit'] = this.unit;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric(
        unit: mapValueOfType<String>(json, r'unit')!,
        value: num.parse('${json[r'value']}'),
      );
    }
    return null;
  }

  static List<GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric> mapFromJson(dynamic json) {
    final map = <String, GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric-objects as value to a dart map
  static Map<String, List<GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'unit',
    'value',
  };
}

