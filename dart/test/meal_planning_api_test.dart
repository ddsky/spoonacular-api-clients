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


/// tests for MealPlanningApi
void main() {
  // final instance = MealPlanningApi();

  group('tests for MealPlanningApi', () {
    // Add Meal Plan Template
    //
    // Add a meal plan template for a user.
    //
    //Future<AddMealPlanTemplate200Response> addMealPlanTemplate(String username, String hash) async
    test('test addMealPlanTemplate', () async {
      // TODO
    });

    // Add to Meal Plan
    //
    // Add an item to the user's meal plan.
    //
    //Future<Object> addToMealPlan(String username, String hash, AddToMealPlanRequest addToMealPlanRequest) async
    test('test addToMealPlan', () async {
      // TODO
    });

    // Add to Shopping List
    //
    // Add an item to the current shopping list of a user.
    //
    //Future<GetShoppingList200Response> addToShoppingList(String username, String hash, AddToShoppingListRequest addToShoppingListRequest) async
    test('test addToShoppingList', () async {
      // TODO
    });

    // Clear Meal Plan Day
    //
    // Delete all planned items from the user's meal plan for a specific day.
    //
    //Future<Object> clearMealPlanDay(String username, String date, String hash) async
    test('test clearMealPlanDay', () async {
      // TODO
    });

    // Connect User
    //
    // In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.
    //
    //Future<ConnectUser200Response> connectUser(ConnectUserRequest connectUserRequest) async
    test('test connectUser', () async {
      // TODO
    });

    // Delete from Meal Plan
    //
    // Delete an item from the user's meal plan.
    //
    //Future<Object> deleteFromMealPlan(String username, int id, String hash) async
    test('test deleteFromMealPlan', () async {
      // TODO
    });

    // Delete from Shopping List
    //
    // Delete an item from the current shopping list of the user.
    //
    //Future<Object> deleteFromShoppingList(String username, int id, String hash) async
    test('test deleteFromShoppingList', () async {
      // TODO
    });

    // Delete Meal Plan Template
    //
    // Delete a meal plan template for a user.
    //
    //Future<Object> deleteMealPlanTemplate(String username, int id, String hash) async
    test('test deleteMealPlanTemplate', () async {
      // TODO
    });

    // Generate Meal Plan
    //
    // Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
    //
    //Future<GenerateMealPlan200Response> generateMealPlan({ String timeFrame, num targetCalories, String diet, String exclude }) async
    test('test generateMealPlan', () async {
      // TODO
    });

    // Generate Shopping List
    //
    // Generate the shopping list for a user from the meal planner in a given time frame.
    //
    //Future<GetShoppingList200Response> generateShoppingList(String username, String startDate, String endDate, String hash) async
    test('test generateShoppingList', () async {
      // TODO
    });

    // Get Meal Plan Template
    //
    // Get information about a meal plan template.
    //
    //Future<GetMealPlanTemplate200Response> getMealPlanTemplate(String username, int id, String hash) async
    test('test getMealPlanTemplate', () async {
      // TODO
    });

    // Get Meal Plan Templates
    //
    // Get meal plan templates from user or public ones.
    //
    //Future<GetMealPlanTemplates200Response> getMealPlanTemplates(String username, String hash) async
    test('test getMealPlanTemplates', () async {
      // TODO
    });

    // Get Meal Plan Week
    //
    // Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.
    //
    //Future<GetMealPlanWeek200Response> getMealPlanWeek(String username, String startDate, String hash) async
    test('test getMealPlanWeek', () async {
      // TODO
    });

    // Get Shopping List
    //
    // Get the current shopping list for the given user.
    //
    //Future<GetShoppingList200Response> getShoppingList(String username, String hash) async
    test('test getShoppingList', () async {
      // TODO
    });

  });
}
