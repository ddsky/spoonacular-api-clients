//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchGroceryProductsByUPC200Response {
  /// Returns a new [SearchGroceryProductsByUPC200Response] instance.
  SearchGroceryProductsByUPC200Response({
    required this.id,
    required this.title,
    this.badges = const [],
    this.importantBadges = const [],
    this.breadcrumbs = const [],
    required this.generatedText,
    required this.imageType,
    this.ingredientCount,
    required this.ingredientList,
    this.ingredients = const {},
    required this.likes,
    required this.nutrition,
    required this.price,
    required this.servings,
    required this.spoonacularScore,
  });

  int id;

  String title;

  List<String> badges;

  List<String> importantBadges;

  List<String> breadcrumbs;

  String generatedText;

  String imageType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ingredientCount;

  String ingredientList;

  Set<SearchGroceryProductsByUPC200ResponseIngredientsInner> ingredients;

  num likes;

  SearchGroceryProductsByUPC200ResponseNutrition nutrition;

  num price;

  SearchGroceryProductsByUPC200ResponseServings servings;

  num spoonacularScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchGroceryProductsByUPC200Response &&
     other.id == id &&
     other.title == title &&
     other.badges == badges &&
     other.importantBadges == importantBadges &&
     other.breadcrumbs == breadcrumbs &&
     other.generatedText == generatedText &&
     other.imageType == imageType &&
     other.ingredientCount == ingredientCount &&
     other.ingredientList == ingredientList &&
     other.ingredients == ingredients &&
     other.likes == likes &&
     other.nutrition == nutrition &&
     other.price == price &&
     other.servings == servings &&
     other.spoonacularScore == spoonacularScore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (badges.hashCode) +
    (importantBadges.hashCode) +
    (breadcrumbs.hashCode) +
    (generatedText.hashCode) +
    (imageType.hashCode) +
    (ingredientCount == null ? 0 : ingredientCount!.hashCode) +
    (ingredientList.hashCode) +
    (ingredients.hashCode) +
    (likes.hashCode) +
    (nutrition.hashCode) +
    (price.hashCode) +
    (servings.hashCode) +
    (spoonacularScore.hashCode);

  @override
  String toString() => 'SearchGroceryProductsByUPC200Response[id=$id, title=$title, badges=$badges, importantBadges=$importantBadges, breadcrumbs=$breadcrumbs, generatedText=$generatedText, imageType=$imageType, ingredientCount=$ingredientCount, ingredientList=$ingredientList, ingredients=$ingredients, likes=$likes, nutrition=$nutrition, price=$price, servings=$servings, spoonacularScore=$spoonacularScore]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
      _json[r'title'] = title;
      _json[r'badges'] = badges;
      _json[r'importantBadges'] = importantBadges;
      _json[r'breadcrumbs'] = breadcrumbs;
      _json[r'generatedText'] = generatedText;
      _json[r'imageType'] = imageType;
    if (ingredientCount != null) {
      _json[r'ingredientCount'] = ingredientCount;
    } else {
      _json[r'ingredientCount'] = null;
    }
      _json[r'ingredientList'] = ingredientList;
      _json[r'ingredients'] = ingredients;
      _json[r'likes'] = likes;
      _json[r'nutrition'] = nutrition;
      _json[r'price'] = price;
      _json[r'servings'] = servings;
      _json[r'spoonacularScore'] = spoonacularScore;
    return _json;
  }

  /// Returns a new [SearchGroceryProductsByUPC200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchGroceryProductsByUPC200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchGroceryProductsByUPC200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchGroceryProductsByUPC200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchGroceryProductsByUPC200Response(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        badges: json[r'badges'] is List
            ? (json[r'badges'] as List).cast<String>()
            : const [],
        importantBadges: json[r'importantBadges'] is List
            ? (json[r'importantBadges'] as List).cast<String>()
            : const [],
        breadcrumbs: json[r'breadcrumbs'] is List
            ? (json[r'breadcrumbs'] as List).cast<String>()
            : const [],
        generatedText: mapValueOfType<String>(json, r'generatedText')!,
        imageType: mapValueOfType<String>(json, r'imageType')!,
        ingredientCount: mapValueOfType<int>(json, r'ingredientCount'),
        ingredientList: mapValueOfType<String>(json, r'ingredientList')!,
        ingredients: SearchGroceryProductsByUPC200ResponseIngredientsInner.listFromJson(json[r'ingredients'])!,
        likes: json[r'likes'] == null
            ? null
            : num.parse(json[r'likes'].toString()),
        nutrition: SearchGroceryProductsByUPC200ResponseNutrition.fromJson(json[r'nutrition'])!,
        price: json[r'price'] == null
            ? null
            : num.parse(json[r'price'].toString()),
        servings: SearchGroceryProductsByUPC200ResponseServings.fromJson(json[r'servings'])!,
        spoonacularScore: json[r'spoonacularScore'] == null
            ? null
            : num.parse(json[r'spoonacularScore'].toString()),
      );
    }
    return null;
  }

  static List<SearchGroceryProductsByUPC200Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchGroceryProductsByUPC200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchGroceryProductsByUPC200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchGroceryProductsByUPC200Response> mapFromJson(dynamic json) {
    final map = <String, SearchGroceryProductsByUPC200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchGroceryProductsByUPC200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchGroceryProductsByUPC200Response-objects as value to a dart map
  static Map<String, List<SearchGroceryProductsByUPC200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchGroceryProductsByUPC200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchGroceryProductsByUPC200Response.listFromJson(entry.value, growable: growable,);
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
    'badges',
    'importantBadges',
    'breadcrumbs',
    'generatedText',
    'imageType',
    'ingredientList',
    'ingredients',
    'likes',
    'nutrition',
    'price',
    'servings',
    'spoonacularScore',
  };
}

