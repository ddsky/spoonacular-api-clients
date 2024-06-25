//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IngredientSearch200Response {
  /// Returns a new [IngredientSearch200Response] instance.
  IngredientSearch200Response({
    this.results = const {},
    required this.offset,
    required this.number,
    required this.totalResults,
  });

  Set<IngredientSearch200ResponseResultsInner> results;

  int offset;

  int number;

  int totalResults;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IngredientSearch200Response &&
    _deepEquality.equals(other.results, results) &&
    other.offset == offset &&
    other.number == number &&
    other.totalResults == totalResults;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (results.hashCode) +
    (offset.hashCode) +
    (number.hashCode) +
    (totalResults.hashCode);

  @override
  String toString() => 'IngredientSearch200Response[results=$results, offset=$offset, number=$number, totalResults=$totalResults]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'results'] = this.results.toList(growable: false);
      json[r'offset'] = this.offset;
      json[r'number'] = this.number;
      json[r'totalResults'] = this.totalResults;
    return json;
  }

  /// Returns a new [IngredientSearch200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IngredientSearch200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IngredientSearch200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IngredientSearch200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IngredientSearch200Response(
        results: IngredientSearch200ResponseResultsInner.listFromJson(json[r'results']).toSet(),
        offset: mapValueOfType<int>(json, r'offset')!,
        number: mapValueOfType<int>(json, r'number')!,
        totalResults: mapValueOfType<int>(json, r'totalResults')!,
      );
    }
    return null;
  }

  static List<IngredientSearch200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IngredientSearch200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IngredientSearch200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IngredientSearch200Response> mapFromJson(dynamic json) {
    final map = <String, IngredientSearch200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IngredientSearch200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IngredientSearch200Response-objects as value to a dart map
  static Map<String, List<IngredientSearch200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IngredientSearch200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IngredientSearch200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'results',
    'offset',
    'number',
    'totalResults',
  };
}

