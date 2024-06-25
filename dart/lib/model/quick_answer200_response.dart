//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QuickAnswer200Response {
  /// Returns a new [QuickAnswer200Response] instance.
  QuickAnswer200Response({
    required this.answer,
    required this.image,
  });

  String answer;

  String image;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QuickAnswer200Response &&
    other.answer == answer &&
    other.image == image;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (answer.hashCode) +
    (image.hashCode);

  @override
  String toString() => 'QuickAnswer200Response[answer=$answer, image=$image]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'answer'] = this.answer;
      json[r'image'] = this.image;
    return json;
  }

  /// Returns a new [QuickAnswer200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QuickAnswer200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QuickAnswer200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QuickAnswer200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QuickAnswer200Response(
        answer: mapValueOfType<String>(json, r'answer')!,
        image: mapValueOfType<String>(json, r'image')!,
      );
    }
    return null;
  }

  static List<QuickAnswer200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QuickAnswer200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuickAnswer200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QuickAnswer200Response> mapFromJson(dynamic json) {
    final map = <String, QuickAnswer200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QuickAnswer200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QuickAnswer200Response-objects as value to a dart map
  static Map<String, List<QuickAnswer200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QuickAnswer200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QuickAnswer200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'answer',
    'image',
  };
}

