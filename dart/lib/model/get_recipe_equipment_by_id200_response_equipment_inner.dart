//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetRecipeEquipmentByID200ResponseEquipmentInner {
  /// Returns a new [GetRecipeEquipmentByID200ResponseEquipmentInner] instance.
  GetRecipeEquipmentByID200ResponseEquipmentInner({
    required this.image,
    required this.name,
  });

  String image;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetRecipeEquipmentByID200ResponseEquipmentInner &&
    other.image == image &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (image.hashCode) +
    (name.hashCode);

  @override
  String toString() => 'GetRecipeEquipmentByID200ResponseEquipmentInner[image=$image, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'image'] = this.image;
      json[r'name'] = this.name;
    return json;
  }

  /// Returns a new [GetRecipeEquipmentByID200ResponseEquipmentInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetRecipeEquipmentByID200ResponseEquipmentInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetRecipeEquipmentByID200ResponseEquipmentInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetRecipeEquipmentByID200ResponseEquipmentInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetRecipeEquipmentByID200ResponseEquipmentInner(
        image: mapValueOfType<String>(json, r'image')!,
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<GetRecipeEquipmentByID200ResponseEquipmentInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetRecipeEquipmentByID200ResponseEquipmentInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetRecipeEquipmentByID200ResponseEquipmentInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetRecipeEquipmentByID200ResponseEquipmentInner> mapFromJson(dynamic json) {
    final map = <String, GetRecipeEquipmentByID200ResponseEquipmentInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeEquipmentByID200ResponseEquipmentInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetRecipeEquipmentByID200ResponseEquipmentInner-objects as value to a dart map
  static Map<String, List<GetRecipeEquipmentByID200ResponseEquipmentInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetRecipeEquipmentByID200ResponseEquipmentInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetRecipeEquipmentByID200ResponseEquipmentInner.listFromJson(entry.value, growable: growable,);
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

