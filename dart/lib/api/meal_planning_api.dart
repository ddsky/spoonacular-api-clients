//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MealPlanningApi {
  MealPlanningApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add Meal Plan Template
  ///
  /// Add a meal plan template for a user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<Response> addMealPlanTemplateWithHttpInfo(String username, String hash,) async {
    // ignore: prefer_const_declarations
    final path = r'/mealplanner/{username}/templates'
      .replaceAll('{username}', username);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hash', hash));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Add Meal Plan Template
  ///
  /// Add a meal plan template for a user.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<AddMealPlanTemplate200Response?> addMealPlanTemplate(String username, String hash,) async {
    final response = await addMealPlanTemplateWithHttpInfo(username, hash,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddMealPlanTemplate200Response',) as AddMealPlanTemplate200Response;
    
    }
    return null;
  }

  /// Add to Meal Plan
  ///
  /// Add an item to the user's meal plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  ///
  /// * [AddToMealPlanRequest] addToMealPlanRequest (required):
  Future<Response> addToMealPlanWithHttpInfo(String username, String hash, AddToMealPlanRequest addToMealPlanRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/mealplanner/{username}/items'
      .replaceAll('{username}', username);

    // ignore: prefer_final_locals
    Object? postBody = addToMealPlanRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hash', hash));

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Add to Meal Plan
  ///
  /// Add an item to the user's meal plan.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  ///
  /// * [AddToMealPlanRequest] addToMealPlanRequest (required):
  Future<Object?> addToMealPlan(String username, String hash, AddToMealPlanRequest addToMealPlanRequest,) async {
    final response = await addToMealPlanWithHttpInfo(username, hash, addToMealPlanRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Add to Shopping List
  ///
  /// Add an item to the current shopping list of a user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  ///
  /// * [AddToShoppingListRequest] addToShoppingListRequest (required):
  Future<Response> addToShoppingListWithHttpInfo(String username, String hash, AddToShoppingListRequest addToShoppingListRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/mealplanner/{username}/shopping-list/items'
      .replaceAll('{username}', username);

    // ignore: prefer_final_locals
    Object? postBody = addToShoppingListRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hash', hash));

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Add to Shopping List
  ///
  /// Add an item to the current shopping list of a user.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  ///
  /// * [AddToShoppingListRequest] addToShoppingListRequest (required):
  Future<GetShoppingList200Response?> addToShoppingList(String username, String hash, AddToShoppingListRequest addToShoppingListRequest,) async {
    final response = await addToShoppingListWithHttpInfo(username, hash, addToShoppingListRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetShoppingList200Response',) as GetShoppingList200Response;
    
    }
    return null;
  }

  /// Clear Meal Plan Day
  ///
  /// Delete all planned items from the user's meal plan for a specific day.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] date (required):
  ///   The date in the format yyyy-mm-dd.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<Response> clearMealPlanDayWithHttpInfo(String username, String date, String hash,) async {
    // ignore: prefer_const_declarations
    final path = r'/mealplanner/{username}/day/{date}'
      .replaceAll('{username}', username)
      .replaceAll('{date}', date);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hash', hash));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Clear Meal Plan Day
  ///
  /// Delete all planned items from the user's meal plan for a specific day.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] date (required):
  ///   The date in the format yyyy-mm-dd.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<Object?> clearMealPlanDay(String username, String date, String hash,) async {
    final response = await clearMealPlanDayWithHttpInfo(username, date, hash,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Connect User
  ///
  /// In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ConnectUserRequest] connectUserRequest (required):
  Future<Response> connectUserWithHttpInfo(ConnectUserRequest connectUserRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/connect';

    // ignore: prefer_final_locals
    Object? postBody = connectUserRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Connect User
  ///
  /// In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.
  ///
  /// Parameters:
  ///
  /// * [ConnectUserRequest] connectUserRequest (required):
  Future<ConnectUser200Response?> connectUser(ConnectUserRequest connectUserRequest,) async {
    final response = await connectUserWithHttpInfo(connectUserRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectUser200Response',) as ConnectUser200Response;
    
    }
    return null;
  }

  /// Delete from Meal Plan
  ///
  /// Delete an item from the user's meal plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [int] id (required):
  ///   The shopping list item id.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<Response> deleteFromMealPlanWithHttpInfo(String username, int id, String hash,) async {
    // ignore: prefer_const_declarations
    final path = r'/mealplanner/{username}/items/{id}'
      .replaceAll('{username}', username)
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hash', hash));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete from Meal Plan
  ///
  /// Delete an item from the user's meal plan.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [int] id (required):
  ///   The shopping list item id.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<Object?> deleteFromMealPlan(String username, int id, String hash,) async {
    final response = await deleteFromMealPlanWithHttpInfo(username, id, hash,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Delete from Shopping List
  ///
  /// Delete an item from the current shopping list of the user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [int] id (required):
  ///   The shopping list item id.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<Response> deleteFromShoppingListWithHttpInfo(String username, int id, String hash,) async {
    // ignore: prefer_const_declarations
    final path = r'/mealplanner/{username}/shopping-list/items/{id}'
      .replaceAll('{username}', username)
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hash', hash));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete from Shopping List
  ///
  /// Delete an item from the current shopping list of the user.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [int] id (required):
  ///   The shopping list item id.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<Object?> deleteFromShoppingList(String username, int id, String hash,) async {
    final response = await deleteFromShoppingListWithHttpInfo(username, id, hash,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Delete Meal Plan Template
  ///
  /// Delete a meal plan template for a user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [int] id (required):
  ///   The shopping list item id.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<Response> deleteMealPlanTemplateWithHttpInfo(String username, int id, String hash,) async {
    // ignore: prefer_const_declarations
    final path = r'/mealplanner/{username}/templates/{id}'
      .replaceAll('{username}', username)
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hash', hash));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Meal Plan Template
  ///
  /// Delete a meal plan template for a user.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [int] id (required):
  ///   The shopping list item id.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<Object?> deleteMealPlanTemplate(String username, int id, String hash,) async {
    final response = await deleteMealPlanTemplateWithHttpInfo(username, id, hash,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Generate Meal Plan
  ///
  /// Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] timeFrame:
  ///   Either for one \"day\" or an entire \"week\".
  ///
  /// * [num] targetCalories:
  ///   What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
  ///
  /// * [String] diet:
  ///   Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
  ///
  /// * [String] exclude:
  ///   A comma-separated list of allergens or ingredients that must be excluded.
  Future<Response> generateMealPlanWithHttpInfo({ String? timeFrame, num? targetCalories, String? diet, String? exclude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/mealplanner/generate';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (timeFrame != null) {
      queryParams.addAll(_queryParams('', 'timeFrame', timeFrame));
    }
    if (targetCalories != null) {
      queryParams.addAll(_queryParams('', 'targetCalories', targetCalories));
    }
    if (diet != null) {
      queryParams.addAll(_queryParams('', 'diet', diet));
    }
    if (exclude != null) {
      queryParams.addAll(_queryParams('', 'exclude', exclude));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Generate Meal Plan
  ///
  /// Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
  ///
  /// Parameters:
  ///
  /// * [String] timeFrame:
  ///   Either for one \"day\" or an entire \"week\".
  ///
  /// * [num] targetCalories:
  ///   What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
  ///
  /// * [String] diet:
  ///   Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
  ///
  /// * [String] exclude:
  ///   A comma-separated list of allergens or ingredients that must be excluded.
  Future<GenerateMealPlan200Response?> generateMealPlan({ String? timeFrame, num? targetCalories, String? diet, String? exclude, }) async {
    final response = await generateMealPlanWithHttpInfo( timeFrame: timeFrame, targetCalories: targetCalories, diet: diet, exclude: exclude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GenerateMealPlan200Response',) as GenerateMealPlan200Response;
    
    }
    return null;
  }

  /// Generate Shopping List
  ///
  /// Generate the shopping list for a user from the meal planner in a given time frame.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] startDate (required):
  ///   The start date in the format yyyy-mm-dd.
  ///
  /// * [String] endDate (required):
  ///   The end date in the format yyyy-mm-dd.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<Response> generateShoppingListWithHttpInfo(String username, String startDate, String endDate, String hash,) async {
    // ignore: prefer_const_declarations
    final path = r'/mealplanner/{username}/shopping-list/{start_date}/{end_date}'
      .replaceAll('{username}', username)
      .replaceAll('{start_date}', startDate)
      .replaceAll('{end_date}', endDate);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hash', hash));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Generate Shopping List
  ///
  /// Generate the shopping list for a user from the meal planner in a given time frame.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] startDate (required):
  ///   The start date in the format yyyy-mm-dd.
  ///
  /// * [String] endDate (required):
  ///   The end date in the format yyyy-mm-dd.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<GetShoppingList200Response?> generateShoppingList(String username, String startDate, String endDate, String hash,) async {
    final response = await generateShoppingListWithHttpInfo(username, startDate, endDate, hash,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetShoppingList200Response',) as GetShoppingList200Response;
    
    }
    return null;
  }

  /// Get Meal Plan Template
  ///
  /// Get information about a meal plan template.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [int] id (required):
  ///   The shopping list item id.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<Response> getMealPlanTemplateWithHttpInfo(String username, int id, String hash,) async {
    // ignore: prefer_const_declarations
    final path = r'/mealplanner/{username}/templates/{id}'
      .replaceAll('{username}', username)
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hash', hash));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Meal Plan Template
  ///
  /// Get information about a meal plan template.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [int] id (required):
  ///   The shopping list item id.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<GetMealPlanTemplate200Response?> getMealPlanTemplate(String username, int id, String hash,) async {
    final response = await getMealPlanTemplateWithHttpInfo(username, id, hash,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetMealPlanTemplate200Response',) as GetMealPlanTemplate200Response;
    
    }
    return null;
  }

  /// Get Meal Plan Templates
  ///
  /// Get meal plan templates from user or public ones.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<Response> getMealPlanTemplatesWithHttpInfo(String username, String hash,) async {
    // ignore: prefer_const_declarations
    final path = r'/mealplanner/{username}/templates'
      .replaceAll('{username}', username);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hash', hash));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Meal Plan Templates
  ///
  /// Get meal plan templates from user or public ones.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<GetMealPlanTemplates200Response?> getMealPlanTemplates(String username, String hash,) async {
    final response = await getMealPlanTemplatesWithHttpInfo(username, hash,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetMealPlanTemplates200Response',) as GetMealPlanTemplates200Response;
    
    }
    return null;
  }

  /// Get Meal Plan Week
  ///
  /// Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] startDate (required):
  ///   The start date of the meal planned week in the format yyyy-mm-dd.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<Response> getMealPlanWeekWithHttpInfo(String username, String startDate, String hash,) async {
    // ignore: prefer_const_declarations
    final path = r'/mealplanner/{username}/week/{start_date}'
      .replaceAll('{username}', username)
      .replaceAll('{start_date}', startDate);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hash', hash));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Meal Plan Week
  ///
  /// Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] startDate (required):
  ///   The start date of the meal planned week in the format yyyy-mm-dd.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<GetMealPlanWeek200Response?> getMealPlanWeek(String username, String startDate, String hash,) async {
    final response = await getMealPlanWeekWithHttpInfo(username, startDate, hash,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetMealPlanWeek200Response',) as GetMealPlanWeek200Response;
    
    }
    return null;
  }

  /// Get Shopping List
  ///
  /// Get the current shopping list for the given user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<Response> getShoppingListWithHttpInfo(String username, String hash,) async {
    // ignore: prefer_const_declarations
    final path = r'/mealplanner/{username}/shopping-list'
      .replaceAll('{username}', username);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hash', hash));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Shopping List
  ///
  /// Get the current shopping list for the given user.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  Future<GetShoppingList200Response?> getShoppingList(String username, String hash,) async {
    final response = await getShoppingListWithHttpInfo(username, hash,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetShoppingList200Response',) as GetShoppingList200Response;
    
    }
    return null;
  }
}
