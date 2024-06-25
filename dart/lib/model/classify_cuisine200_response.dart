//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ClassifyCuisine200Response {
  /// Returns a new [ClassifyCuisine200Response] instance.
  ClassifyCuisine200Response({
    required this.cuisine,
    this.cuisines = const [],
    required this.confidence,
  });

  String cuisine;

  List<String> cuisines;

  num confidence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClassifyCuisine200Response &&
    other.cuisine == cuisine &&
    _deepEquality.equals(other.cuisines, cuisines) &&
    other.confidence == confidence;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cuisine.hashCode) +
    (cuisines.hashCode) +
    (confidence.hashCode);

  @override
  String toString() => 'ClassifyCuisine200Response[cuisine=$cuisine, cuisines=$cuisines, confidence=$confidence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'cuisine'] = this.cuisine;
      json[r'cuisines'] = this.cuisines;
      json[r'confidence'] = this.confidence;
    return json;
  }

  /// Returns a new [ClassifyCuisine200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClassifyCuisine200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClassifyCuisine200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClassifyCuisine200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClassifyCuisine200Response(
        cuisine: mapValueOfType<String>(json, r'cuisine')!,
        cuisines: json[r'cuisines'] is Iterable
            ? (json[r'cuisines'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        confidence: num.parse('${json[r'confidence']}'),
      );
    }
    return null;
  }

  static List<ClassifyCuisine200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClassifyCuisine200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClassifyCuisine200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClassifyCuisine200Response> mapFromJson(dynamic json) {
    final map = <String, ClassifyCuisine200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClassifyCuisine200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClassifyCuisine200Response-objects as value to a dart map
  static Map<String, List<ClassifyCuisine200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClassifyCuisine200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClassifyCuisine200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'cuisine',
    'cuisines',
    'confidence',
  };
}

