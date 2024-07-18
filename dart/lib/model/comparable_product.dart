//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ComparableProduct {
  /// Returns a new [ComparableProduct] instance.
  ComparableProduct({
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
  bool operator ==(Object other) => identical(this, other) || other is ComparableProduct &&
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
  String toString() => 'ComparableProduct[difference=$difference, id=$id, image=$image, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'difference'] = this.difference;
      json[r'id'] = this.id;
      json[r'image'] = this.image;
      json[r'title'] = this.title;
    return json;
  }

  /// Returns a new [ComparableProduct] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ComparableProduct? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ComparableProduct[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ComparableProduct[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ComparableProduct(
        difference: num.parse('${json[r'difference']}'),
        id: mapValueOfType<int>(json, r'id')!,
        image: mapValueOfType<String>(json, r'image')!,
        title: mapValueOfType<String>(json, r'title')!,
      );
    }
    return null;
  }

  static List<ComparableProduct> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ComparableProduct>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ComparableProduct.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ComparableProduct> mapFromJson(dynamic json) {
    final map = <String, ComparableProduct>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ComparableProduct.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ComparableProduct-objects as value to a dart map
  static Map<String, List<ComparableProduct>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ComparableProduct>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ComparableProduct.listFromJson(entry.value, growable: growable,);
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

