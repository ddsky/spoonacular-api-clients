//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetMenuItemInformation200Response {
  /// Returns a new [GetMenuItemInformation200Response] instance.
  GetMenuItemInformation200Response({
    required this.id,
    required this.title,
    required this.restaurantChain,
    required this.nutrition,
    this.badges = const [],
    this.breadcrumbs = const [],
    this.generatedText,
    required this.imageType,
    required this.likes,
    required this.servings,
    this.price,
    this.spoonacularScore,
  });

  int id;

  String title;

  String restaurantChain;

  SearchGroceryProductsByUPC200ResponseNutrition nutrition;

  List<String> badges;

  List<String> breadcrumbs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? generatedText;

  String imageType;

  num likes;

  SearchGroceryProductsByUPC200ResponseServings servings;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? spoonacularScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetMenuItemInformation200Response &&
     other.id == id &&
     other.title == title &&
     other.restaurantChain == restaurantChain &&
     other.nutrition == nutrition &&
     other.badges == badges &&
     other.breadcrumbs == breadcrumbs &&
     other.generatedText == generatedText &&
     other.imageType == imageType &&
     other.likes == likes &&
     other.servings == servings &&
     other.price == price &&
     other.spoonacularScore == spoonacularScore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (restaurantChain.hashCode) +
    (nutrition.hashCode) +
    (badges.hashCode) +
    (breadcrumbs.hashCode) +
    (generatedText == null ? 0 : generatedText!.hashCode) +
    (imageType.hashCode) +
    (likes.hashCode) +
    (servings.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (spoonacularScore == null ? 0 : spoonacularScore!.hashCode);

  @override
  String toString() => 'GetMenuItemInformation200Response[id=$id, title=$title, restaurantChain=$restaurantChain, nutrition=$nutrition, badges=$badges, breadcrumbs=$breadcrumbs, generatedText=$generatedText, imageType=$imageType, likes=$likes, servings=$servings, price=$price, spoonacularScore=$spoonacularScore]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
      _json[r'title'] = title;
      _json[r'restaurantChain'] = restaurantChain;
      _json[r'nutrition'] = nutrition;
      _json[r'badges'] = badges;
      _json[r'breadcrumbs'] = breadcrumbs;
    if (generatedText != null) {
      _json[r'generatedText'] = generatedText;
    } else {
      _json[r'generatedText'] = null;
    }
      _json[r'imageType'] = imageType;
      _json[r'likes'] = likes;
      _json[r'servings'] = servings;
    if (price != null) {
      _json[r'price'] = price;
    } else {
      _json[r'price'] = null;
    }
    if (spoonacularScore != null) {
      _json[r'spoonacularScore'] = spoonacularScore;
    } else {
      _json[r'spoonacularScore'] = null;
    }
    return _json;
  }

  /// Returns a new [GetMenuItemInformation200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetMenuItemInformation200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetMenuItemInformation200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetMenuItemInformation200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetMenuItemInformation200Response(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        restaurantChain: mapValueOfType<String>(json, r'restaurantChain')!,
        nutrition: SearchGroceryProductsByUPC200ResponseNutrition.fromJson(json[r'nutrition'])!,
        badges: json[r'badges'] is List
            ? (json[r'badges'] as List).cast<String>()
            : const [],
        breadcrumbs: json[r'breadcrumbs'] is List
            ? (json[r'breadcrumbs'] as List).cast<String>()
            : const [],
        generatedText: mapValueOfType<String>(json, r'generatedText'),
        imageType: mapValueOfType<String>(json, r'imageType')!,
        likes: json[r'likes'] == null
            ? null
            : num.parse(json[r'likes'].toString()),
        servings: SearchGroceryProductsByUPC200ResponseServings.fromJson(json[r'servings'])!,
        price: json[r'price'] == null
            ? null
            : num.parse(json[r'price'].toString()),
        spoonacularScore: json[r'spoonacularScore'] == null
            ? null
            : num.parse(json[r'spoonacularScore'].toString()),
      );
    }
    return null;
  }

  static List<GetMenuItemInformation200Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetMenuItemInformation200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetMenuItemInformation200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetMenuItemInformation200Response> mapFromJson(dynamic json) {
    final map = <String, GetMenuItemInformation200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetMenuItemInformation200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetMenuItemInformation200Response-objects as value to a dart map
  static Map<String, List<GetMenuItemInformation200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetMenuItemInformation200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetMenuItemInformation200Response.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'restaurantChain',
    'nutrition',
    'badges',
    'breadcrumbs',
    'imageType',
    'likes',
    'servings',
  };
}

