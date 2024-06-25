//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnalyzeRecipeRequest {
  /// Returns a new [AnalyzeRecipeRequest] instance.
  AnalyzeRecipeRequest({
    this.title,
    this.servings,
    this.ingredients = const [],
    this.instructions,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? servings;

  List<String> ingredients;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? instructions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyzeRecipeRequest &&
    other.title == title &&
    other.servings == servings &&
    _deepEquality.equals(other.ingredients, ingredients) &&
    other.instructions == instructions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (servings == null ? 0 : servings!.hashCode) +
    (ingredients.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode);

  @override
  String toString() => 'AnalyzeRecipeRequest[title=$title, servings=$servings, ingredients=$ingredients, instructions=$instructions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.servings != null) {
      json[r'servings'] = this.servings;
    } else {
      json[r'servings'] = null;
    }
      json[r'ingredients'] = this.ingredients;
    if (this.instructions != null) {
      json[r'instructions'] = this.instructions;
    } else {
      json[r'instructions'] = null;
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
        title: mapValueOfType<String>(json, r'title'),
        servings: mapValueOfType<int>(json, r'servings'),
        ingredients: json[r'ingredients'] is Iterable
            ? (json[r'ingredients'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        instructions: mapValueOfType<String>(json, r'instructions'),
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

