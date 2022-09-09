//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchAllFood200Response {
  /// Returns a new [SearchAllFood200Response] instance.
  SearchAllFood200Response({
    required this.query,
    required this.totalResults,
    required this.limit,
    required this.offset,
    this.searchResults = const {},
  });

  String query;

  int totalResults;

  int limit;

  int offset;

  Set<SearchAllFood200ResponseSearchResultsInner> searchResults;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchAllFood200Response &&
     other.query == query &&
     other.totalResults == totalResults &&
     other.limit == limit &&
     other.offset == offset &&
     other.searchResults == searchResults;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (query.hashCode) +
    (totalResults.hashCode) +
    (limit.hashCode) +
    (offset.hashCode) +
    (searchResults.hashCode);

  @override
  String toString() => 'SearchAllFood200Response[query=$query, totalResults=$totalResults, limit=$limit, offset=$offset, searchResults=$searchResults]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'query'] = query;
      _json[r'totalResults'] = totalResults;
      _json[r'limit'] = limit;
      _json[r'offset'] = offset;
      _json[r'searchResults'] = searchResults;
    return _json;
  }

  /// Returns a new [SearchAllFood200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchAllFood200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchAllFood200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchAllFood200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchAllFood200Response(
        query: mapValueOfType<String>(json, r'query')!,
        totalResults: mapValueOfType<int>(json, r'totalResults')!,
        limit: mapValueOfType<int>(json, r'limit')!,
        offset: mapValueOfType<int>(json, r'offset')!,
        searchResults: SearchAllFood200ResponseSearchResultsInner.listFromJson(json[r'searchResults'])!,
      );
    }
    return null;
  }

  static List<SearchAllFood200Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchAllFood200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchAllFood200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchAllFood200Response> mapFromJson(dynamic json) {
    final map = <String, SearchAllFood200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchAllFood200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchAllFood200Response-objects as value to a dart map
  static Map<String, List<SearchAllFood200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchAllFood200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchAllFood200Response.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'query',
    'totalResults',
    'limit',
    'offset',
    'searchResults',
  };
}

