//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ComputeGlycemicLoadRequest {
  /// Returns a new [ComputeGlycemicLoadRequest] instance.
  ComputeGlycemicLoadRequest({
    this.ingredients = const [],
  });

  List<String> ingredients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ComputeGlycemicLoadRequest &&
     other.ingredients == ingredients;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ingredients.hashCode);

  @override
  String toString() => 'ComputeGlycemicLoadRequest[ingredients=$ingredients]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'ingredients'] = ingredients;
    return _json;
  }

  /// Returns a new [ComputeGlycemicLoadRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ComputeGlycemicLoadRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ComputeGlycemicLoadRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ComputeGlycemicLoadRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ComputeGlycemicLoadRequest(
        ingredients: json[r'ingredients'] is List
            ? (json[r'ingredients'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<ComputeGlycemicLoadRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ComputeGlycemicLoadRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ComputeGlycemicLoadRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ComputeGlycemicLoadRequest> mapFromJson(dynamic json) {
    final map = <String, ComputeGlycemicLoadRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ComputeGlycemicLoadRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ComputeGlycemicLoadRequest-objects as value to a dart map
  static Map<String, List<ComputeGlycemicLoadRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ComputeGlycemicLoadRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ComputeGlycemicLoadRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ingredients',
  };
}

