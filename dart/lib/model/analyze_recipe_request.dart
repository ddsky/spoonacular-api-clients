//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnalyzeRecipeRequest {
  /// Returns a new [AnalyzeRecipeRequest] instance.
  AnalyzeRecipeRequest({
    this.language,
    this.includeNutrition,
    this.includeTaste,
  });

  /// The input language, either \"en\" or \"de\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  /// Whether nutrition data should be added to correctly parsed ingredients.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? includeNutrition;

  /// Whether taste data should be added to correctly parsed ingredients.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? includeTaste;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyzeRecipeRequest &&
    other.language == language &&
    other.includeNutrition == includeNutrition &&
    other.includeTaste == includeTaste;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (language == null ? 0 : language!.hashCode) +
    (includeNutrition == null ? 0 : includeNutrition!.hashCode) +
    (includeTaste == null ? 0 : includeTaste!.hashCode);

  @override
  String toString() => 'AnalyzeRecipeRequest[language=$language, includeNutrition=$includeNutrition, includeTaste=$includeTaste]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.includeNutrition != null) {
      json[r'includeNutrition'] = this.includeNutrition;
    } else {
      json[r'includeNutrition'] = null;
    }
    if (this.includeTaste != null) {
      json[r'includeTaste'] = this.includeTaste;
    } else {
      json[r'includeTaste'] = null;
    }
    return json;
  }

  /// Returns a new [AnalyzeRecipeRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnalyzeRecipeRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnalyzeRecipeRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnalyzeRecipeRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnalyzeRecipeRequest(
        language: mapValueOfType<String>(json, r'language'),
        includeNutrition: mapValueOfType<bool>(json, r'includeNutrition'),
        includeTaste: mapValueOfType<bool>(json, r'includeTaste'),
      );
    }
    return null;
  }

  static List<AnalyzeRecipeRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyzeRecipeRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyzeRecipeRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnalyzeRecipeRequest> mapFromJson(dynamic json) {
    final map = <String, AnalyzeRecipeRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnalyzeRecipeRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnalyzeRecipeRequest-objects as value to a dart map
  static Map<String, List<AnalyzeRecipeRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnalyzeRecipeRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnalyzeRecipeRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

