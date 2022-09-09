//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchSiteContent200ResponseGroceryProductsInner {
  /// Returns a new [SearchSiteContent200ResponseGroceryProductsInner] instance.
  SearchSiteContent200ResponseGroceryProductsInner({
    this.dataPoints = const {},
    required this.image,
    required this.link,
    required this.name,
  });

  Set<SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner> dataPoints;

  String image;

  String link;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchSiteContent200ResponseGroceryProductsInner &&
     other.dataPoints == dataPoints &&
     other.image == image &&
     other.link == link &&
     other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataPoints.hashCode) +
    (image.hashCode) +
    (link.hashCode) +
    (name.hashCode);

  @override
  String toString() => 'SearchSiteContent200ResponseGroceryProductsInner[dataPoints=$dataPoints, image=$image, link=$link, name=$name]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'dataPoints'] = dataPoints;
      _json[r'image'] = image;
      _json[r'link'] = link;
      _json[r'name'] = name;
    return _json;
  }

  /// Returns a new [SearchSiteContent200ResponseGroceryProductsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchSiteContent200ResponseGroceryProductsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchSiteContent200ResponseGroceryProductsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchSiteContent200ResponseGroceryProductsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchSiteContent200ResponseGroceryProductsInner(
        dataPoints: SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner.listFromJson(json[r'dataPoints']) ?? const {},
        image: mapValueOfType<String>(json, r'image')!,
        link: mapValueOfType<String>(json, r'link')!,
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<SearchSiteContent200ResponseGroceryProductsInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchSiteContent200ResponseGroceryProductsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchSiteContent200ResponseGroceryProductsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchSiteContent200ResponseGroceryProductsInner> mapFromJson(dynamic json) {
    final map = <String, SearchSiteContent200ResponseGroceryProductsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchSiteContent200ResponseGroceryProductsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchSiteContent200ResponseGroceryProductsInner-objects as value to a dart map
  static Map<String, List<SearchSiteContent200ResponseGroceryProductsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchSiteContent200ResponseGroceryProductsInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchSiteContent200ResponseGroceryProductsInner.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'image',
    'link',
    'name',
  };
}

