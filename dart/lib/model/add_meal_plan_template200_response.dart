//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AddMealPlanTemplate200Response {
  /// Returns a new [AddMealPlanTemplate200Response] instance.
  AddMealPlanTemplate200Response({
    required this.name,
    this.items = const {},
    required this.publishAsPublic,
  });

  String name;

  Set<AddMealPlanTemplate200ResponseItemsInner> items;

  bool publishAsPublic;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddMealPlanTemplate200Response &&
    other.name == name &&
    _deepEquality.equals(other.items, items) &&
    other.publishAsPublic == publishAsPublic;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (items.hashCode) +
    (publishAsPublic.hashCode);

  @override
  String toString() => 'AddMealPlanTemplate200Response[name=$name, items=$items, publishAsPublic=$publishAsPublic]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'items'] = this.items.toList(growable: false);
      json[r'publishAsPublic'] = this.publishAsPublic;
    return json;
  }

  /// Returns a new [AddMealPlanTemplate200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddMealPlanTemplate200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddMealPlanTemplate200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddMealPlanTemplate200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddMealPlanTemplate200Response(
        name: mapValueOfType<String>(json, r'name')!,
        items: AddMealPlanTemplate200ResponseItemsInner.listFromJson(json[r'items']).toSet(),
        publishAsPublic: mapValueOfType<bool>(json, r'publishAsPublic')!,
      );
    }
    return null;
  }

  static List<AddMealPlanTemplate200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddMealPlanTemplate200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddMealPlanTemplate200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddMealPlanTemplate200Response> mapFromJson(dynamic json) {
    final map = <String, AddMealPlanTemplate200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddMealPlanTemplate200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddMealPlanTemplate200Response-objects as value to a dart map
  static Map<String, List<AddMealPlanTemplate200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddMealPlanTemplate200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddMealPlanTemplate200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'items',
    'publishAsPublic',
  };
}

