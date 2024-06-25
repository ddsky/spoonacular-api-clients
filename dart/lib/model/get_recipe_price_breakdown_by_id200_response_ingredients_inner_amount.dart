//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount {
  /// Returns a new [GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount] instance.
  GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount({
    required this.metric,
    required this.us,
  });

  GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric metric;

  GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric us;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount &&
    other.metric == metric &&
    other.us == us;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (metric.hashCode) +
    (us.hashCode);

  @override
  String toString() => 'GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount[metric=$metric, us=$us]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'metric'] = this.metric;
      json[r'us'] = this.us;
    return json;
  }

  /// Returns a new [GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount(
        metric: GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric.fromJson(json[r'metric'])!,
        us: GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric.fromJson(json[r'us'])!,
      );
    }
    return null;
  }

  static List<GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount> mapFromJson(dynamic json) {
    final map = <String, GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount-objects as value to a dart map
  static Map<String, List<GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'metric',
    'us',
  };
}

