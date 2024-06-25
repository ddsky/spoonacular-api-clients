//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AutocompleteIngredientSearch200ResponseInner {
  /// Returns a new [AutocompleteIngredientSearch200ResponseInner] instance.
  AutocompleteIngredientSearch200ResponseInner({
    required this.name,
    required this.image,
    this.id,
    this.aisle,
    this.possibleUnits = const [],
  });

  String name;

  String image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? aisle;

  List<String> possibleUnits;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AutocompleteIngredientSearch200ResponseInner &&
    other.name == name &&
    other.image == image &&
    other.id == id &&
    other.aisle == aisle &&
    _deepEquality.equals(other.possibleUnits, possibleUnits);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (image.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (aisle == null ? 0 : aisle!.hashCode) +
    (possibleUnits.hashCode);

  @override
  String toString() => 'AutocompleteIngredientSearch200ResponseInner[name=$name, image=$image, id=$id, aisle=$aisle, possibleUnits=$possibleUnits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'image'] = this.image;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.aisle != null) {
      json[r'aisle'] = this.aisle;
    } else {
      json[r'aisle'] = null;
    }
      json[r'possibleUnits'] = this.possibleUnits;
    return json;
  }

  /// Returns a new [AutocompleteIngredientSearch200ResponseInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AutocompleteIngredientSearch200ResponseInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AutocompleteIngredientSearch200ResponseInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AutocompleteIngredientSearch200ResponseInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AutocompleteIngredientSearch200ResponseInner(
        name: mapValueOfType<String>(json, r'name')!,
        image: mapValueOfType<String>(json, r'image')!,
        id: mapValueOfType<int>(json, r'id'),
        aisle: mapValueOfType<String>(json, r'aisle'),
        possibleUnits: json[r'possibleUnits'] is Iterable
            ? (json[r'possibleUnits'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<AutocompleteIngredientSearch200ResponseInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutocompleteIngredientSearch200ResponseInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutocompleteIngredientSearch200ResponseInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AutocompleteIngredientSearch200ResponseInner> mapFromJson(dynamic json) {
    final map = <String, AutocompleteIngredientSearch200ResponseInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AutocompleteIngredientSearch200ResponseInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AutocompleteIngredientSearch200ResponseInner-objects as value to a dart map
  static Map<String, List<AutocompleteIngredientSearch200ResponseInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AutocompleteIngredientSearch200ResponseInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AutocompleteIngredientSearch200ResponseInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'image',
  };
}

