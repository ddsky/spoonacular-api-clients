//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProductInformation {
  /// Returns a new [ProductInformation] instance.
  ProductInformation({
    required this.id,
    required this.title,
    this.upc,
    this.usdaCode,
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
    this.credits,
    required this.nutrition,
    required this.price,
    required this.servings,
    required this.spoonacularScore,
  });

  int id;

  String title;

  String? upc;

  String? usdaCode;

  List<String> breadcrumbs;

  String imageType;

  List<String> badges;

  List<String> importantBadges;

  int ingredientCount;

  String? generatedText;

  String ingredientList;

  List<IngredientBasics> ingredients;

  num likes;

  String? aisle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProductInformationCredits? credits;

  SearchGroceryProductsByUPC200ResponseNutrition nutrition;

  num price;

  SearchGroceryProductsByUPC200ResponseServings servings;

  num spoonacularScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductInformation &&
    other.id == id &&
    other.title == title &&
    other.upc == upc &&
    other.usdaCode == usdaCode &&
    _deepEquality.equals(other.breadcrumbs, breadcrumbs) &&
    other.imageType == imageType &&
    _deepEquality.equals(other.badges, badges) &&
    _deepEquality.equals(other.importantBadges, importantBadges) &&
    other.ingredientCount == ingredientCount &&
    other.generatedText == generatedText &&
    other.ingredientList == ingredientList &&
    _deepEquality.equals(other.ingredients, ingredients) &&
    other.likes == likes &&
    other.aisle == aisle &&
    other.credits == credits &&
    other.nutrition == nutrition &&
    other.price == price &&
    other.servings == servings &&
    other.spoonacularScore == spoonacularScore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (upc == null ? 0 : upc!.hashCode) +
    (usdaCode == null ? 0 : usdaCode!.hashCode) +
    (breadcrumbs.hashCode) +
    (imageType.hashCode) +
    (badges.hashCode) +
    (importantBadges.hashCode) +
    (ingredientCount.hashCode) +
    (generatedText == null ? 0 : generatedText!.hashCode) +
    (ingredientList.hashCode) +
    (ingredients.hashCode) +
    (likes.hashCode) +
    (aisle == null ? 0 : aisle!.hashCode) +
    (credits == null ? 0 : credits!.hashCode) +
    (nutrition.hashCode) +
    (price.hashCode) +
    (servings.hashCode) +
    (spoonacularScore.hashCode);

  @override
  String toString() => 'ProductInformation[id=$id, title=$title, upc=$upc, usdaCode=$usdaCode, breadcrumbs=$breadcrumbs, imageType=$imageType, badges=$badges, importantBadges=$importantBadges, ingredientCount=$ingredientCount, generatedText=$generatedText, ingredientList=$ingredientList, ingredients=$ingredients, likes=$likes, aisle=$aisle, credits=$credits, nutrition=$nutrition, price=$price, servings=$servings, spoonacularScore=$spoonacularScore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
    if (this.upc != null) {
      json[r'upc'] = this.upc;
    } else {
      json[r'upc'] = null;
    }
    if (this.usdaCode != null) {
      json[r'usdaCode'] = this.usdaCode;
    } else {
      json[r'usdaCode'] = null;
    }
      json[r'breadcrumbs'] = this.breadcrumbs;
      json[r'imageType'] = this.imageType;
      json[r'badges'] = this.badges;
      json[r'importantBadges'] = this.importantBadges;
      json[r'ingredientCount'] = this.ingredientCount;
    if (this.generatedText != null) {
      json[r'generatedText'] = this.generatedText;
    } else {
      json[r'generatedText'] = null;
    }
      json[r'ingredientList'] = this.ingredientList;
      json[r'ingredients'] = this.ingredients;
      json[r'likes'] = this.likes;
    if (this.aisle != null) {
      json[r'aisle'] = this.aisle;
    } else {
      json[r'aisle'] = null;
    }
    if (this.credits != null) {
      json[r'credits'] = this.credits;
    } else {
      json[r'credits'] = null;
    }
      json[r'nutrition'] = this.nutrition;
      json[r'price'] = this.price;
      json[r'servings'] = this.servings;
      json[r'spoonacularScore'] = this.spoonacularScore;
    return json;
  }

  /// Returns a new [ProductInformation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductInformation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductInformation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductInformation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductInformation(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        upc: mapValueOfType<String>(json, r'upc'),
        usdaCode: mapValueOfType<String>(json, r'usdaCode'),
        breadcrumbs: json[r'breadcrumbs'] is Iterable
            ? (json[r'breadcrumbs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        imageType: mapValueOfType<String>(json, r'imageType')!,
        badges: json[r'badges'] is Iterable
            ? (json[r'badges'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        importantBadges: json[r'importantBadges'] is Iterable
            ? (json[r'importantBadges'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        ingredientCount: mapValueOfType<int>(json, r'ingredientCount')!,
        generatedText: mapValueOfType<String>(json, r'generatedText'),
        ingredientList: mapValueOfType<String>(json, r'ingredientList')!,
        ingredients: IngredientBasics.listFromJson(json[r'ingredients']),
        likes: num.parse('${json[r'likes']}'),
        aisle: mapValueOfType<String>(json, r'aisle'),
        credits: ProductInformationCredits.fromJson(json[r'credits']),
        nutrition: SearchGroceryProductsByUPC200ResponseNutrition.fromJson(json[r'nutrition'])!,
        price: num.parse('${json[r'price']}'),
        servings: SearchGroceryProductsByUPC200ResponseServings.fromJson(json[r'servings'])!,
        spoonacularScore: num.parse('${json[r'spoonacularScore']}'),
      );
    }
    return null;
  }

  static List<ProductInformation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductInformation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductInformation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductInformation> mapFromJson(dynamic json) {
    final map = <String, ProductInformation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductInformation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductInformation-objects as value to a dart map
  static Map<String, List<ProductInformation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductInformation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductInformation.listFromJson(entry.value, growable: growable,);
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

