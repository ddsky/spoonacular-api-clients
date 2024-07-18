//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchAllFood200ResponseSearchResultsInner {
  /// Returns a new [SearchAllFood200ResponseSearchResultsInner] instance.
  SearchAllFood200ResponseSearchResultsInner({
    required this.name,
    required this.totalResults,
    this.results = const {},
  });

  String name;

  int totalResults;

  Set<SearchResult> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchAllFood200ResponseSearchResultsInner &&
    other.name == name &&
    other.totalResults == totalResults &&
    _deepEquality.equals(other.results, results);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (totalResults.hashCode) +
    (results.hashCode);

  @override
  String toString() => 'SearchAllFood200ResponseSearchResultsInner[name=$name, totalResults=$totalResults, results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'totalResults'] = this.totalResults;
      json[r'results'] = this.results.toList(growable: false);
    return json;
  }

  /// Returns a new [SearchAllFood200ResponseSearchResultsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchAllFood200ResponseSearchResultsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchAllFood200ResponseSearchResultsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchAllFood200ResponseSearchResultsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchAllFood200ResponseSearchResultsInner(
        name: mapValueOfType<String>(json, r'name')!,
        totalResults: mapValueOfType<int>(json, r'totalResults')!,
        results: SearchResult.listFromJson(json[r'results']).toSet(),
      );
    }
    return null;
  }

  static List<SearchAllFood200ResponseSearchResultsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchAllFood200ResponseSearchResultsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchAllFood200ResponseSearchResultsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchAllFood200ResponseSearchResultsInner> mapFromJson(dynamic json) {
    final map = <String, SearchAllFood200ResponseSearchResultsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchAllFood200ResponseSearchResultsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchAllFood200ResponseSearchResultsInner-objects as value to a dart map
  static Map<String, List<SearchAllFood200ResponseSearchResultsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchAllFood200ResponseSearchResultsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchAllFood200ResponseSearchResultsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'totalResults',
  };
}

