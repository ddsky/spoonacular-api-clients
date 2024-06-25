//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetMealPlanWeek200ResponseDaysInnerItemsInner {
  /// Returns a new [GetMealPlanWeek200ResponseDaysInnerItemsInner] instance.
  GetMealPlanWeek200ResponseDaysInnerItemsInner({
    required this.id,
    required this.slot,
    required this.position,
    required this.type,
    this.value,
  });

  int id;

  int slot;

  int position;

  String type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetMealPlanWeek200ResponseDaysInnerItemsInnerValue? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetMealPlanWeek200ResponseDaysInnerItemsInner &&
    other.id == id &&
    other.slot == slot &&
    other.position == position &&
    other.type == type &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (slot.hashCode) +
    (position.hashCode) +
    (type.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'GetMealPlanWeek200ResponseDaysInnerItemsInner[id=$id, slot=$slot, position=$position, type=$type, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
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

  /// Returns a new [GetMealPlanWeek200ResponseDaysInnerItemsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetMealPlanWeek200ResponseDaysInnerItemsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetMealPlanWeek200ResponseDaysInnerItemsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetMealPlanWeek200ResponseDaysInnerItemsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetMealPlanWeek200ResponseDaysInnerItemsInner(
        id: mapValueOfType<int>(json, r'id')!,
        slot: mapValueOfType<int>(json, r'slot')!,
        position: mapValueOfType<int>(json, r'position')!,
        type: mapValueOfType<String>(json, r'type')!,
        value: GetMealPlanWeek200ResponseDaysInnerItemsInnerValue.fromJson(json[r'value']),
      );
    }
    return null;
  }

  static List<GetMealPlanWeek200ResponseDaysInnerItemsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetMealPlanWeek200ResponseDaysInnerItemsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetMealPlanWeek200ResponseDaysInnerItemsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetMealPlanWeek200ResponseDaysInnerItemsInner> mapFromJson(dynamic json) {
    final map = <String, GetMealPlanWeek200ResponseDaysInnerItemsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetMealPlanWeek200ResponseDaysInnerItemsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetMealPlanWeek200ResponseDaysInnerItemsInner-objects as value to a dart map
  static Map<String, List<GetMealPlanWeek200ResponseDaysInnerItemsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetMealPlanWeek200ResponseDaysInnerItemsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetMealPlanWeek200ResponseDaysInnerItemsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'slot',
    'position',
    'type',
  };
}

