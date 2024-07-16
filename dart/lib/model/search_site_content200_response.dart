//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchSiteContent200Response {
  /// Returns a new [SearchSiteContent200Response] instance.
  SearchSiteContent200Response({
    this.articles = const [],
    this.groceryProducts = const [],
    this.menuItems = const [],
    this.recipes = const [],
  });

  List<SearchResult> articles;

  List<SearchResult> groceryProducts;

  List<SearchResult> menuItems;

  List<SearchResult> recipes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchSiteContent200Response &&
    _deepEquality.equals(other.articles, articles) &&
    _deepEquality.equals(other.groceryProducts, groceryProducts) &&
    _deepEquality.equals(other.menuItems, menuItems) &&
    _deepEquality.equals(other.recipes, recipes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (articles.hashCode) +
    (groceryProducts.hashCode) +
    (menuItems.hashCode) +
    (recipes.hashCode);

  @override
  String toString() => 'SearchSiteContent200Response[articles=$articles, groceryProducts=$groceryProducts, menuItems=$menuItems, recipes=$recipes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'Articles'] = this.articles;
      json[r'Grocery Products'] = this.groceryProducts;
      json[r'Menu Items'] = this.menuItems;
      json[r'Recipes'] = this.recipes;
    return json;
  }

  /// Returns a new [SearchSiteContent200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchSiteContent200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchSiteContent200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchSiteContent200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchSiteContent200Response(
        articles: SearchResult.listFromJson(json[r'Articles']),
        groceryProducts: SearchResult.listFromJson(json[r'Grocery Products']),
        menuItems: SearchResult.listFromJson(json[r'Menu Items']),
        recipes: SearchResult.listFromJson(json[r'Recipes']),
      );
    }
    return null;
  }

  static List<SearchSiteContent200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchSiteContent200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchSiteContent200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchSiteContent200Response> mapFromJson(dynamic json) {
    final map = <String, SearchSiteContent200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchSiteContent200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchSiteContent200Response-objects as value to a dart map
  static Map<String, List<SearchSiteContent200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchSiteContent200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchSiteContent200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Articles',
    'Grocery Products',
    'Menu Items',
    'Recipes',
  };
}

