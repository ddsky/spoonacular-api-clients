//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetComparableProducts200ResponseComparableProductsProteinInner {
  /// Returns a new [GetComparableProducts200ResponseComparableProductsProteinInner] instance.
  GetComparableProducts200ResponseComparableProductsProteinInner({
    required this.difference,
    required this.id,
    required this.image,
    required this.title,
  });

  num difference;

  int id;

  String image;

  String title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetComparableProducts200ResponseComparableProductsProteinInner &&
    other.difference == difference &&
    other.id == id &&
    other.image == image &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (difference.hashCode) +
    (id.hashCode) +
    (image.hashCode) +
    (title.hashCode);

  @override
  String toString() => 'GetComparableProducts200ResponseComparableProductsProteinInner[difference=$difference, id=$id, image=$image, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'difference'] = this.difference;
      json[r'id'] = this.id;
      json[r'image'] = this.image;
      json[r'title'] = this.title;
    return json;
  }

  /// Returns a new [GetComparableProducts200ResponseComparableProductsProteinInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetComparableProducts200ResponseComparableProductsProteinInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetComparableProducts200ResponseComparableProductsProteinInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetComparableProducts200ResponseComparableProductsProteinInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetComparableProducts200ResponseComparableProductsProteinInner(
        difference: num.parse('${json[r'difference']}'),
        id: mapValueOfType<int>(json, r'id')!,
        image: mapValueOfType<String>(json, r'image')!,
        title: mapValueOfType<String>(json, r'title')!,
      );
    }
    return null;
  }

  static List<GetComparableProducts200ResponseComparableProductsProteinInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetComparableProducts200ResponseComparableProductsProteinInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetComparableProducts200ResponseComparableProductsProteinInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetComparableProducts200ResponseComparableProductsProteinInner> mapFromJson(dynamic json) {
    final map = <String, GetComparableProducts200ResponseComparableProductsProteinInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetComparableProducts200ResponseComparableProductsProteinInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetComparableProducts200ResponseComparableProductsProteinInner-objects as value to a dart map
  static Map<String, List<GetComparableProducts200ResponseComparableProductsProteinInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetComparableProducts200ResponseComparableProductsProteinInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetComparableProducts200ResponseComparableProductsProteinInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'difference',
    'id',
    'image',
    'title',
  };
}

