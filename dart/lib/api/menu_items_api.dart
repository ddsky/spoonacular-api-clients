//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MenuItemsApi {
  MenuItemsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Autocomplete Menu Item Search
  ///
  /// Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (partial) search query.
  ///
  /// * [int] number:
  ///   The number of results to return (between 1 and 25).
  Future<Response> autocompleteMenuItemSearchWithHttpInfo(String query, { int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/menuItems/suggest';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
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

  /// Autocomplete Menu Item Search
  ///
  /// Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (partial) search query.
  ///
  /// * [int] number:
  ///   The number of results to return (between 1 and 25).
  Future<AutocompleteProductSearch200Response?> autocompleteMenuItemSearch(String query, { int? number, }) async {
    final response = await autocompleteMenuItemSearchWithHttpInfo(query,  number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AutocompleteProductSearch200Response',) as AutocompleteProductSearch200Response;
    
    }
    return null;
  }

  /// Get Menu Item Information
  ///
  /// Use a menu item id to get all available information about a menu item, such as nutrition.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The menu item id.
  Future<Response> getMenuItemInformationWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/food/menuItems/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Menu Item Information
  ///
  /// Use a menu item id to get all available information about a menu item, such as nutrition.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The menu item id.
  Future<MenuItem?> getMenuItemInformation(int id,) async {
    final response = await getMenuItemInformationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MenuItem',) as MenuItem;
    
    }
    return null;
  }

  /// Menu Item Nutrition by ID Image
  ///
  /// Visualize a menu item's nutritional information as HTML including CSS.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The menu item id.
  Future<Response> menuItemNutritionByIDImageWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/food/menuItems/{id}/nutritionWidget.png'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Menu Item Nutrition by ID Image
  ///
  /// Visualize a menu item's nutritional information as HTML including CSS.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The menu item id.
  Future<MultipartFile?> menuItemNutritionByIDImage(int id,) async {
    final response = await menuItemNutritionByIDImageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Menu Item Nutrition Label Image
  ///
  /// Visualize a menu item's nutritional label information as an image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The menu item id.
  ///
  /// * [bool] showOptionalNutrients:
  ///   Whether to show optional nutrients.
  ///
  /// * [bool] showZeroValues:
  ///   Whether to show zero values.
  ///
  /// * [bool] showIngredients:
  ///   Whether to show a list of ingredients.
  Future<Response> menuItemNutritionLabelImageWithHttpInfo(int id, { bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/menuItems/{id}/nutritionLabel.png'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (showOptionalNutrients != null) {
      queryParams.addAll(_queryParams('', 'showOptionalNutrients', showOptionalNutrients));
    }
    if (showZeroValues != null) {
      queryParams.addAll(_queryParams('', 'showZeroValues', showZeroValues));
    }
    if (showIngredients != null) {
      queryParams.addAll(_queryParams('', 'showIngredients', showIngredients));
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

  /// Menu Item Nutrition Label Image
  ///
  /// Visualize a menu item's nutritional label information as an image.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The menu item id.
  ///
  /// * [bool] showOptionalNutrients:
  ///   Whether to show optional nutrients.
  ///
  /// * [bool] showZeroValues:
  ///   Whether to show zero values.
  ///
  /// * [bool] showIngredients:
  ///   Whether to show a list of ingredients.
  Future<MultipartFile?> menuItemNutritionLabelImage(int id, { bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients, }) async {
    final response = await menuItemNutritionLabelImageWithHttpInfo(id,  showOptionalNutrients: showOptionalNutrients, showZeroValues: showZeroValues, showIngredients: showIngredients, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Menu Item Nutrition Label Widget
  ///
  /// Visualize a menu item's nutritional label information as HTML including CSS.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The menu item id.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  ///
  /// * [bool] showOptionalNutrients:
  ///   Whether to show optional nutrients.
  ///
  /// * [bool] showZeroValues:
  ///   Whether to show zero values.
  ///
  /// * [bool] showIngredients:
  ///   Whether to show a list of ingredients.
  Future<Response> menuItemNutritionLabelWidgetWithHttpInfo(int id, { bool? defaultCss, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/menuItems/{id}/nutritionLabel'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (defaultCss != null) {
      queryParams.addAll(_queryParams('', 'defaultCss', defaultCss));
    }
    if (showOptionalNutrients != null) {
      queryParams.addAll(_queryParams('', 'showOptionalNutrients', showOptionalNutrients));
    }
    if (showZeroValues != null) {
      queryParams.addAll(_queryParams('', 'showZeroValues', showZeroValues));
    }
    if (showIngredients != null) {
      queryParams.addAll(_queryParams('', 'showIngredients', showIngredients));
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

  /// Menu Item Nutrition Label Widget
  ///
  /// Visualize a menu item's nutritional label information as HTML including CSS.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The menu item id.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  ///
  /// * [bool] showOptionalNutrients:
  ///   Whether to show optional nutrients.
  ///
  /// * [bool] showZeroValues:
  ///   Whether to show zero values.
  ///
  /// * [bool] showIngredients:
  ///   Whether to show a list of ingredients.
  Future<String?> menuItemNutritionLabelWidget(int id, { bool? defaultCss, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients, }) async {
    final response = await menuItemNutritionLabelWidgetWithHttpInfo(id,  defaultCss: defaultCss, showOptionalNutrients: showOptionalNutrients, showZeroValues: showZeroValues, showIngredients: showIngredients, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Search Menu Items
  ///
  /// Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (natural language) search query.
  ///
  /// * [num] minCalories:
  ///   The minimum amount of calories the menu item must have.
  ///
  /// * [num] maxCalories:
  ///   The maximum amount of calories the menu item can have.
  ///
  /// * [num] minCarbs:
  ///   The minimum amount of carbohydrates in grams the menu item must have.
  ///
  /// * [num] maxCarbs:
  ///   The maximum amount of carbohydrates in grams the menu item can have.
  ///
  /// * [num] minProtein:
  ///   The minimum amount of protein in grams the menu item must have.
  ///
  /// * [num] maxProtein:
  ///   The maximum amount of protein in grams the menu item can have.
  ///
  /// * [num] minFat:
  ///   The minimum amount of fat in grams the menu item must have.
  ///
  /// * [num] maxFat:
  ///   The maximum amount of fat in grams the menu item can have.
  ///
  /// * [bool] addMenuItemInformation:
  ///   If set to true, you get more information about the menu items returned.
  ///
  /// * [int] offset:
  ///   The number of results to skip (between 0 and 900).
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<Response> searchMenuItemsWithHttpInfo(String query, { num? minCalories, num? maxCalories, num? minCarbs, num? maxCarbs, num? minProtein, num? maxProtein, num? minFat, num? maxFat, bool? addMenuItemInformation, int? offset, int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/menuItems/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
    if (minCalories != null) {
      queryParams.addAll(_queryParams('', 'minCalories', minCalories));
    }
    if (maxCalories != null) {
      queryParams.addAll(_queryParams('', 'maxCalories', maxCalories));
    }
    if (minCarbs != null) {
      queryParams.addAll(_queryParams('', 'minCarbs', minCarbs));
    }
    if (maxCarbs != null) {
      queryParams.addAll(_queryParams('', 'maxCarbs', maxCarbs));
    }
    if (minProtein != null) {
      queryParams.addAll(_queryParams('', 'minProtein', minProtein));
    }
    if (maxProtein != null) {
      queryParams.addAll(_queryParams('', 'maxProtein', maxProtein));
    }
    if (minFat != null) {
      queryParams.addAll(_queryParams('', 'minFat', minFat));
    }
    if (maxFat != null) {
      queryParams.addAll(_queryParams('', 'maxFat', maxFat));
    }
    if (addMenuItemInformation != null) {
      queryParams.addAll(_queryParams('', 'addMenuItemInformation', addMenuItemInformation));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
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

  /// Search Menu Items
  ///
  /// Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (natural language) search query.
  ///
  /// * [num] minCalories:
  ///   The minimum amount of calories the menu item must have.
  ///
  /// * [num] maxCalories:
  ///   The maximum amount of calories the menu item can have.
  ///
  /// * [num] minCarbs:
  ///   The minimum amount of carbohydrates in grams the menu item must have.
  ///
  /// * [num] maxCarbs:
  ///   The maximum amount of carbohydrates in grams the menu item can have.
  ///
  /// * [num] minProtein:
  ///   The minimum amount of protein in grams the menu item must have.
  ///
  /// * [num] maxProtein:
  ///   The maximum amount of protein in grams the menu item can have.
  ///
  /// * [num] minFat:
  ///   The minimum amount of fat in grams the menu item must have.
  ///
  /// * [num] maxFat:
  ///   The maximum amount of fat in grams the menu item can have.
  ///
  /// * [bool] addMenuItemInformation:
  ///   If set to true, you get more information about the menu items returned.
  ///
  /// * [int] offset:
  ///   The number of results to skip (between 0 and 900).
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<SearchMenuItems200Response?> searchMenuItems(String query, { num? minCalories, num? maxCalories, num? minCarbs, num? maxCarbs, num? minProtein, num? maxProtein, num? minFat, num? maxFat, bool? addMenuItemInformation, int? offset, int? number, }) async {
    final response = await searchMenuItemsWithHttpInfo(query,  minCalories: minCalories, maxCalories: maxCalories, minCarbs: minCarbs, maxCarbs: maxCarbs, minProtein: minProtein, maxProtein: maxProtein, minFat: minFat, maxFat: maxFat, addMenuItemInformation: addMenuItemInformation, offset: offset, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchMenuItems200Response',) as SearchMenuItems200Response;
    
    }
    return null;
  }

  /// Menu Item Nutrition by ID Widget
  ///
  /// Visualize a menu item's nutritional information as HTML including CSS.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The menu item id.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  Future<Response> visualizeMenuItemNutritionByIDWithHttpInfo(int id, { bool? defaultCss, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/menuItems/{id}/nutritionWidget'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (defaultCss != null) {
      queryParams.addAll(_queryParams('', 'defaultCss', defaultCss));
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

  /// Menu Item Nutrition by ID Widget
  ///
  /// Visualize a menu item's nutritional information as HTML including CSS.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The menu item id.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  Future<String?> visualizeMenuItemNutritionByID(int id, { bool? defaultCss, }) async {
    final response = await visualizeMenuItemNutritionByIDWithHttpInfo(id,  defaultCss: defaultCss, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }
}
