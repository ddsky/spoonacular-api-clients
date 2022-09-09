//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetComparableProducts200ResponseComparableProducts {
  /// Returns a new [GetComparableProducts200ResponseComparableProducts] instance.
  GetComparableProducts200ResponseComparableProducts({
    this.calories = const [],
    this.likes = const [],
    this.price = const [],
    this.protein = const {},
    this.spoonacularScore = const {},
    this.sugar = const [],
  });

  List<Object> calories;

  List<Object> likes;

  List<Object> price;

  Set<GetComparableProducts200ResponseComparableProductsProteinInner> protein;

  Set<GetComparableProducts200ResponseComparableProductsProteinInner> spoonacularScore;

  List<Object> sugar;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetComparableProducts200ResponseComparableProducts &&
     other.calories == calories &&
     other.likes == likes &&
     other.price == price &&
     other.protein == protein &&
     other.spoonacularScore == spoonacularScore &&
     other.sugar == sugar;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (calories.hashCode) +
    (likes.hashCode) +
    (price.hashCode) +
    (protein.hashCode) +
    (spoonacularScore.hashCode) +
    (sugar.hashCode);

  @override
  String toString() => 'GetComparableProducts200ResponseComparableProducts[calories=$calories, likes=$likes, price=$price, protein=$protein, spoonacularScore=$spoonacularScore, sugar=$sugar]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'calories'] = calories;
      _json[r'likes'] = likes;
      _json[r'price'] = price;
      _json[r'protein'] = protein;
      _json[r'spoonacularScore'] = spoonacularScore;
      _json[r'sugar'] = sugar;
    return _json;
  }

  /// Returns a new [GetComparableProducts200ResponseComparableProducts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetComparableProducts200ResponseComparableProducts? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetComparableProducts200ResponseComparableProducts[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetComparableProducts200ResponseComparableProducts[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetComparableProducts200ResponseComparableProducts(
        calories: Object.listFromJson(json[r'calories'])!,
        likes: Object.listFromJson(json[r'likes'])!,
        price: Object.listFromJson(json[r'price'])!,
        protein: GetComparableProducts200ResponseComparableProductsProteinInner.listFromJson(json[r'protein'])!,
        spoonacularScore: GetComparableProducts200ResponseComparableProductsProteinInner.listFromJson(json[r'spoonacularScore'])!,
        sugar: Object.listFromJson(json[r'sugar'])!,
      );
    }
    return null;
  }

  static List<GetComparableProducts200ResponseComparableProducts>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetComparableProducts200ResponseComparableProducts>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetComparableProducts200ResponseComparableProducts.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetComparableProducts200ResponseComparableProducts> mapFromJson(dynamic json) {
    final map = <String, GetComparableProducts200ResponseComparableProducts>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetComparableProducts200ResponseComparableProducts.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetComparableProducts200ResponseComparableProducts-objects as value to a dart map
  static Map<String, List<GetComparableProducts200ResponseComparableProducts>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetComparableProducts200ResponseComparableProducts>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetComparableProducts200ResponseComparableProducts.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'calories',
    'likes',
    'price',
    'protein',
    'spoonacularScore',
    'sugar',
  };
}

