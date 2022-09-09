//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateShoppingListRequest {
  /// Returns a new [GenerateShoppingListRequest] instance.
  GenerateShoppingListRequest({
    required this.username,
    required this.startDate,
    required this.endDate,
    required this.hash,
  });

  /// The username.
  String username;

  /// The start date in the format yyyy-mm-dd.
  String startDate;

  /// The end date in the format yyyy-mm-dd.
  String endDate;

  /// The private hash for the username.
  String hash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateShoppingListRequest &&
     other.username == username &&
     other.startDate == startDate &&
     other.endDate == endDate &&
     other.hash == hash;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username.hashCode) +
    (startDate.hashCode) +
    (endDate.hashCode) +
    (hash.hashCode);

  @override
  String toString() => 'GenerateShoppingListRequest[username=$username, startDate=$startDate, endDate=$endDate, hash=$hash]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'username'] = username;
      _json[r'start-date'] = startDate;
      _json[r'end-date'] = endDate;
      _json[r'hash'] = hash;
    return _json;
  }

  /// Returns a new [GenerateShoppingListRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateShoppingListRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateShoppingListRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateShoppingListRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateShoppingListRequest(
        username: mapValueOfType<String>(json, r'username')!,
        startDate: mapValueOfType<String>(json, r'start-date')!,
        endDate: mapValueOfType<String>(json, r'end-date')!,
        hash: mapValueOfType<String>(json, r'hash')!,
      );
    }
    return null;
  }

  static List<GenerateShoppingListRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateShoppingListRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateShoppingListRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateShoppingListRequest> mapFromJson(dynamic json) {
    final map = <String, GenerateShoppingListRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateShoppingListRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateShoppingListRequest-objects as value to a dart map
  static Map<String, List<GenerateShoppingListRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateShoppingListRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateShoppingListRequest.listFromJson(entry.value, growable: growable,);
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
    'start-date',
    'end-date',
    'hash',
  };
}

