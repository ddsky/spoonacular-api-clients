//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Analyze Recipe
  ///
  /// This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AnalyzeRecipeRequest] analyzeRecipeRequest (required):
  ///   Example request body.
  ///
  /// * [String] language:
  ///   The input language, either \"en\" or \"de\".
  ///
  /// * [bool] includeNutrition:
  ///   Whether nutrition data should be added to correctly parsed ingredients.
  ///
  /// * [bool] includeTaste:
  ///   Whether taste data should be added to correctly parsed ingredients.
  Future<Response> analyzeRecipeWithHttpInfo(AnalyzeRecipeRequest analyzeRecipeRequest, { String? language, bool? includeNutrition, bool? includeTaste, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/analyze';

    // ignore: prefer_final_locals
    Object? postBody = analyzeRecipeRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }
    if (includeNutrition != null) {
      queryParams.addAll(_queryParams('', 'includeNutrition', includeNutrition));
    }
    if (includeTaste != null) {
      queryParams.addAll(_queryParams('', 'includeTaste', includeTaste));
    }

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

  /// Analyze Recipe
  ///
  /// This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
  ///
  /// Parameters:
  ///
  /// * [AnalyzeRecipeRequest] analyzeRecipeRequest (required):
  ///   Example request body.
  ///
  /// * [String] language:
  ///   The input language, either \"en\" or \"de\".
  ///
  /// * [bool] includeNutrition:
  ///   Whether nutrition data should be added to correctly parsed ingredients.
  ///
  /// * [bool] includeTaste:
  ///   Whether taste data should be added to correctly parsed ingredients.
  Future<Object?> analyzeRecipe(AnalyzeRecipeRequest analyzeRecipeRequest, { String? language, bool? includeNutrition, bool? includeTaste, }) async {
    final response = await analyzeRecipeWithHttpInfo(analyzeRecipeRequest,  language: language, includeNutrition: includeNutrition, includeTaste: includeTaste, );
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

  /// Create Recipe Card
  ///
  /// Generate a recipe card for a recipe.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [String] mask:
  ///   The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\").
  ///
  /// * [String] backgroundImage:
  ///   The background image (\"none\",\"background1\", or \"background2\").
  ///
  /// * [String] backgroundColor:
  ///   The background color for the recipe card as a hex-string.
  ///
  /// * [String] fontColor:
  ///   The font color for the recipe card as a hex-string.
  Future<Response> createRecipeCardGetWithHttpInfo(int id, { String? mask, String? backgroundImage, String? backgroundColor, String? fontColor, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/card'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (mask != null) {
      queryParams.addAll(_queryParams('', 'mask', mask));
    }
    if (backgroundImage != null) {
      queryParams.addAll(_queryParams('', 'backgroundImage', backgroundImage));
    }
    if (backgroundColor != null) {
      queryParams.addAll(_queryParams('', 'backgroundColor', backgroundColor));
    }
    if (fontColor != null) {
      queryParams.addAll(_queryParams('', 'fontColor', fontColor));
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

  /// Create Recipe Card
  ///
  /// Generate a recipe card for a recipe.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [String] mask:
  ///   The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\").
  ///
  /// * [String] backgroundImage:
  ///   The background image (\"none\",\"background1\", or \"background2\").
  ///
  /// * [String] backgroundColor:
  ///   The background color for the recipe card as a hex-string.
  ///
  /// * [String] fontColor:
  ///   The font color for the recipe card as a hex-string.
  Future<Object?> createRecipeCardGet(int id, { String? mask, String? backgroundImage, String? backgroundColor, String? fontColor, }) async {
    final response = await createRecipeCardGetWithHttpInfo(id,  mask: mask, backgroundImage: backgroundImage, backgroundColor: backgroundColor, fontColor: fontColor, );
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

  /// Search Restaurants
  ///
  /// Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   The search query.
  ///
  /// * [num] lat:
  ///   The latitude of the user's location.
  ///
  /// * [num] lng:
  ///   The longitude of the user's location.\".
  ///
  /// * [num] distance:
  ///   The distance around the location in miles.
  ///
  /// * [num] budget:
  ///   The user's budget for a meal in USD.
  ///
  /// * [String] cuisine:
  ///   The cuisine of the restaurant.
  ///
  /// * [num] minRating:
  ///   The minimum rating of the restaurant between 0 and 5.
  ///
  /// * [bool] isOpen:
  ///   Whether the restaurant must be open at the time of search.
  ///
  /// * [String] sort:
  ///   How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'.
  ///
  /// * [num] page:
  ///   The page number of results.
  Future<Response> searchRestaurantsWithHttpInfo({ String? query, num? lat, num? lng, num? distance, num? budget, String? cuisine, num? minRating, bool? isOpen, String? sort, num? page, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/restaurants/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (lat != null) {
      queryParams.addAll(_queryParams('', 'lat', lat));
    }
    if (lng != null) {
      queryParams.addAll(_queryParams('', 'lng', lng));
    }
    if (distance != null) {
      queryParams.addAll(_queryParams('', 'distance', distance));
    }
    if (budget != null) {
      queryParams.addAll(_queryParams('', 'budget', budget));
    }
    if (cuisine != null) {
      queryParams.addAll(_queryParams('', 'cuisine', cuisine));
    }
    if (minRating != null) {
      queryParams.addAll(_queryParams('', 'min-rating', minRating));
    }
    if (isOpen != null) {
      queryParams.addAll(_queryParams('', 'is-open', isOpen));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
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

  /// Search Restaurants
  ///
  /// Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   The search query.
  ///
  /// * [num] lat:
  ///   The latitude of the user's location.
  ///
  /// * [num] lng:
  ///   The longitude of the user's location.\".
  ///
  /// * [num] distance:
  ///   The distance around the location in miles.
  ///
  /// * [num] budget:
  ///   The user's budget for a meal in USD.
  ///
  /// * [String] cuisine:
  ///   The cuisine of the restaurant.
  ///
  /// * [num] minRating:
  ///   The minimum rating of the restaurant between 0 and 5.
  ///
  /// * [bool] isOpen:
  ///   Whether the restaurant must be open at the time of search.
  ///
  /// * [String] sort:
  ///   How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'.
  ///
  /// * [num] page:
  ///   The page number of results.
  Future<SearchRestaurants200Response?> searchRestaurants({ String? query, num? lat, num? lng, num? distance, num? budget, String? cuisine, num? minRating, bool? isOpen, String? sort, num? page, }) async {
    final response = await searchRestaurantsWithHttpInfo( query: query, lat: lat, lng: lng, distance: distance, budget: budget, cuisine: cuisine, minRating: minRating, isOpen: isOpen, sort: sort, page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchRestaurants200Response',) as SearchRestaurants200Response;
    
    }
    return null;
  }
}
