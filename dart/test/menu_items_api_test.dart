//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for MenuItemsApi
void main() {
  // final instance = MenuItemsApi();

  group('tests for MenuItemsApi', () {
    // Autocomplete Menu Item Search
    //
    // Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
    //
    //Future<AutocompleteProductSearch200Response> autocompleteMenuItemSearch(String query, { int number }) async
    test('test autocompleteMenuItemSearch', () async {
      // TODO
    });

    // Get Menu Item Information
    //
    // Use a menu item id to get all available information about a menu item, such as nutrition.
    //
    //Future<MenuItem> getMenuItemInformation(int id) async
    test('test getMenuItemInformation', () async {
      // TODO
    });

    // Menu Item Nutrition by ID Image
    //
    // Visualize a menu item's nutritional information as HTML including CSS.
    //
    //Future<MultipartFile> menuItemNutritionByIDImage(int id) async
    test('test menuItemNutritionByIDImage', () async {
      // TODO
    });

    // Menu Item Nutrition Label Image
    //
    // Visualize a menu item's nutritional label information as an image.
    //
    //Future<MultipartFile> menuItemNutritionLabelImage(int id, { bool showOptionalNutrients, bool showZeroValues, bool showIngredients }) async
    test('test menuItemNutritionLabelImage', () async {
      // TODO
    });

    // Menu Item Nutrition Label Widget
    //
    // Visualize a menu item's nutritional label information as HTML including CSS.
    //
    //Future<String> menuItemNutritionLabelWidget(int id, { bool defaultCss, bool showOptionalNutrients, bool showZeroValues, bool showIngredients }) async
    test('test menuItemNutritionLabelWidget', () async {
      // TODO
    });

    // Search Menu Items
    //
    // Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.
    //
    //Future<SearchMenuItems200Response> searchMenuItems(String query, { num minCalories, num maxCalories, num minCarbs, num maxCarbs, num minProtein, num maxProtein, num minFat, num maxFat, bool addMenuItemInformation, int offset, int number }) async
    test('test searchMenuItems', () async {
      // TODO
    });

    // Menu Item Nutrition by ID Widget
    //
    // Visualize a menu item's nutritional information as HTML including CSS.
    //
    //Future<String> visualizeMenuItemNutritionByID(int id, { bool defaultCss }) async
    test('test visualizeMenuItemNutritionByID', () async {
      // TODO
    });

  });
}
