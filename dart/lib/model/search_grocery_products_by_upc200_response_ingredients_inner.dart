//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchGroceryProductsByUPC200ResponseIngredientsInner {
  /// Returns a new [SearchGroceryProductsByUPC200ResponseIngredientsInner] instance.
  SearchGroceryProductsByUPC200ResponseIngredientsInner({
    this.description,
    required this.name,
    this.safetyLevel,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? safetyLevel;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchGroceryProductsByUPC200ResponseIngredientsInner &&
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
  String toString() => 'SearchGroceryProductsByUPC200ResponseIngredientsInner[description=$description, name=$name, safetyLevel=$safetyLevel]';

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

  /// Returns a new [SearchGroceryProductsByUPC200ResponseIngredientsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchGroceryProductsByUPC200ResponseIngredientsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchGroceryProductsByUPC200ResponseIngredientsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchGroceryProductsByUPC200ResponseIngredientsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchGroceryProductsByUPC200ResponseIngredientsInner(
        description: mapValueOfType<String>(json, r'description'),
        name: mapValueOfType<String>(json, r'name')!,
        safetyLevel: mapValueOfType<String>(json, r'safety_level'),
      );
    }
    return null;
  }

  static List<SearchGroceryProductsByUPC200ResponseIngredientsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchGroceryProductsByUPC200ResponseIngredientsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchGroceryProductsByUPC200ResponseIngredientsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchGroceryProductsByUPC200ResponseIngredientsInner> mapFromJson(dynamic json) {
    final map = <String, SearchGroceryProductsByUPC200ResponseIngredientsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchGroceryProductsByUPC200ResponseIngredientsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchGroceryProductsByUPC200ResponseIngredientsInner-objects as value to a dart map
  static Map<String, List<SearchGroceryProductsByUPC200ResponseIngredientsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchGroceryProductsByUPC200ResponseIngredientsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchGroceryProductsByUPC200ResponseIngredientsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

