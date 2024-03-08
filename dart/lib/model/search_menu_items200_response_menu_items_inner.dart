//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchMenuItems200ResponseMenuItemsInner {
  /// Returns a new [SearchMenuItems200ResponseMenuItemsInner] instance.
  SearchMenuItems200ResponseMenuItemsInner({
    required this.id,
    required this.title,
    required this.restaurantChain,
    required this.image,
    required this.imageType,
    this.servings,
  });

  int id;

  String title;

  String restaurantChain;

  String image;

  String imageType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchGroceryProductsByUPC200ResponseServings? servings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchMenuItems200ResponseMenuItemsInner &&
    other.id == id &&
    other.title == title &&
    other.restaurantChain == restaurantChain &&
    other.image == image &&
    other.imageType == imageType &&
    other.servings == servings;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (restaurantChain.hashCode) +
    (image.hashCode) +
    (imageType.hashCode) +
    (servings == null ? 0 : servings!.hashCode);

  @override
  String toString() => 'SearchMenuItems200ResponseMenuItemsInner[id=$id, title=$title, restaurantChain=$restaurantChain, image=$image, imageType=$imageType, servings=$servings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
      json[r'restaurantChain'] = this.restaurantChain;
      json[r'image'] = this.image;
      json[r'imageType'] = this.imageType;
    if (this.servings != null) {
      json[r'servings'] = this.servings;
    } else {
      json[r'servings'] = null;
    }
    return json;
  }

  /// Returns a new [SearchMenuItems200ResponseMenuItemsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchMenuItems200ResponseMenuItemsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchMenuItems200ResponseMenuItemsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchMenuItems200ResponseMenuItemsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchMenuItems200ResponseMenuItemsInner(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        restaurantChain: mapValueOfType<String>(json, r'restaurantChain')!,
        image: mapValueOfType<String>(json, r'image')!,
        imageType: mapValueOfType<String>(json, r'imageType')!,
        servings: SearchGroceryProductsByUPC200ResponseServings.fromJson(json[r'servings']),
      );
    }
    return null;
  }

  static List<SearchMenuItems200ResponseMenuItemsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchMenuItems200ResponseMenuItemsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchMenuItems200ResponseMenuItemsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchMenuItems200ResponseMenuItemsInner> mapFromJson(dynamic json) {
    final map = <String, SearchMenuItems200ResponseMenuItemsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchMenuItems200ResponseMenuItemsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchMenuItems200ResponseMenuItemsInner-objects as value to a dart map
  static Map<String, List<SearchMenuItems200ResponseMenuItemsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchMenuItems200ResponseMenuItemsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchMenuItems200ResponseMenuItemsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'restaurantChain',
    'image',
    'imageType',
  };
}

