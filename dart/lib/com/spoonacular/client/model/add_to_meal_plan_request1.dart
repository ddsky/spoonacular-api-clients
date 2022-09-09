//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AddToMealPlanRequest1 {
  /// Returns a new [AddToMealPlanRequest1] instance.
  AddToMealPlanRequest1({
    required this.date,
    required this.slot,
    required this.position,
    required this.type,
    required this.value,
  });

  num date;

  int slot;

  int position;

  String type;

  AddToMealPlanRequest1Value value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddToMealPlanRequest1 &&
     other.date == date &&
     other.slot == slot &&
     other.position == position &&
     other.type == type &&
     other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (date.hashCode) +
    (slot.hashCode) +
    (position.hashCode) +
    (type.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'AddToMealPlanRequest1[date=$date, slot=$slot, position=$position, type=$type, value=$value]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'date'] = date;
      _json[r'slot'] = slot;
      _json[r'position'] = position;
      _json[r'type'] = type;
      _json[r'value'] = value;
    return _json;
  }

  /// Returns a new [AddToMealPlanRequest1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddToMealPlanRequest1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddToMealPlanRequest1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddToMealPlanRequest1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddToMealPlanRequest1(
        date: json[r'date'] == null
            ? null
            : num.parse(json[r'date'].toString()),
        slot: mapValueOfType<int>(json, r'slot')!,
        position: mapValueOfType<int>(json, r'position')!,
        type: mapValueOfType<String>(json, r'type')!,
        value: AddToMealPlanRequest1Value.fromJson(json[r'value'])!,
      );
    }
    return null;
  }

  static List<AddToMealPlanRequest1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddToMealPlanRequest1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddToMealPlanRequest1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddToMealPlanRequest1> mapFromJson(dynamic json) {
    final map = <String, AddToMealPlanRequest1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddToMealPlanRequest1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddToMealPlanRequest1-objects as value to a dart map
  static Map<String, List<AddToMealPlanRequest1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddToMealPlanRequest1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddToMealPlanRequest1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'date',
    'slot',
    'position',
    'type',
    'value',
  };
}

