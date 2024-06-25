//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetIngredientSubstitutes200Response {
  /// Returns a new [GetIngredientSubstitutes200Response] instance.
  GetIngredientSubstitutes200Response({
    required this.ingredient,
    this.substitutes = const [],
    required this.message,
  });

  String ingredient;

  List<String> substitutes;

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetIngredientSubstitutes200Response &&
    other.ingredient == ingredient &&
    _deepEquality.equals(other.substitutes, substitutes) &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ingredient.hashCode) +
    (substitutes.hashCode) +
    (message.hashCode);

  @override
  String toString() => 'GetIngredientSubstitutes200Response[ingredient=$ingredient, substitutes=$substitutes, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ingredient'] = this.ingredient;
      json[r'substitutes'] = this.substitutes;
      json[r'message'] = this.message;
    return json;
  }

  /// Returns a new [GetIngredientSubstitutes200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetIngredientSubstitutes200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetIngredientSubstitutes200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetIngredientSubstitutes200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetIngredientSubstitutes200Response(
        ingredient: mapValueOfType<String>(json, r'ingredient')!,
        substitutes: json[r'substitutes'] is Iterable
            ? (json[r'substitutes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        message: mapValueOfType<String>(json, r'message')!,
      );
    }
    return null;
  }

  static List<GetIngredientSubstitutes200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetIngredientSubstitutes200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetIngredientSubstitutes200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetIngredientSubstitutes200Response> mapFromJson(dynamic json) {
    final map = <String, GetIngredientSubstitutes200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetIngredientSubstitutes200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetIngredientSubstitutes200Response-objects as value to a dart map
  static Map<String, List<GetIngredientSubstitutes200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetIngredientSubstitutes200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetIngredientSubstitutes200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ingredient',
    'substitutes',
    'message',
  };
}

