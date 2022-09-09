//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ClassifyGroceryProduct200Response {
  /// Returns a new [ClassifyGroceryProduct200Response] instance.
  ClassifyGroceryProduct200Response({
    required this.cleanTitle,
    required this.image,
    required this.category,
    this.breadcrumbs = const [],
    required this.usdaCode,
  });

  String cleanTitle;

  String image;

  String category;

  List<String> breadcrumbs;

  int usdaCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClassifyGroceryProduct200Response &&
     other.cleanTitle == cleanTitle &&
     other.image == image &&
     other.category == category &&
     other.breadcrumbs == breadcrumbs &&
     other.usdaCode == usdaCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cleanTitle.hashCode) +
    (image.hashCode) +
    (category.hashCode) +
    (breadcrumbs.hashCode) +
    (usdaCode.hashCode);

  @override
  String toString() => 'ClassifyGroceryProduct200Response[cleanTitle=$cleanTitle, image=$image, category=$category, breadcrumbs=$breadcrumbs, usdaCode=$usdaCode]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'cleanTitle'] = cleanTitle;
      _json[r'image'] = image;
      _json[r'category'] = category;
      _json[r'breadcrumbs'] = breadcrumbs;
      _json[r'usdaCode'] = usdaCode;
    return _json;
  }

  /// Returns a new [ClassifyGroceryProduct200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClassifyGroceryProduct200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClassifyGroceryProduct200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClassifyGroceryProduct200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClassifyGroceryProduct200Response(
        cleanTitle: mapValueOfType<String>(json, r'cleanTitle')!,
        image: mapValueOfType<String>(json, r'image')!,
        category: mapValueOfType<String>(json, r'category')!,
        breadcrumbs: json[r'breadcrumbs'] is List
            ? (json[r'breadcrumbs'] as List).cast<String>()
            : const [],
        usdaCode: mapValueOfType<int>(json, r'usdaCode')!,
      );
    }
    return null;
  }

  static List<ClassifyGroceryProduct200Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClassifyGroceryProduct200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClassifyGroceryProduct200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClassifyGroceryProduct200Response> mapFromJson(dynamic json) {
    final map = <String, ClassifyGroceryProduct200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClassifyGroceryProduct200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClassifyGroceryProduct200Response-objects as value to a dart map
  static Map<String, List<ClassifyGroceryProduct200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClassifyGroceryProduct200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClassifyGroceryProduct200Response.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'cleanTitle',
    'image',
    'category',
    'breadcrumbs',
    'usdaCode',
  };
}

