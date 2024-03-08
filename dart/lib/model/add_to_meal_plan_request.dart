//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AddToMealPlanRequest {
  /// Returns a new [AddToMealPlanRequest] instance.
  AddToMealPlanRequest({
    required this.username,
    required this.hash,
  });

  /// The username.
  String username;

  /// The private hash for the username.
  String hash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddToMealPlanRequest &&
    other.username == username &&
    other.hash == hash;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username.hashCode) +
    (hash.hashCode);

  @override
  String toString() => 'AddToMealPlanRequest[username=$username, hash=$hash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'username'] = this.username;
      json[r'hash'] = this.hash;
    return json;
  }

  /// Returns a new [AddToMealPlanRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddToMealPlanRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddToMealPlanRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddToMealPlanRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddToMealPlanRequest(
        username: mapValueOfType<String>(json, r'username')!,
        hash: mapValueOfType<String>(json, r'hash')!,
      );
    }
    return null;
  }

  static List<AddToMealPlanRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddToMealPlanRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddToMealPlanRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddToMealPlanRequest> mapFromJson(dynamic json) {
    final map = <String, AddToMealPlanRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddToMealPlanRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddToMealPlanRequest-objects as value to a dart map
  static Map<String, List<AddToMealPlanRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddToMealPlanRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddToMealPlanRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'username',
    'hash',
  };
}

