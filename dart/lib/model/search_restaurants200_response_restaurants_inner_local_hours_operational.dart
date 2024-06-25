//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
  /// Returns a new [SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational] instance.
  SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational({
    this.monday,
    this.tuesday,
    this.wednesday,
    this.thursday,
    this.friday,
    this.saturday,
    this.sunday,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? monday;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tuesday;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? wednesday;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thursday;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? friday;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? saturday;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sunday;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational &&
    other.monday == monday &&
    other.tuesday == tuesday &&
    other.wednesday == wednesday &&
    other.thursday == thursday &&
    other.friday == friday &&
    other.saturday == saturday &&
    other.sunday == sunday;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (monday == null ? 0 : monday!.hashCode) +
    (tuesday == null ? 0 : tuesday!.hashCode) +
    (wednesday == null ? 0 : wednesday!.hashCode) +
    (thursday == null ? 0 : thursday!.hashCode) +
    (friday == null ? 0 : friday!.hashCode) +
    (saturday == null ? 0 : saturday!.hashCode) +
    (sunday == null ? 0 : sunday!.hashCode);

  @override
  String toString() => 'SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational[monday=$monday, tuesday=$tuesday, wednesday=$wednesday, thursday=$thursday, friday=$friday, saturday=$saturday, sunday=$sunday]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.monday != null) {
      json[r'Monday'] = this.monday;
    } else {
      json[r'Monday'] = null;
    }
    if (this.tuesday != null) {
      json[r'Tuesday'] = this.tuesday;
    } else {
      json[r'Tuesday'] = null;
    }
    if (this.wednesday != null) {
      json[r'Wednesday'] = this.wednesday;
    } else {
      json[r'Wednesday'] = null;
    }
    if (this.thursday != null) {
      json[r'Thursday'] = this.thursday;
    } else {
      json[r'Thursday'] = null;
    }
    if (this.friday != null) {
      json[r'Friday'] = this.friday;
    } else {
      json[r'Friday'] = null;
    }
    if (this.saturday != null) {
      json[r'Saturday'] = this.saturday;
    } else {
      json[r'Saturday'] = null;
    }
    if (this.sunday != null) {
      json[r'Sunday'] = this.sunday;
    } else {
      json[r'Sunday'] = null;
    }
    return json;
  }

  /// Returns a new [SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational(
        monday: mapValueOfType<String>(json, r'Monday'),
        tuesday: mapValueOfType<String>(json, r'Tuesday'),
        wednesday: mapValueOfType<String>(json, r'Wednesday'),
        thursday: mapValueOfType<String>(json, r'Thursday'),
        friday: mapValueOfType<String>(json, r'Friday'),
        saturday: mapValueOfType<String>(json, r'Saturday'),
        sunday: mapValueOfType<String>(json, r'Sunday'),
      );
    }
    return null;
  }

  static List<SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational> mapFromJson(dynamic json) {
    final map = <String, SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational-objects as value to a dart map
  static Map<String, List<SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

