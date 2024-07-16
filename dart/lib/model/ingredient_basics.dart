//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IngredientBasics {
  /// Returns a new [IngredientBasics] instance.
  IngredientBasics({
    required this.description,
    required this.name,
    required this.safetyLevel,
  });

  String? description;

  String name;

  String? safetyLevel;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IngredientBasics &&
    other.description == description &&
    other.name == name &&
    other.safetyLevel == safetyLevel;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (name.hashCode) +
    (safetyLevel == null ? 0 : safetyLevel!.hashCode);

  @override
  String toString() => 'IngredientBasics[description=$description, name=$name, safetyLevel=$safetyLevel]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'name'] = this.name;
    if (this.safetyLevel != null) {
      json[r'safety_level'] = this.safetyLevel;
    } else {
      json[r'safety_level'] = null;
    }
    return json;
  }

  /// Returns a new [IngredientBasics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IngredientBasics? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IngredientBasics[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IngredientBasics[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IngredientBasics(
        description: mapValueOfType<String>(json, r'description'),
        name: mapValueOfType<String>(json, r'name')!,
        safetyLevel: mapValueOfType<String>(json, r'safety_level'),
      );
    }
    return null;
  }

  static List<IngredientBasics> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IngredientBasics>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IngredientBasics.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IngredientBasics> mapFromJson(dynamic json) {
    final map = <String, IngredientBasics>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IngredientBasics.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IngredientBasics-objects as value to a dart map
  static Map<String, List<IngredientBasics>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IngredientBasics>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IngredientBasics.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'description',
    'name',
    'safety_level',
  };
}

