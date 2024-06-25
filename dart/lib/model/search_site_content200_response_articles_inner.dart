//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchSiteContent200ResponseArticlesInner {
  /// Returns a new [SearchSiteContent200ResponseArticlesInner] instance.
  SearchSiteContent200ResponseArticlesInner({
    this.dataPoints = const {},
    required this.image,
    required this.link,
    required this.name,
  });

  Set<SearchSiteContent200ResponseArticlesInnerDataPointsInner> dataPoints;

  String image;

  String link;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchSiteContent200ResponseArticlesInner &&
    _deepEquality.equals(other.dataPoints, dataPoints) &&
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
  String toString() => 'SearchSiteContent200ResponseArticlesInner[dataPoints=$dataPoints, image=$image, link=$link, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'dataPoints'] = this.dataPoints.toList(growable: false);
      json[r'image'] = this.image;
      json[r'link'] = this.link;
      json[r'name'] = this.name;
    return json;
  }

  /// Returns a new [SearchSiteContent200ResponseArticlesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchSiteContent200ResponseArticlesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchSiteContent200ResponseArticlesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchSiteContent200ResponseArticlesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchSiteContent200ResponseArticlesInner(
        dataPoints: SearchSiteContent200ResponseArticlesInnerDataPointsInner.listFromJson(json[r'dataPoints']).toSet(),
        image: mapValueOfType<String>(json, r'image')!,
        link: mapValueOfType<String>(json, r'link')!,
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<SearchSiteContent200ResponseArticlesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchSiteContent200ResponseArticlesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchSiteContent200ResponseArticlesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchSiteContent200ResponseArticlesInner> mapFromJson(dynamic json) {
    final map = <String, SearchSiteContent200ResponseArticlesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchSiteContent200ResponseArticlesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchSiteContent200ResponseArticlesInner-objects as value to a dart map
  static Map<String, List<SearchSiteContent200ResponseArticlesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchSiteContent200ResponseArticlesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchSiteContent200ResponseArticlesInner.listFromJson(entry.value, growable: growable,);
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

