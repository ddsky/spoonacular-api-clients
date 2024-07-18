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


/// tests for ProductsApi
void main() {
  // final instance = ProductsApi();

  group('tests for ProductsApi', () {
    // Autocomplete Product Search
    //
    // Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.
    //
    //Future<AutocompleteProductSearch200Response> autocompleteProductSearch(String query, { int number }) async
    test('test autocompleteProductSearch', () async {
      // TODO
    });

    // Classify Grocery Product
    //
    // This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.
    //
    //Future<ClassifyGroceryProduct200Response> classifyGroceryProduct(ClassifyGroceryProductRequest classifyGroceryProductRequest, { String locale }) async
    test('test classifyGroceryProduct', () async {
      // TODO
    });

    // Classify Grocery Product Bulk
    //
    // Provide a set of product jsons, get back classified products.
    //
    //Future<Set<ClassifyGroceryProductBulk200ResponseInner>> classifyGroceryProductBulk(Set<ClassifyGroceryProductBulkRequestInner> classifyGroceryProductBulkRequestInner, { String locale }) async
    test('test classifyGroceryProductBulk', () async {
      // TODO
    });

    // Get Comparable Products
    //
    // Find comparable products to the given one.
    //
    //Future<GetComparableProducts200Response> getComparableProducts(String upc) async
    test('test getComparableProducts', () async {
      // TODO
    });

    // Get Product Information
    //
    // Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.
    //
    //Future<ProductInformation> getProductInformation(int id) async
    test('test getProductInformation', () async {
      // TODO
    });

    // Product Nutrition by ID Image
    //
    // Visualize a product's nutritional information as an image.
    //
    //Future<MultipartFile> productNutritionByIDImage(int id) async
    test('test productNutritionByIDImage', () async {
      // TODO
    });

    // Product Nutrition Label Image
    //
    // Get a product's nutrition label as an image.
    //
    //Future<MultipartFile> productNutritionLabelImage(int id, { bool showOptionalNutrients, bool showZeroValues, bool showIngredients }) async
    test('test productNutritionLabelImage', () async {
      // TODO
    });

    // Product Nutrition Label Widget
    //
    // Get a product's nutrition label as an HTML widget.
    //
    //Future<String> productNutritionLabelWidget(int id, { bool defaultCss, bool showOptionalNutrients, bool showZeroValues, bool showIngredients }) async
    test('test productNutritionLabelWidget', () async {
      // TODO
    });

    // Search Grocery Products
    //
    // Search packaged food products, such as frozen pizza or Greek yogurt.
    //
    //Future<SearchGroceryProducts200Response> searchGroceryProducts(String query, { num minCalories, num maxCalories, num minCarbs, num maxCarbs, num minProtein, num maxProtein, num minFat, num maxFat, bool addProductInformation, int offset, int number }) async
    test('test searchGroceryProducts', () async {
      // TODO
    });

    // Search Grocery Products by UPC
    //
    // Get information about a packaged food using its UPC.
    //
    //Future<SearchGroceryProductsByUPC200Response> searchGroceryProductsByUPC(String upc) async
    test('test searchGroceryProductsByUPC', () async {
      // TODO
    });

    // Product Nutrition by ID Widget
    //
    // Visualize a product's nutritional information as HTML including CSS.
    //
    //Future<String> visualizeProductNutritionByID(int id, { bool defaultCss }) async
    test('test visualizeProductNutritionByID', () async {
      // TODO
    });

  });
}
