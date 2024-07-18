//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class IngredientsApi {
  IngredientsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Autocomplete Ingredient Search
  ///
  /// Autocomplete the entry of an ingredient.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (natural language) search query.
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  ///
  /// * [bool] metaInformation:
  ///   Whether to return more meta information about the ingredients.
  ///
  /// * [String] intolerances:
  ///   A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  Future<Response> autocompleteIngredientSearchWithHttpInfo(String query, { int? number, bool? metaInformation, String? intolerances, String? language, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/ingredients/autocomplete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }
    if (metaInformation != null) {
      queryParams.addAll(_queryParams('', 'metaInformation', metaInformation));
    }
    if (intolerances != null) {
      queryParams.addAll(_queryParams('', 'intolerances', intolerances));
    }
    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
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

  /// Autocomplete Ingredient Search
  ///
  /// Autocomplete the entry of an ingredient.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (natural language) search query.
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  ///
  /// * [bool] metaInformation:
  ///   Whether to return more meta information about the ingredients.
  ///
  /// * [String] intolerances:
  ///   A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  Future<Set<AutocompleteIngredientSearch200ResponseInner>?> autocompleteIngredientSearch(String query, { int? number, bool? metaInformation, String? intolerances, String? language, }) async {
    final response = await autocompleteIngredientSearchWithHttpInfo(query,  number: number, metaInformation: metaInformation, intolerances: intolerances, language: language, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'Set<AutocompleteIngredientSearch200ResponseInner>') as List)
        .cast<AutocompleteIngredientSearch200ResponseInner>()
        .toSet();

    }
    return null;
  }

  /// Compute Ingredient Amount
  ///
  /// Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the ingredient you want the amount for.
  ///
  /// * [String] nutrient (required):
  ///   The target nutrient. See a list of supported nutrients.
  ///
  /// * [int] target (required):
  ///   The target number of the given nutrient.
  ///
  /// * [String] unit:
  ///   The target unit.
  Future<Response> computeIngredientAmountWithHttpInfo(int id, String nutrient, int target, { String? unit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/ingredients/{id}/amount'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'nutrient', nutrient));
      queryParams.addAll(_queryParams('', 'target', target));
    if (unit != null) {
      queryParams.addAll(_queryParams('', 'unit', unit));
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

  /// Compute Ingredient Amount
  ///
  /// Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the ingredient you want the amount for.
  ///
  /// * [String] nutrient (required):
  ///   The target nutrient. See a list of supported nutrients.
  ///
  /// * [int] target (required):
  ///   The target number of the given nutrient.
  ///
  /// * [String] unit:
  ///   The target unit.
  Future<ComputeIngredientAmount200Response?> computeIngredientAmount(int id, String nutrient, int target, { String? unit, }) async {
    final response = await computeIngredientAmountWithHttpInfo(id, nutrient, target,  unit: unit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ComputeIngredientAmount200Response',) as ComputeIngredientAmount200Response;
    
    }
    return null;
  }

  /// Get Ingredient Information
  ///
  /// Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ingredient id.
  ///
  /// * [num] amount:
  ///   The amount of this ingredient.
  ///
  /// * [String] unit:
  ///   The unit for the given amount.
  Future<Response> getIngredientInformationWithHttpInfo(int id, { num? amount, String? unit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/ingredients/{id}/information'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (amount != null) {
      queryParams.addAll(_queryParams('', 'amount', amount));
    }
    if (unit != null) {
      queryParams.addAll(_queryParams('', 'unit', unit));
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

  /// Get Ingredient Information
  ///
  /// Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ingredient id.
  ///
  /// * [num] amount:
  ///   The amount of this ingredient.
  ///
  /// * [String] unit:
  ///   The unit for the given amount.
  Future<IngredientInformation?> getIngredientInformation(int id, { num? amount, String? unit, }) async {
    final response = await getIngredientInformationWithHttpInfo(id,  amount: amount, unit: unit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IngredientInformation',) as IngredientInformation;
    
    }
    return null;
  }

  /// Get Ingredient Substitutes
  ///
  /// Search for substitutes for a given ingredient.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ingredientName (required):
  ///   The name of the ingredient you want to replace.
  Future<Response> getIngredientSubstitutesWithHttpInfo(String ingredientName,) async {
    // ignore: prefer_const_declarations
    final path = r'/food/ingredients/substitutes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'ingredientName', ingredientName));

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

  /// Get Ingredient Substitutes
  ///
  /// Search for substitutes for a given ingredient.
  ///
  /// Parameters:
  ///
  /// * [String] ingredientName (required):
  ///   The name of the ingredient you want to replace.
  Future<GetIngredientSubstitutes200Response?> getIngredientSubstitutes(String ingredientName,) async {
    final response = await getIngredientSubstitutesWithHttpInfo(ingredientName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetIngredientSubstitutes200Response',) as GetIngredientSubstitutes200Response;
    
    }
    return null;
  }

  /// Get Ingredient Substitutes by ID
  ///
  /// Search for substitutes for a given ingredient.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the ingredient you want substitutes for.
  Future<Response> getIngredientSubstitutesByIDWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/food/ingredients/{id}/substitutes'
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

  /// Get Ingredient Substitutes by ID
  ///
  /// Search for substitutes for a given ingredient.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the ingredient you want substitutes for.
  Future<GetIngredientSubstitutes200Response?> getIngredientSubstitutesByID(int id,) async {
    final response = await getIngredientSubstitutesByIDWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetIngredientSubstitutes200Response',) as GetIngredientSubstitutes200Response;
    
    }
    return null;
  }

  /// Ingredient Search
  ///
  /// Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (natural language) search query.
  ///
  /// * [bool] addChildren:
  ///   Whether to add children of found foods.
  ///
  /// * [num] minProteinPercent:
  ///   The minimum percentage of protein the food must have (between 0 and 100).
  ///
  /// * [num] maxProteinPercent:
  ///   The maximum percentage of protein the food can have (between 0 and 100).
  ///
  /// * [num] minFatPercent:
  ///   The minimum percentage of fat the food must have (between 0 and 100).
  ///
  /// * [num] maxFatPercent:
  ///   The maximum percentage of fat the food can have (between 0 and 100).
  ///
  /// * [num] minCarbsPercent:
  ///   The minimum percentage of carbs the food must have (between 0 and 100).
  ///
  /// * [num] maxCarbsPercent:
  ///   The maximum percentage of carbs the food can have (between 0 and 100).
  ///
  /// * [bool] metaInformation:
  ///   Whether to return more meta information about the ingredients.
  ///
  /// * [String] intolerances:
  ///   A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
  ///
  /// * [String] sort:
  ///   The strategy to sort recipes by. See a full list of supported sorting options.
  ///
  /// * [String] sortDirection:
  ///   The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
  ///
  /// * [int] offset:
  ///   The number of results to skip (between 0 and 900).
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  Future<Response> ingredientSearchWithHttpInfo(String query, { bool? addChildren, num? minProteinPercent, num? maxProteinPercent, num? minFatPercent, num? maxFatPercent, num? minCarbsPercent, num? maxCarbsPercent, bool? metaInformation, String? intolerances, String? sort, String? sortDirection, int? offset, int? number, String? language, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/ingredients/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
    if (addChildren != null) {
      queryParams.addAll(_queryParams('', 'addChildren', addChildren));
    }
    if (minProteinPercent != null) {
      queryParams.addAll(_queryParams('', 'minProteinPercent', minProteinPercent));
    }
    if (maxProteinPercent != null) {
      queryParams.addAll(_queryParams('', 'maxProteinPercent', maxProteinPercent));
    }
    if (minFatPercent != null) {
      queryParams.addAll(_queryParams('', 'minFatPercent', minFatPercent));
    }
    if (maxFatPercent != null) {
      queryParams.addAll(_queryParams('', 'maxFatPercent', maxFatPercent));
    }
    if (minCarbsPercent != null) {
      queryParams.addAll(_queryParams('', 'minCarbsPercent', minCarbsPercent));
    }
    if (maxCarbsPercent != null) {
      queryParams.addAll(_queryParams('', 'maxCarbsPercent', maxCarbsPercent));
    }
    if (metaInformation != null) {
      queryParams.addAll(_queryParams('', 'metaInformation', metaInformation));
    }
    if (intolerances != null) {
      queryParams.addAll(_queryParams('', 'intolerances', intolerances));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (sortDirection != null) {
      queryParams.addAll(_queryParams('', 'sortDirection', sortDirection));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }
    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
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

  /// Ingredient Search
  ///
  /// Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (natural language) search query.
  ///
  /// * [bool] addChildren:
  ///   Whether to add children of found foods.
  ///
  /// * [num] minProteinPercent:
  ///   The minimum percentage of protein the food must have (between 0 and 100).
  ///
  /// * [num] maxProteinPercent:
  ///   The maximum percentage of protein the food can have (between 0 and 100).
  ///
  /// * [num] minFatPercent:
  ///   The minimum percentage of fat the food must have (between 0 and 100).
  ///
  /// * [num] maxFatPercent:
  ///   The maximum percentage of fat the food can have (between 0 and 100).
  ///
  /// * [num] minCarbsPercent:
  ///   The minimum percentage of carbs the food must have (between 0 and 100).
  ///
  /// * [num] maxCarbsPercent:
  ///   The maximum percentage of carbs the food can have (between 0 and 100).
  ///
  /// * [bool] metaInformation:
  ///   Whether to return more meta information about the ingredients.
  ///
  /// * [String] intolerances:
  ///   A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
  ///
  /// * [String] sort:
  ///   The strategy to sort recipes by. See a full list of supported sorting options.
  ///
  /// * [String] sortDirection:
  ///   The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
  ///
  /// * [int] offset:
  ///   The number of results to skip (between 0 and 900).
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  Future<IngredientSearch200Response?> ingredientSearch(String query, { bool? addChildren, num? minProteinPercent, num? maxProteinPercent, num? minFatPercent, num? maxFatPercent, num? minCarbsPercent, num? maxCarbsPercent, bool? metaInformation, String? intolerances, String? sort, String? sortDirection, int? offset, int? number, String? language, }) async {
    final response = await ingredientSearchWithHttpInfo(query,  addChildren: addChildren, minProteinPercent: minProteinPercent, maxProteinPercent: maxProteinPercent, minFatPercent: minFatPercent, maxFatPercent: maxFatPercent, minCarbsPercent: minCarbsPercent, maxCarbsPercent: maxCarbsPercent, metaInformation: metaInformation, intolerances: intolerances, sort: sort, sortDirection: sortDirection, offset: offset, number: number, language: language, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IngredientSearch200Response',) as IngredientSearch200Response;
    
    }
    return null;
  }

  /// Ingredients by ID Image
  ///
  /// Visualize a recipe's ingredient list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [String] measure:
  ///   Whether the the measures should be 'us' or 'metric'.
  Future<Response> ingredientsByIDImageWithHttpInfo(int id, { String? measure, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/ingredientWidget.png'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (measure != null) {
      queryParams.addAll(_queryParams('', 'measure', measure));
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

  /// Ingredients by ID Image
  ///
  /// Visualize a recipe's ingredient list.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [String] measure:
  ///   Whether the the measures should be 'us' or 'metric'.
  Future<MultipartFile?> ingredientsByIDImage(int id, { String? measure, }) async {
    final response = await ingredientsByIDImageWithHttpInfo(id,  measure: measure, );
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

  /// Map Ingredients to Grocery Products
  ///
  /// Map a set of ingredients to products you can buy in the grocery store.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MapIngredientsToGroceryProductsRequest] mapIngredientsToGroceryProductsRequest (required):
  Future<Response> mapIngredientsToGroceryProductsWithHttpInfo(MapIngredientsToGroceryProductsRequest mapIngredientsToGroceryProductsRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/food/ingredients/map';

    // ignore: prefer_final_locals
    Object? postBody = mapIngredientsToGroceryProductsRequest;

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

  /// Map Ingredients to Grocery Products
  ///
  /// Map a set of ingredients to products you can buy in the grocery store.
  ///
  /// Parameters:
  ///
  /// * [MapIngredientsToGroceryProductsRequest] mapIngredientsToGroceryProductsRequest (required):
  Future<Set<MapIngredientsToGroceryProducts200ResponseInner>?> mapIngredientsToGroceryProducts(MapIngredientsToGroceryProductsRequest mapIngredientsToGroceryProductsRequest,) async {
    final response = await mapIngredientsToGroceryProductsWithHttpInfo(mapIngredientsToGroceryProductsRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'Set<MapIngredientsToGroceryProducts200ResponseInner>') as List)
        .cast<MapIngredientsToGroceryProducts200ResponseInner>()
        .toSet();

    }
    return null;
  }

  /// Ingredients Widget
  ///
  /// Visualize ingredients of a recipe. You can play around with that endpoint!
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ingredientList (required):
  ///   The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
  ///
  /// * [num] servings (required):
  ///   The number of servings.
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  ///
  /// * [String] measure:
  ///   The original system of measurement, either 'metric' or 'us'.
  ///
  /// * [String] view:
  ///   How to visualize the ingredients, either 'grid' or 'list'.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  ///
  /// * [bool] showBacklink:
  ///   Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
  Future<Response> visualizeIngredientsWithHttpInfo(String ingredientList, num servings, { String? language, String? measure, String? view, bool? defaultCss, bool? showBacklink, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/visualizeIngredients';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (ingredientList != null) {
      formParams[r'ingredientList'] = parameterToString(ingredientList);
    }
    if (servings != null) {
      formParams[r'servings'] = parameterToString(servings);
    }
    if (measure != null) {
      formParams[r'measure'] = parameterToString(measure);
    }
    if (view != null) {
      formParams[r'view'] = parameterToString(view);
    }
    if (defaultCss != null) {
      formParams[r'defaultCss'] = parameterToString(defaultCss);
    }
    if (showBacklink != null) {
      formParams[r'showBacklink'] = parameterToString(showBacklink);
    }

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

  /// Ingredients Widget
  ///
  /// Visualize ingredients of a recipe. You can play around with that endpoint!
  ///
  /// Parameters:
  ///
  /// * [String] ingredientList (required):
  ///   The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
  ///
  /// * [num] servings (required):
  ///   The number of servings.
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  ///
  /// * [String] measure:
  ///   The original system of measurement, either 'metric' or 'us'.
  ///
  /// * [String] view:
  ///   How to visualize the ingredients, either 'grid' or 'list'.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  ///
  /// * [bool] showBacklink:
  ///   Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
  Future<String?> visualizeIngredients(String ingredientList, num servings, { String? language, String? measure, String? view, bool? defaultCss, bool? showBacklink, }) async {
    final response = await visualizeIngredientsWithHttpInfo(ingredientList, servings,  language: language, measure: measure, view: view, defaultCss: defaultCss, showBacklink: showBacklink, );
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
