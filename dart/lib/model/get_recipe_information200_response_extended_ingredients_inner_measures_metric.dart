//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric {
  /// Returns a new [GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric] instance.
  GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric({
    required this.amount,
    required this.unitLong,
    required this.unitShort,
  });

  num amount;

  String unitLong;

  String unitShort;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric &&
    other.amount == amount &&
    other.unitLong == unitLong &&
    other.unitShort == unitShort;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amount.hashCode) +
    (unitLong.hashCode) +
    (unitShort.hashCode);

  @override
  String toString() => 'GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric[amount=$amount, unitLong=$unitLong, unitShort=$unitShort]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'amount'] = this.amount;
      json[r'unitLong'] = this.unitLong;
      json[r'unitShort'] = this.unitShort;
    return json;
  }

  /// Returns a new [GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric(
        amount: num.parse('${json[r'amount']}'),
        unitLong: mapValueOfType<String>(json, r'unitLong')!,
        unitShort: mapValueOfType<String>(json, r'unitShort')!,
      );
    }
    return null;
  }

  static List<GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric> mapFromJson(dynamic json) {
    final map = <String, GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric-objects as value to a dart map
  static Map<String, List<GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'amount',
    'unitLong',
    'unitShort',
  };
}

