//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ClassifyGroceryProductBulk200ResponseInner {
  /// Returns a new [ClassifyGroceryProductBulk200ResponseInner] instance.
  ClassifyGroceryProductBulk200ResponseInner({
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
  bool operator ==(Object other) => identical(this, other) || other is ClassifyGroceryProductBulk200ResponseInner &&
    other.cleanTitle == cleanTitle &&
    other.image == image &&
    other.category == category &&
    _deepEquality.equals(other.breadcrumbs, breadcrumbs) &&
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
  String toString() => 'ClassifyGroceryProductBulk200ResponseInner[cleanTitle=$cleanTitle, image=$image, category=$category, breadcrumbs=$breadcrumbs, usdaCode=$usdaCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'cleanTitle'] = this.cleanTitle;
      json[r'image'] = this.image;
      json[r'category'] = this.category;
      json[r'breadcrumbs'] = this.breadcrumbs;
      json[r'usdaCode'] = this.usdaCode;
    return json;
  }

  /// Returns a new [ClassifyGroceryProductBulk200ResponseInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClassifyGroceryProductBulk200ResponseInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClassifyGroceryProductBulk200ResponseInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClassifyGroceryProductBulk200ResponseInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClassifyGroceryProductBulk200ResponseInner(
        cleanTitle: mapValueOfType<String>(json, r'cleanTitle')!,
        image: mapValueOfType<String>(json, r'image')!,
        category: mapValueOfType<String>(json, r'category')!,
        breadcrumbs: json[r'breadcrumbs'] is Iterable
            ? (json[r'breadcrumbs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        usdaCode: mapValueOfType<int>(json, r'usdaCode')!,
      );
    }
    return null;
  }

  static List<ClassifyGroceryProductBulk200ResponseInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClassifyGroceryProductBulk200ResponseInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClassifyGroceryProductBulk200ResponseInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClassifyGroceryProductBulk200ResponseInner> mapFromJson(dynamic json) {
    final map = <String, ClassifyGroceryProductBulk200ResponseInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClassifyGroceryProductBulk200ResponseInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClassifyGroceryProductBulk200ResponseInner-objects as value to a dart map
  static Map<String, List<ClassifyGroceryProductBulk200ResponseInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClassifyGroceryProductBulk200ResponseInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClassifyGroceryProductBulk200ResponseInner.listFromJson(entry.value, growable: growable,);
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

