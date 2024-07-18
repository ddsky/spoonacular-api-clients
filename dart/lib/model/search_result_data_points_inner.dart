//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchResultDataPointsInner {
  /// Returns a new [SearchResultDataPointsInner] instance.
  SearchResultDataPointsInner({
    required this.key,
    required this.value,
    this.show_,
  });

  String key;

  Object? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? show_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchResultDataPointsInner &&
    other.key == key &&
    other.value == value &&
    other.show_ == show_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (show_ == null ? 0 : show_!.hashCode);

  @override
  String toString() => 'SearchResultDataPointsInner[key=$key, value=$value, show_=$show_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'key'] = this.key;
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.show_ != null) {
      json[r'show'] = this.show_;
    } else {
      json[r'show'] = null;
    }
    return json;
  }

  /// Returns a new [SearchResultDataPointsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchResultDataPointsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchResultDataPointsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchResultDataPointsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchResultDataPointsInner(
        key: mapValueOfType<String>(json, r'key')!,
        value: mapValueOfType<Object>(json, r'value'),
        show_: mapValueOfType<bool>(json, r'show'),
      );
    }
    return null;
  }

  static List<SearchResultDataPointsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchResultDataPointsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchResultDataPointsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchResultDataPointsInner> mapFromJson(dynamic json) {
    final map = <String, SearchResultDataPointsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchResultDataPointsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchResultDataPointsInner-objects as value to a dart map
  static Map<String, List<SearchResultDataPointsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchResultDataPointsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchResultDataPointsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key',
    'value',
  };
}

