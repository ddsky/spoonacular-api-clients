//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeleteFromMealPlanRequest {
  /// Returns a new [DeleteFromMealPlanRequest] instance.
  DeleteFromMealPlanRequest({
    required this.username,
    required this.id,
    required this.hash,
  });

  /// The username.
  String username;

  /// The shopping list item id.
  num id;

  /// The private hash for the username.
  String hash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeleteFromMealPlanRequest &&
    other.username == username &&
    other.id == id &&
    other.hash == hash;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username.hashCode) +
    (id.hashCode) +
    (hash.hashCode);

  @override
  String toString() => 'DeleteFromMealPlanRequest[username=$username, id=$id, hash=$hash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'username'] = this.username;
      json[r'id'] = this.id;
      json[r'hash'] = this.hash;
    return json;
  }

  /// Returns a new [DeleteFromMealPlanRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteFromMealPlanRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeleteFromMealPlanRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeleteFromMealPlanRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeleteFromMealPlanRequest(
        username: mapValueOfType<String>(json, r'username')!,
        id: num.parse('${json[r'id']}'),
        hash: mapValueOfType<String>(json, r'hash')!,
      );
    }
    return null;
  }

  static List<DeleteFromMealPlanRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteFromMealPlanRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteFromMealPlanRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteFromMealPlanRequest> mapFromJson(dynamic json) {
    final map = <String, DeleteFromMealPlanRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteFromMealPlanRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteFromMealPlanRequest-objects as value to a dart map
  static Map<String, List<DeleteFromMealPlanRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeleteFromMealPlanRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeleteFromMealPlanRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'username',
    'id',
    'hash',
  };
}

