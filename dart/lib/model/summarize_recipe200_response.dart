//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SummarizeRecipe200Response {
  /// Returns a new [SummarizeRecipe200Response] instance.
  SummarizeRecipe200Response({
    required this.id,
    required this.summary,
    required this.title,
  });

  int id;

  String summary;

  String title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SummarizeRecipe200Response &&
    other.id == id &&
    other.summary == summary &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (summary.hashCode) +
    (title.hashCode);

  @override
  String toString() => 'SummarizeRecipe200Response[id=$id, summary=$summary, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'summary'] = this.summary;
      json[r'title'] = this.title;
    return json;
  }

  /// Returns a new [SummarizeRecipe200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SummarizeRecipe200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SummarizeRecipe200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SummarizeRecipe200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SummarizeRecipe200Response(
        id: mapValueOfType<int>(json, r'id')!,
        summary: mapValueOfType<String>(json, r'summary')!,
        title: mapValueOfType<String>(json, r'title')!,
      );
    }
    return null;
  }

  static List<SummarizeRecipe200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SummarizeRecipe200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SummarizeRecipe200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SummarizeRecipe200Response> mapFromJson(dynamic json) {
    final map = <String, SummarizeRecipe200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SummarizeRecipe200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SummarizeRecipe200Response-objects as value to a dart map
  static Map<String, List<SummarizeRecipe200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SummarizeRecipe200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SummarizeRecipe200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'summary',
    'title',
  };
}

