//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetMealPlanWeek200ResponseDaysInnerItemsInnerValue {
  /// Returns a new [GetMealPlanWeek200ResponseDaysInnerItemsInnerValue] instance.
  GetMealPlanWeek200ResponseDaysInnerItemsInnerValue({
    required this.servings,
    required this.id,
    required this.title,
    required this.imageType,
  });

  num servings;

  num id;

  String title;

  String imageType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetMealPlanWeek200ResponseDaysInnerItemsInnerValue &&
    other.servings == servings &&
    other.id == id &&
    other.title == title &&
    other.imageType == imageType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (servings.hashCode) +
    (id.hashCode) +
    (title.hashCode) +
    (imageType.hashCode);

  @override
  String toString() => 'GetMealPlanWeek200ResponseDaysInnerItemsInnerValue[servings=$servings, id=$id, title=$title, imageType=$imageType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'servings'] = this.servings;
      json[r'id'] = this.id;
      json[r'title'] = this.title;
      json[r'imageType'] = this.imageType;
    return json;
  }

  /// Returns a new [GetMealPlanWeek200ResponseDaysInnerItemsInnerValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetMealPlanWeek200ResponseDaysInnerItemsInnerValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetMealPlanWeek200ResponseDaysInnerItemsInnerValue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetMealPlanWeek200ResponseDaysInnerItemsInnerValue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetMealPlanWeek200ResponseDaysInnerItemsInnerValue(
        servings: num.parse('${json[r'servings']}'),
        id: num.parse('${json[r'id']}'),
        title: mapValueOfType<String>(json, r'title')!,
        imageType: mapValueOfType<String>(json, r'imageType')!,
      );
    }
    return null;
  }

  static List<GetMealPlanWeek200ResponseDaysInnerItemsInnerValue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetMealPlanWeek200ResponseDaysInnerItemsInnerValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetMealPlanWeek200ResponseDaysInnerItemsInnerValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetMealPlanWeek200ResponseDaysInnerItemsInnerValue> mapFromJson(dynamic json) {
    final map = <String, GetMealPlanWeek200ResponseDaysInnerItemsInnerValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetMealPlanWeek200ResponseDaysInnerItemsInnerValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetMealPlanWeek200ResponseDaysInnerItemsInnerValue-objects as value to a dart map
  static Map<String, List<GetMealPlanWeek200ResponseDaysInnerItemsInnerValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetMealPlanWeek200ResponseDaysInnerItemsInnerValue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetMealPlanWeek200ResponseDaysInnerItemsInnerValue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'servings',
    'id',
    'title',
    'imageType',
  };
}

