//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImageAnalysisByURL200ResponseRecipesInner {
  /// Returns a new [ImageAnalysisByURL200ResponseRecipesInner] instance.
  ImageAnalysisByURL200ResponseRecipesInner({
    required this.id,
    required this.title,
    required this.imageType,
    required this.url,
  });

  int id;

  String title;

  String imageType;

  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImageAnalysisByURL200ResponseRecipesInner &&
    other.id == id &&
    other.title == title &&
    other.imageType == imageType &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (imageType.hashCode) +
    (url.hashCode);

  @override
  String toString() => 'ImageAnalysisByURL200ResponseRecipesInner[id=$id, title=$title, imageType=$imageType, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
      json[r'imageType'] = this.imageType;
      json[r'url'] = this.url;
    return json;
  }

  /// Returns a new [ImageAnalysisByURL200ResponseRecipesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageAnalysisByURL200ResponseRecipesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImageAnalysisByURL200ResponseRecipesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImageAnalysisByURL200ResponseRecipesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageAnalysisByURL200ResponseRecipesInner(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        imageType: mapValueOfType<String>(json, r'imageType')!,
        url: mapValueOfType<String>(json, r'url')!,
      );
    }
    return null;
  }

  static List<ImageAnalysisByURL200ResponseRecipesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImageAnalysisByURL200ResponseRecipesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageAnalysisByURL200ResponseRecipesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageAnalysisByURL200ResponseRecipesInner> mapFromJson(dynamic json) {
    final map = <String, ImageAnalysisByURL200ResponseRecipesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageAnalysisByURL200ResponseRecipesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageAnalysisByURL200ResponseRecipesInner-objects as value to a dart map
  static Map<String, List<ImageAnalysisByURL200ResponseRecipesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImageAnalysisByURL200ResponseRecipesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImageAnalysisByURL200ResponseRecipesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'imageType',
    'url',
  };
}

