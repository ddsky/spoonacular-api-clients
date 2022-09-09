//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateMealPlan200Response {
  /// Returns a new [GenerateMealPlan200Response] instance.
  GenerateMealPlan200Response({
    this.meals = const {},
    required this.nutrients,
  });

  Set<GetSimilarRecipes200ResponseInner> meals;

  GenerateMealPlan200ResponseNutrients nutrients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateMealPlan200Response &&
     other.meals == meals &&
     other.nutrients == nutrients;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (meals.hashCode) +
    (nutrients.hashCode);

  @override
  String toString() => 'GenerateMealPlan200Response[meals=$meals, nutrients=$nutrients]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'meals'] = meals;
      _json[r'nutrients'] = nutrients;
    return _json;
  }

  /// Returns a new [GenerateMealPlan200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateMealPlan200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateMealPlan200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateMealPlan200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateMealPlan200Response(
        meals: GetSimilarRecipes200ResponseInner.listFromJson(json[r'meals'])!,
        nutrients: GenerateMealPlan200ResponseNutrients.fromJson(json[r'nutrients'])!,
      );
    }
    return null;
  }

  static List<GenerateMealPlan200Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateMealPlan200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateMealPlan200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateMealPlan200Response> mapFromJson(dynamic json) {
    final map = <String, GenerateMealPlan200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateMealPlan200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateMealPlan200Response-objects as value to a dart map
  static Map<String, List<GenerateMealPlan200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateMealPlan200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateMealPlan200Response.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'meals',
    'nutrients',
  };
}

