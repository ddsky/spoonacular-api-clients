//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetProductInformation200Response {
  /// Returns a new [GetProductInformation200Response] instance.
  GetProductInformation200Response({
    required this.id,
    required this.title,
    this.breadcrumbs = const [],
    required this.imageType,
    this.badges = const [],
    this.importantBadges = const [],
    required this.ingredientCount,
    this.generatedText,
    required this.ingredientList,
    this.ingredients = const [],
    required this.likes,
    required this.aisle,
    required this.nutrition,
    required this.price,
    required this.servings,
    required this.spoonacularScore,
  });

  int id;

  String title;

  List<String> breadcrumbs;

  String imageType;

  List<String> badges;

  List<String> importantBadges;

  int ingredientCount;

  Object? generatedText;

  String ingredientList;

  List<GetProductInformation200ResponseIngredientsInner> ingredients;

  num likes;

  String aisle;

  SearchGroceryProductsByUPC200ResponseNutrition nutrition;

  num price;

  SearchGroceryProductsByUPC200ResponseServings servings;

  num spoonacularScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetProductInformation200Response &&
     other.id == id &&
     other.title == title &&
     other.breadcrumbs == breadcrumbs &&
     other.imageType == imageType &&
     other.badges == badges &&
     other.importantBadges == importantBadges &&
     other.ingredientCount == ingredientCount &&
     other.generatedText == generatedText &&
     other.ingredientList == ingredientList &&
     other.ingredients == ingredients &&
     other.likes == likes &&
     other.aisle == aisle &&
     other.nutrition == nutrition &&
     other.price == price &&
     other.servings == servings &&
     other.spoonacularScore == spoonacularScore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (breadcrumbs.hashCode) +
    (imageType.hashCode) +
    (badges.hashCode) +
    (importantBadges.hashCode) +
    (ingredientCount.hashCode) +
    (generatedText == null ? 0 : generatedText!.hashCode) +
    (ingredientList.hashCode) +
    (ingredients.hashCode) +
    (likes.hashCode) +
    (aisle.hashCode) +
    (nutrition.hashCode) +
    (price.hashCode) +
    (servings.hashCode) +
    (spoonacularScore.hashCode);

  @override
  String toString() => 'GetProductInformation200Response[id=$id, title=$title, breadcrumbs=$breadcrumbs, imageType=$imageType, badges=$badges, importantBadges=$importantBadges, ingredientCount=$ingredientCount, generatedText=$generatedText, ingredientList=$ingredientList, ingredients=$ingredients, likes=$likes, aisle=$aisle, nutrition=$nutrition, price=$price, servings=$servings, spoonacularScore=$spoonacularScore]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
      _json[r'title'] = title;
      _json[r'breadcrumbs'] = breadcrumbs;
      _json[r'imageType'] = imageType;
      _json[r'badges'] = badges;
      _json[r'importantBadges'] = importantBadges;
      _json[r'ingredientCount'] = ingredientCount;
    if (generatedText != null) {
      _json[r'generatedText'] = generatedText;
    } else {
      _json[r'generatedText'] = null;
    }
      _json[r'ingredientList'] = ingredientList;
      _json[r'ingredients'] = ingredients;
      _json[r'likes'] = likes;
      _json[r'aisle'] = aisle;
      _json[r'nutrition'] = nutrition;
      _json[r'price'] = price;
      _json[r'servings'] = servings;
      _json[r'spoonacularScore'] = spoonacularScore;
    return _json;
  }

  /// Returns a new [GetProductInformation200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetProductInformation200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetProductInformation200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetProductInformation200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetProductInformation200Response(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        breadcrumbs: json[r'breadcrumbs'] is List
            ? (json[r'breadcrumbs'] as List).cast<String>()
            : const [],
        imageType: mapValueOfType<String>(json, r'imageType')!,
        badges: json[r'badges'] is List
            ? (json[r'badges'] as List).cast<String>()
            : const [],
        importantBadges: json[r'importantBadges'] is List
            ? (json[r'importantBadges'] as List).cast<String>()
            : const [],
        ingredientCount: mapValueOfType<int>(json, r'ingredientCount')!,
        generatedText: mapValueOfType<Object>(json, r'generatedText'),
        ingredientList: mapValueOfType<String>(json, r'ingredientList')!,
        ingredients: GetProductInformation200ResponseIngredientsInner.listFromJson(json[r'ingredients'])!,
        likes: json[r'likes'] == null
            ? null
            : num.parse(json[r'likes'].toString()),
        aisle: mapValueOfType<String>(json, r'aisle')!,
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

  static List<GetProductInformation200Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetProductInformation200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetProductInformation200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetProductInformation200Response> mapFromJson(dynamic json) {
    final map = <String, GetProductInformation200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetProductInformation200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetProductInformation200Response-objects as value to a dart map
  static Map<String, List<GetProductInformation200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetProductInformation200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetProductInformation200Response.listFromJson(entry.value, growable: growable,);
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
    'breadcrumbs',
    'imageType',
    'badges',
    'importantBadges',
    'ingredientCount',
    'ingredientList',
    'ingredients',
    'likes',
    'aisle',
    'nutrition',
    'price',
    'servings',
    'spoonacularScore',
  };
}

