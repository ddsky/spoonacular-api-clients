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


/// tests for IngredientsApi
void main() {
  // final instance = IngredientsApi();

  group('tests for IngredientsApi', () {
    // Autocomplete Ingredient Search
    //
    // Autocomplete the entry of an ingredient.
    //
    //Future<Set<AutocompleteIngredientSearch200ResponseInner>> autocompleteIngredientSearch(String query, { int number, bool metaInformation, String intolerances, String language }) async
    test('test autocompleteIngredientSearch', () async {
      // TODO
    });

    // Compute Ingredient Amount
    //
    // Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?
    //
    //Future<ComputeIngredientAmount200Response> computeIngredientAmount(int id, String nutrient, int target, { String unit }) async
    test('test computeIngredientAmount', () async {
      // TODO
    });

    // Get Ingredient Information
    //
    // Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
    //
    //Future<IngredientInformation> getIngredientInformation(int id, { num amount, String unit }) async
    test('test getIngredientInformation', () async {
      // TODO
    });

    // Get Ingredient Substitutes
    //
    // Search for substitutes for a given ingredient.
    //
    //Future<GetIngredientSubstitutes200Response> getIngredientSubstitutes(String ingredientName) async
    test('test getIngredientSubstitutes', () async {
      // TODO
    });

    // Get Ingredient Substitutes by ID
    //
    // Search for substitutes for a given ingredient.
    //
    //Future<GetIngredientSubstitutes200Response> getIngredientSubstitutesByID(int id) async
    test('test getIngredientSubstitutesByID', () async {
      // TODO
    });

    // Ingredient Search
    //
    // Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
    //
    //Future<IngredientSearch200Response> ingredientSearch(String query, { bool addChildren, num minProteinPercent, num maxProteinPercent, num minFatPercent, num maxFatPercent, num minCarbsPercent, num maxCarbsPercent, bool metaInformation, String intolerances, String sort, String sortDirection, int offset, int number, String language }) async
    test('test ingredientSearch', () async {
      // TODO
    });

    // Ingredients by ID Image
    //
    // Visualize a recipe's ingredient list.
    //
    //Future<MultipartFile> ingredientsByIDImage(int id, { String measure }) async
    test('test ingredientsByIDImage', () async {
      // TODO
    });

    // Map Ingredients to Grocery Products
    //
    // Map a set of ingredients to products you can buy in the grocery store.
    //
    //Future<Set<MapIngredientsToGroceryProducts200ResponseInner>> mapIngredientsToGroceryProducts(MapIngredientsToGroceryProductsRequest mapIngredientsToGroceryProductsRequest) async
    test('test mapIngredientsToGroceryProducts', () async {
      // TODO
    });

    // Ingredients Widget
    //
    // Visualize ingredients of a recipe. You can play around with that endpoint!
    //
    //Future<String> visualizeIngredients(String ingredientList, num servings, { String language, String measure, String view, bool defaultCss, bool showBacklink }) async
    test('test visualizeIngredients', () async {
      // TODO
    });

  });
}
