//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImageClassificationByURL200Response {
  /// Returns a new [ImageClassificationByURL200Response] instance.
  ImageClassificationByURL200Response({
    required this.category,
    required this.probability,
  });

  String category;

  num probability;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImageClassificationByURL200Response &&
     other.category == category &&
     other.probability == probability;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (category.hashCode) +
    (probability.hashCode);

  @override
  String toString() => 'ImageClassificationByURL200Response[category=$category, probability=$probability]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'category'] = category;
      _json[r'probability'] = probability;
    return _json;
  }

  /// Returns a new [ImageClassificationByURL200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageClassificationByURL200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImageClassificationByURL200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImageClassificationByURL200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageClassificationByURL200Response(
        category: mapValueOfType<String>(json, r'category')!,
        probability: json[r'probability'] == null
            ? null
            : num.parse(json[r'probability'].toString()),
      );
    }
    return null;
  }

  static List<ImageClassificationByURL200Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImageClassificationByURL200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageClassificationByURL200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageClassificationByURL200Response> mapFromJson(dynamic json) {
    final map = <String, ImageClassificationByURL200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageClassificationByURL200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageClassificationByURL200Response-objects as value to a dart map
  static Map<String, List<ImageClassificationByURL200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImageClassificationByURL200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageClassificationByURL200Response.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'category',
    'probability',
  };
}

