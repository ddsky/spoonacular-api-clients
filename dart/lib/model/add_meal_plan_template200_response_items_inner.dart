//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AddMealPlanTemplate200ResponseItemsInner {
  /// Returns a new [AddMealPlanTemplate200ResponseItemsInner] instance.
  AddMealPlanTemplate200ResponseItemsInner({
    required this.day,
    required this.slot,
    required this.position,
    required this.type,
    this.value,
  });

  int day;

  int slot;

  int position;

  String type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AddMealPlanTemplate200ResponseItemsInnerValue? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddMealPlanTemplate200ResponseItemsInner &&
    other.day == day &&
    other.slot == slot &&
    other.position == position &&
    other.type == type &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (day.hashCode) +
    (slot.hashCode) +
    (position.hashCode) +
    (type.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'AddMealPlanTemplate200ResponseItemsInner[day=$day, slot=$slot, position=$position, type=$type, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'day'] = this.day;
      json[r'slot'] = this.slot;
      json[r'position'] = this.position;
      json[r'type'] = this.type;
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [AddMealPlanTemplate200ResponseItemsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddMealPlanTemplate200ResponseItemsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddMealPlanTemplate200ResponseItemsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddMealPlanTemplate200ResponseItemsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddMealPlanTemplate200ResponseItemsInner(
        day: mapValueOfType<int>(json, r'day')!,
        slot: mapValueOfType<int>(json, r'slot')!,
        position: mapValueOfType<int>(json, r'position')!,
        type: mapValueOfType<String>(json, r'type')!,
        value: AddMealPlanTemplate200ResponseItemsInnerValue.fromJson(json[r'value']),
      );
    }
    return null;
  }

  static List<AddMealPlanTemplate200ResponseItemsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddMealPlanTemplate200ResponseItemsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddMealPlanTemplate200ResponseItemsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddMealPlanTemplate200ResponseItemsInner> mapFromJson(dynamic json) {
    final map = <String, AddMealPlanTemplate200ResponseItemsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddMealPlanTemplate200ResponseItemsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddMealPlanTemplate200ResponseItemsInner-objects as value to a dart map
  static Map<String, List<AddMealPlanTemplate200ResponseItemsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddMealPlanTemplate200ResponseItemsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddMealPlanTemplate200ResponseItemsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'day',
    'slot',
    'position',
    'type',
  };
}

