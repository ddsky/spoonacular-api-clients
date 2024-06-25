//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetMealPlanTemplates200Response {
  /// Returns a new [GetMealPlanTemplates200Response] instance.
  GetMealPlanTemplates200Response({
    this.templates = const {},
  });

  Set<GetAnalyzedRecipeInstructions200ResponseIngredientsInner> templates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetMealPlanTemplates200Response &&
    _deepEquality.equals(other.templates, templates);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (templates.hashCode);

  @override
  String toString() => 'GetMealPlanTemplates200Response[templates=$templates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'templates'] = this.templates.toList(growable: false);
    return json;
  }

  /// Returns a new [GetMealPlanTemplates200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetMealPlanTemplates200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetMealPlanTemplates200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetMealPlanTemplates200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetMealPlanTemplates200Response(
        templates: GetAnalyzedRecipeInstructions200ResponseIngredientsInner.listFromJson(json[r'templates']).toSet(),
      );
    }
    return null;
  }

  static List<GetMealPlanTemplates200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetMealPlanTemplates200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetMealPlanTemplates200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetMealPlanTemplates200Response> mapFromJson(dynamic json) {
    final map = <String, GetMealPlanTemplates200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetMealPlanTemplates200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetMealPlanTemplates200Response-objects as value to a dart map
  static Map<String, List<GetMealPlanTemplates200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetMealPlanTemplates200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetMealPlanTemplates200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'templates',
  };
}

