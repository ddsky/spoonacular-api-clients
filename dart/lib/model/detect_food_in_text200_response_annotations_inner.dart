//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DetectFoodInText200ResponseAnnotationsInner {
  /// Returns a new [DetectFoodInText200ResponseAnnotationsInner] instance.
  DetectFoodInText200ResponseAnnotationsInner({
    required this.annotation,
    required this.image,
    required this.tag,
  });

  String annotation;

  String image;

  String tag;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DetectFoodInText200ResponseAnnotationsInner &&
    other.annotation == annotation &&
    other.image == image &&
    other.tag == tag;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (annotation.hashCode) +
    (image.hashCode) +
    (tag.hashCode);

  @override
  String toString() => 'DetectFoodInText200ResponseAnnotationsInner[annotation=$annotation, image=$image, tag=$tag]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'annotation'] = this.annotation;
      json[r'image'] = this.image;
      json[r'tag'] = this.tag;
    return json;
  }

  /// Returns a new [DetectFoodInText200ResponseAnnotationsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DetectFoodInText200ResponseAnnotationsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DetectFoodInText200ResponseAnnotationsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DetectFoodInText200ResponseAnnotationsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DetectFoodInText200ResponseAnnotationsInner(
        annotation: mapValueOfType<String>(json, r'annotation')!,
        image: mapValueOfType<String>(json, r'image')!,
        tag: mapValueOfType<String>(json, r'tag')!,
      );
    }
    return null;
  }

  static List<DetectFoodInText200ResponseAnnotationsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DetectFoodInText200ResponseAnnotationsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DetectFoodInText200ResponseAnnotationsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DetectFoodInText200ResponseAnnotationsInner> mapFromJson(dynamic json) {
    final map = <String, DetectFoodInText200ResponseAnnotationsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DetectFoodInText200ResponseAnnotationsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DetectFoodInText200ResponseAnnotationsInner-objects as value to a dart map
  static Map<String, List<DetectFoodInText200ResponseAnnotationsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DetectFoodInText200ResponseAnnotationsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DetectFoodInText200ResponseAnnotationsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'annotation',
    'image',
    'tag',
  };
}

