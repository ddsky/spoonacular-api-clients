//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MenuItem {
  /// Returns a new [MenuItem] instance.
  MenuItem({
    required this.id,
    required this.title,
    required this.restaurantChain,
    this.nutrition,
    this.badges = const [],
    this.breadcrumbs = const [],
    this.generatedText,
    this.imageType,
    this.likes,
    this.servings,
    required this.price,
    required this.spoonacularScore,
  });

  int id;

  String title;

  String restaurantChain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchGroceryProductsByUPC200ResponseNutrition? nutrition;

  List<String> badges;

  List<String> breadcrumbs;

  String? generatedText;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? likes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MenuItemServings? servings;

  num? price;

  num? spoonacularScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MenuItem &&
    other.id == id &&
    other.title == title &&
    other.restaurantChain == restaurantChain &&
    other.nutrition == nutrition &&
    _deepEquality.equals(other.badges, badges) &&
    _deepEquality.equals(other.breadcrumbs, breadcrumbs) &&
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
    (nutrition == null ? 0 : nutrition!.hashCode) +
    (badges.hashCode) +
    (breadcrumbs.hashCode) +
    (generatedText == null ? 0 : generatedText!.hashCode) +
    (imageType == null ? 0 : imageType!.hashCode) +
    (likes == null ? 0 : likes!.hashCode) +
    (servings == null ? 0 : servings!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (spoonacularScore == null ? 0 : spoonacularScore!.hashCode);

  @override
  String toString() => 'MenuItem[id=$id, title=$title, restaurantChain=$restaurantChain, nutrition=$nutrition, badges=$badges, breadcrumbs=$breadcrumbs, generatedText=$generatedText, imageType=$imageType, likes=$likes, servings=$servings, price=$price, spoonacularScore=$spoonacularScore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
      json[r'restaurantChain'] = this.restaurantChain;
    if (this.nutrition != null) {
      json[r'nutrition'] = this.nutrition;
    } else {
      json[r'nutrition'] = null;
    }
      json[r'badges'] = this.badges;
      json[r'breadcrumbs'] = this.breadcrumbs;
    if (this.generatedText != null) {
      json[r'generatedText'] = this.generatedText;
    } else {
      json[r'generatedText'] = null;
    }
    if (this.imageType != null) {
      json[r'imageType'] = this.imageType;
    } else {
      json[r'imageType'] = null;
    }
    if (this.likes != null) {
      json[r'likes'] = this.likes;
    } else {
      json[r'likes'] = null;
    }
    if (this.servings != null) {
      json[r'servings'] = this.servings;
    } else {
      json[r'servings'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.spoonacularScore != null) {
      json[r'spoonacularScore'] = this.spoonacularScore;
    } else {
      json[r'spoonacularScore'] = null;
    }
    return json;
  }

  /// Returns a new [MenuItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MenuItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MenuItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MenuItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MenuItem(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        restaurantChain: mapValueOfType<String>(json, r'restaurantChain')!,
        nutrition: SearchGroceryProductsByUPC200ResponseNutrition.fromJson(json[r'nutrition']),
        badges: json[r'badges'] is Iterable
            ? (json[r'badges'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        breadcrumbs: json[r'breadcrumbs'] is Iterable
            ? (json[r'breadcrumbs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        generatedText: mapValueOfType<String>(json, r'generatedText'),
        imageType: mapValueOfType<String>(json, r'imageType'),
        likes: mapValueOfType<int>(json, r'likes'),
        servings: MenuItemServings.fromJson(json[r'servings']),
        price: json[r'price'] == null
            ? null
            : num.parse('${json[r'price']}'),
        spoonacularScore: json[r'spoonacularScore'] == null
            ? null
            : num.parse('${json[r'spoonacularScore']}'),
      );
    }
    return null;
  }

  static List<MenuItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MenuItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MenuItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MenuItem> mapFromJson(dynamic json) {
    final map = <String, MenuItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MenuItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MenuItem-objects as value to a dart map
  static Map<String, List<MenuItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MenuItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MenuItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'restaurantChain',
    'price',
    'spoonacularScore',
  };
}

