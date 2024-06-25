//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnalyzeARecipeSearchQuery200ResponseDishesInner {
  /// Returns a new [AnalyzeARecipeSearchQuery200ResponseDishesInner] instance.
  AnalyzeARecipeSearchQuery200ResponseDishesInner({
    required this.image,
    required this.name,
  });

  String image;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyzeARecipeSearchQuery200ResponseDishesInner &&
    other.image == image &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (image.hashCode) +
    (name.hashCode);

  @override
  String toString() => 'AnalyzeARecipeSearchQuery200ResponseDishesInner[image=$image, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'image'] = this.image;
      json[r'name'] = this.name;
    return json;
  }

  /// Returns a new [AnalyzeARecipeSearchQuery200ResponseDishesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnalyzeARecipeSearchQuery200ResponseDishesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnalyzeARecipeSearchQuery200ResponseDishesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnalyzeARecipeSearchQuery200ResponseDishesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnalyzeARecipeSearchQuery200ResponseDishesInner(
        image: mapValueOfType<String>(json, r'image')!,
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<AnalyzeARecipeSearchQuery200ResponseDishesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyzeARecipeSearchQuery200ResponseDishesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyzeARecipeSearchQuery200ResponseDishesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnalyzeARecipeSearchQuery200ResponseDishesInner> mapFromJson(dynamic json) {
    final map = <String, AnalyzeARecipeSearchQuery200ResponseDishesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnalyzeARecipeSearchQuery200ResponseDishesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnalyzeARecipeSearchQuery200ResponseDishesInner-objects as value to a dart map
  static Map<String, List<AnalyzeARecipeSearchQuery200ResponseDishesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnalyzeARecipeSearchQuery200ResponseDishesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnalyzeARecipeSearchQuery200ResponseDishesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'image',
    'name',
  };
}

