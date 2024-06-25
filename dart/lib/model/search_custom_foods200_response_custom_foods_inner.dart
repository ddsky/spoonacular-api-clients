//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchCustomFoods200ResponseCustomFoodsInner {
  /// Returns a new [SearchCustomFoods200ResponseCustomFoodsInner] instance.
  SearchCustomFoods200ResponseCustomFoodsInner({
    required this.id,
    required this.title,
    required this.servings,
    required this.imageUrl,
    required this.price,
  });

  int id;

  String title;

  num servings;

  String imageUrl;

  num price;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchCustomFoods200ResponseCustomFoodsInner &&
    other.id == id &&
    other.title == title &&
    other.servings == servings &&
    other.imageUrl == imageUrl &&
    other.price == price;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (servings.hashCode) +
    (imageUrl.hashCode) +
    (price.hashCode);

  @override
  String toString() => 'SearchCustomFoods200ResponseCustomFoodsInner[id=$id, title=$title, servings=$servings, imageUrl=$imageUrl, price=$price]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
      json[r'servings'] = this.servings;
      json[r'imageUrl'] = this.imageUrl;
      json[r'price'] = this.price;
    return json;
  }

  /// Returns a new [SearchCustomFoods200ResponseCustomFoodsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchCustomFoods200ResponseCustomFoodsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchCustomFoods200ResponseCustomFoodsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchCustomFoods200ResponseCustomFoodsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchCustomFoods200ResponseCustomFoodsInner(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        servings: num.parse('${json[r'servings']}'),
        imageUrl: mapValueOfType<String>(json, r'imageUrl')!,
        price: num.parse('${json[r'price']}'),
      );
    }
    return null;
  }

  static List<SearchCustomFoods200ResponseCustomFoodsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchCustomFoods200ResponseCustomFoodsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchCustomFoods200ResponseCustomFoodsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchCustomFoods200ResponseCustomFoodsInner> mapFromJson(dynamic json) {
    final map = <String, SearchCustomFoods200ResponseCustomFoodsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchCustomFoods200ResponseCustomFoodsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchCustomFoods200ResponseCustomFoodsInner-objects as value to a dart map
  static Map<String, List<SearchCustomFoods200ResponseCustomFoodsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchCustomFoods200ResponseCustomFoodsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchCustomFoods200ResponseCustomFoodsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'servings',
    'imageUrl',
    'price',
  };
}

