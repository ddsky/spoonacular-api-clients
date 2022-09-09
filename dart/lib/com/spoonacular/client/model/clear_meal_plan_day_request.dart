//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ClearMealPlanDayRequest {
  /// Returns a new [ClearMealPlanDayRequest] instance.
  ClearMealPlanDayRequest({
    required this.username,
    required this.date,
    required this.hash,
  });

  /// The username.
  String username;

  /// The date in the format yyyy-mm-dd.
  String date;

  /// The private hash for the username.
  String hash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClearMealPlanDayRequest &&
     other.username == username &&
     other.date == date &&
     other.hash == hash;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username.hashCode) +
    (date.hashCode) +
    (hash.hashCode);

  @override
  String toString() => 'ClearMealPlanDayRequest[username=$username, date=$date, hash=$hash]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'username'] = username;
      _json[r'date'] = date;
      _json[r'hash'] = hash;
    return _json;
  }

  /// Returns a new [ClearMealPlanDayRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClearMealPlanDayRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClearMealPlanDayRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClearMealPlanDayRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClearMealPlanDayRequest(
        username: mapValueOfType<String>(json, r'username')!,
        date: mapValueOfType<String>(json, r'date')!,
        hash: mapValueOfType<String>(json, r'hash')!,
      );
    }
    return null;
  }

  static List<ClearMealPlanDayRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClearMealPlanDayRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClearMealPlanDayRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClearMealPlanDayRequest> mapFromJson(dynamic json) {
    final map = <String, ClearMealPlanDayRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClearMealPlanDayRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClearMealPlanDayRequest-objects as value to a dart map
  static Map<String, List<ClearMealPlanDayRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClearMealPlanDayRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClearMealPlanDayRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'username',
    'date',
    'hash',
  };
}

