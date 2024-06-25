//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AddMealPlanTemplate200ResponseItemsInnerValue {
  /// Returns a new [AddMealPlanTemplate200ResponseItemsInnerValue] instance.
  AddMealPlanTemplate200ResponseItemsInnerValue({
    this.id,
    this.servings,
    this.title,
    this.imageType,
  });

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
  num? servings;

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
  String? imageType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddMealPlanTemplate200ResponseItemsInnerValue &&
    other.id == id &&
    other.servings == servings &&
    other.title == title &&
    other.imageType == imageType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (servings == null ? 0 : servings!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (imageType == null ? 0 : imageType!.hashCode);

  @override
  String toString() => 'AddMealPlanTemplate200ResponseItemsInnerValue[id=$id, servings=$servings, title=$title, imageType=$imageType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.servings != null) {
      json[r'servings'] = this.servings;
    } else {
      json[r'servings'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.imageType != null) {
      json[r'imageType'] = this.imageType;
    } else {
      json[r'imageType'] = null;
    }
    return json;
  }

  /// Returns a new [AddMealPlanTemplate200ResponseItemsInnerValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddMealPlanTemplate200ResponseItemsInnerValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddMealPlanTemplate200ResponseItemsInnerValue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddMealPlanTemplate200ResponseItemsInnerValue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddMealPlanTemplate200ResponseItemsInnerValue(
        id: mapValueOfType<int>(json, r'id'),
        servings: num.parse('${json[r'servings']}'),
        title: mapValueOfType<String>(json, r'title'),
        imageType: mapValueOfType<String>(json, r'imageType'),
      );
    }
    return null;
  }

  static List<AddMealPlanTemplate200ResponseItemsInnerValue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddMealPlanTemplate200ResponseItemsInnerValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddMealPlanTemplate200ResponseItemsInnerValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddMealPlanTemplate200ResponseItemsInnerValue> mapFromJson(dynamic json) {
    final map = <String, AddMealPlanTemplate200ResponseItemsInnerValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddMealPlanTemplate200ResponseItemsInnerValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddMealPlanTemplate200ResponseItemsInnerValue-objects as value to a dart map
  static Map<String, List<AddMealPlanTemplate200ResponseItemsInnerValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddMealPlanTemplate200ResponseItemsInnerValue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddMealPlanTemplate200ResponseItemsInnerValue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

