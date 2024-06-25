//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchRecipes200Response {
  /// Returns a new [SearchRecipes200Response] instance.
  SearchRecipes200Response({
    required this.offset,
    required this.number,
    this.results = const {},
    required this.totalResults,
  });

  int offset;

  int number;

  Set<SearchRecipes200ResponseResultsInner> results;

  int totalResults;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchRecipes200Response &&
    other.offset == offset &&
    other.number == number &&
    _deepEquality.equals(other.results, results) &&
    other.totalResults == totalResults;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (offset.hashCode) +
    (number.hashCode) +
    (results.hashCode) +
    (totalResults.hashCode);

  @override
  String toString() => 'SearchRecipes200Response[offset=$offset, number=$number, results=$results, totalResults=$totalResults]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'offset'] = this.offset;
      json[r'number'] = this.number;
      json[r'results'] = this.results.toList(growable: false);
      json[r'totalResults'] = this.totalResults;
    return json;
  }

  /// Returns a new [SearchRecipes200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchRecipes200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchRecipes200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchRecipes200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchRecipes200Response(
        offset: mapValueOfType<int>(json, r'offset')!,
        number: mapValueOfType<int>(json, r'number')!,
        results: SearchRecipes200ResponseResultsInner.listFromJson(json[r'results']).toSet(),
        totalResults: mapValueOfType<int>(json, r'totalResults')!,
      );
    }
    return null;
  }

  static List<SearchRecipes200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchRecipes200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchRecipes200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchRecipes200Response> mapFromJson(dynamic json) {
    final map = <String, SearchRecipes200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRecipes200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchRecipes200Response-objects as value to a dart map
  static Map<String, List<SearchRecipes200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchRecipes200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchRecipes200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'offset',
    'number',
    'results',
    'totalResults',
  };
}

