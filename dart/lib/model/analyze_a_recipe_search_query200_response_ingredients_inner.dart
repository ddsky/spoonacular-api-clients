//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnalyzeARecipeSearchQuery200ResponseIngredientsInner {
  /// Returns a new [AnalyzeARecipeSearchQuery200ResponseIngredientsInner] instance.
  AnalyzeARecipeSearchQuery200ResponseIngredientsInner({
    required this.image,
    required this.include,
    required this.name,
  });

  String image;

  bool include;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyzeARecipeSearchQuery200ResponseIngredientsInner &&
    other.image == image &&
    other.include == include &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (image.hashCode) +
    (include.hashCode) +
    (name.hashCode);

  @override
  String toString() => 'AnalyzeARecipeSearchQuery200ResponseIngredientsInner[image=$image, include=$include, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'image'] = this.image;
      json[r'include'] = this.include;
      json[r'name'] = this.name;
    return json;
  }

  /// Returns a new [AnalyzeARecipeSearchQuery200ResponseIngredientsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnalyzeARecipeSearchQuery200ResponseIngredientsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnalyzeARecipeSearchQuery200ResponseIngredientsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnalyzeARecipeSearchQuery200ResponseIngredientsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnalyzeARecipeSearchQuery200ResponseIngredientsInner(
        image: mapValueOfType<String>(json, r'image')!,
        include: mapValueOfType<bool>(json, r'include')!,
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<AnalyzeARecipeSearchQuery200ResponseIngredientsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyzeARecipeSearchQuery200ResponseIngredientsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyzeARecipeSearchQuery200ResponseIngredientsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnalyzeARecipeSearchQuery200ResponseIngredientsInner> mapFromJson(dynamic json) {
    final map = <String, AnalyzeARecipeSearchQuery200ResponseIngredientsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnalyzeARecipeSearchQuery200ResponseIngredientsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnalyzeARecipeSearchQuery200ResponseIngredientsInner-objects as value to a dart map
  static Map<String, List<AnalyzeARecipeSearchQuery200ResponseIngredientsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnalyzeARecipeSearchQuery200ResponseIngredientsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnalyzeARecipeSearchQuery200ResponseIngredientsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'image',
    'include',
    'name',
  };
}

