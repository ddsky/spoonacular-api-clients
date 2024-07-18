//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProductsApi {
  ProductsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Autocomplete Product Search
  ///
  /// Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.
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
  Future<Response> autocompleteProductSearchWithHttpInfo(String query, { int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/products/suggest';

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

  /// Autocomplete Product Search
  ///
  /// Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (partial) search query.
  ///
  /// * [int] number:
  ///   The number of results to return (between 1 and 25).
  Future<AutocompleteProductSearch200Response?> autocompleteProductSearch(String query, { int? number, }) async {
    final response = await autocompleteProductSearchWithHttpInfo(query,  number: number, );
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

  /// Classify Grocery Product
  ///
  /// This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ClassifyGroceryProductRequest] classifyGroceryProductRequest (required):
  ///
  /// * [String] locale:
  ///   The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
  Future<Response> classifyGroceryProductWithHttpInfo(ClassifyGroceryProductRequest classifyGroceryProductRequest, { String? locale, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/products/classify';

    // ignore: prefer_final_locals
    Object? postBody = classifyGroceryProductRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (locale != null) {
      queryParams.addAll(_queryParams('', 'locale', locale));
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

  /// Classify Grocery Product
  ///
  /// This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.
  ///
  /// Parameters:
  ///
  /// * [ClassifyGroceryProductRequest] classifyGroceryProductRequest (required):
  ///
  /// * [String] locale:
  ///   The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
  Future<ClassifyGroceryProduct200Response?> classifyGroceryProduct(ClassifyGroceryProductRequest classifyGroceryProductRequest, { String? locale, }) async {
    final response = await classifyGroceryProductWithHttpInfo(classifyGroceryProductRequest,  locale: locale, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClassifyGroceryProduct200Response',) as ClassifyGroceryProduct200Response;
    
    }
    return null;
  }

  /// Classify Grocery Product Bulk
  ///
  /// Provide a set of product jsons, get back classified products.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Set<ClassifyGroceryProductBulkRequestInner>] classifyGroceryProductBulkRequestInner (required):
  ///
  /// * [String] locale:
  ///   The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
  Future<Response> classifyGroceryProductBulkWithHttpInfo(Set<ClassifyGroceryProductBulkRequestInner> classifyGroceryProductBulkRequestInner, { String? locale, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/products/classifyBatch';

    // ignore: prefer_final_locals
    Object? postBody = classifyGroceryProductBulkRequestInner;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (locale != null) {
      queryParams.addAll(_queryParams('', 'locale', locale));
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

  /// Classify Grocery Product Bulk
  ///
  /// Provide a set of product jsons, get back classified products.
  ///
  /// Parameters:
  ///
  /// * [Set<ClassifyGroceryProductBulkRequestInner>] classifyGroceryProductBulkRequestInner (required):
  ///
  /// * [String] locale:
  ///   The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
  Future<Set<ClassifyGroceryProductBulk200ResponseInner>?> classifyGroceryProductBulk(Set<ClassifyGroceryProductBulkRequestInner> classifyGroceryProductBulkRequestInner, { String? locale, }) async {
    final response = await classifyGroceryProductBulkWithHttpInfo(classifyGroceryProductBulkRequestInner,  locale: locale, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'Set<ClassifyGroceryProductBulk200ResponseInner>') as List)
        .cast<ClassifyGroceryProductBulk200ResponseInner>()
        .toSet();

    }
    return null;
  }

  /// Get Comparable Products
  ///
  /// Find comparable products to the given one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] upc (required):
  ///   The UPC of the product for which you want to find comparable products.
  Future<Response> getComparableProductsWithHttpInfo(String upc,) async {
    // ignore: prefer_const_declarations
    final path = r'/food/products/upc/{upc}/comparable'
      .replaceAll('{upc}', upc);

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

  /// Get Comparable Products
  ///
  /// Find comparable products to the given one.
  ///
  /// Parameters:
  ///
  /// * [String] upc (required):
  ///   The UPC of the product for which you want to find comparable products.
  Future<GetComparableProducts200Response?> getComparableProducts(String upc,) async {
    final response = await getComparableProductsWithHttpInfo(upc,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetComparableProducts200Response',) as GetComparableProducts200Response;
    
    }
    return null;
  }

  /// Get Product Information
  ///
  /// Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the packaged food.
  Future<Response> getProductInformationWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/food/products/{id}'
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

  /// Get Product Information
  ///
  /// Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the packaged food.
  Future<ProductInformation?> getProductInformation(int id,) async {
    final response = await getProductInformationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProductInformation',) as ProductInformation;
    
    }
    return null;
  }

  /// Product Nutrition by ID Image
  ///
  /// Visualize a product's nutritional information as an image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the product.
  Future<Response> productNutritionByIDImageWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/food/products/{id}/nutritionWidget.png'
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

  /// Product Nutrition by ID Image
  ///
  /// Visualize a product's nutritional information as an image.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the product.
  Future<MultipartFile?> productNutritionByIDImage(int id,) async {
    final response = await productNutritionByIDImageWithHttpInfo(id,);
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

  /// Product Nutrition Label Image
  ///
  /// Get a product's nutrition label as an image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The product id.
  ///
  /// * [bool] showOptionalNutrients:
  ///   Whether to show optional nutrients.
  ///
  /// * [bool] showZeroValues:
  ///   Whether to show zero values.
  ///
  /// * [bool] showIngredients:
  ///   Whether to show a list of ingredients.
  Future<Response> productNutritionLabelImageWithHttpInfo(int id, { bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/products/{id}/nutritionLabel.png'
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

  /// Product Nutrition Label Image
  ///
  /// Get a product's nutrition label as an image.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The product id.
  ///
  /// * [bool] showOptionalNutrients:
  ///   Whether to show optional nutrients.
  ///
  /// * [bool] showZeroValues:
  ///   Whether to show zero values.
  ///
  /// * [bool] showIngredients:
  ///   Whether to show a list of ingredients.
  Future<MultipartFile?> productNutritionLabelImage(int id, { bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients, }) async {
    final response = await productNutritionLabelImageWithHttpInfo(id,  showOptionalNutrients: showOptionalNutrients, showZeroValues: showZeroValues, showIngredients: showIngredients, );
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

  /// Product Nutrition Label Widget
  ///
  /// Get a product's nutrition label as an HTML widget.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The product id.
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
  Future<Response> productNutritionLabelWidgetWithHttpInfo(int id, { bool? defaultCss, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/products/{id}/nutritionLabel'
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

  /// Product Nutrition Label Widget
  ///
  /// Get a product's nutrition label as an HTML widget.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The product id.
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
  Future<String?> productNutritionLabelWidget(int id, { bool? defaultCss, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients, }) async {
    final response = await productNutritionLabelWidgetWithHttpInfo(id,  defaultCss: defaultCss, showOptionalNutrients: showOptionalNutrients, showZeroValues: showZeroValues, showIngredients: showIngredients, );
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

  /// Search Grocery Products
  ///
  /// Search packaged food products, such as frozen pizza or Greek yogurt.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (natural language) search query.
  ///
  /// * [num] minCalories:
  ///   The minimum amount of calories the product must have.
  ///
  /// * [num] maxCalories:
  ///   The maximum amount of calories the product can have.
  ///
  /// * [num] minCarbs:
  ///   The minimum amount of carbohydrates in grams the product must have.
  ///
  /// * [num] maxCarbs:
  ///   The maximum amount of carbohydrates in grams the product can have.
  ///
  /// * [num] minProtein:
  ///   The minimum amount of protein in grams the product must have.
  ///
  /// * [num] maxProtein:
  ///   The maximum amount of protein in grams the product can have.
  ///
  /// * [num] minFat:
  ///   The minimum amount of fat in grams the product must have.
  ///
  /// * [num] maxFat:
  ///   The maximum amount of fat in grams the product can have.
  ///
  /// * [bool] addProductInformation:
  ///   If set to true, you get more information about the products returned.
  ///
  /// * [int] offset:
  ///   The number of results to skip (between 0 and 900).
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<Response> searchGroceryProductsWithHttpInfo(String query, { num? minCalories, num? maxCalories, num? minCarbs, num? maxCarbs, num? minProtein, num? maxProtein, num? minFat, num? maxFat, bool? addProductInformation, int? offset, int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/products/search';

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
    if (addProductInformation != null) {
      queryParams.addAll(_queryParams('', 'addProductInformation', addProductInformation));
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

  /// Search Grocery Products
  ///
  /// Search packaged food products, such as frozen pizza or Greek yogurt.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (natural language) search query.
  ///
  /// * [num] minCalories:
  ///   The minimum amount of calories the product must have.
  ///
  /// * [num] maxCalories:
  ///   The maximum amount of calories the product can have.
  ///
  /// * [num] minCarbs:
  ///   The minimum amount of carbohydrates in grams the product must have.
  ///
  /// * [num] maxCarbs:
  ///   The maximum amount of carbohydrates in grams the product can have.
  ///
  /// * [num] minProtein:
  ///   The minimum amount of protein in grams the product must have.
  ///
  /// * [num] maxProtein:
  ///   The maximum amount of protein in grams the product can have.
  ///
  /// * [num] minFat:
  ///   The minimum amount of fat in grams the product must have.
  ///
  /// * [num] maxFat:
  ///   The maximum amount of fat in grams the product can have.
  ///
  /// * [bool] addProductInformation:
  ///   If set to true, you get more information about the products returned.
  ///
  /// * [int] offset:
  ///   The number of results to skip (between 0 and 900).
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<SearchGroceryProducts200Response?> searchGroceryProducts(String query, { num? minCalories, num? maxCalories, num? minCarbs, num? maxCarbs, num? minProtein, num? maxProtein, num? minFat, num? maxFat, bool? addProductInformation, int? offset, int? number, }) async {
    final response = await searchGroceryProductsWithHttpInfo(query,  minCalories: minCalories, maxCalories: maxCalories, minCarbs: minCarbs, maxCarbs: maxCarbs, minProtein: minProtein, maxProtein: maxProtein, minFat: minFat, maxFat: maxFat, addProductInformation: addProductInformation, offset: offset, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchGroceryProducts200Response',) as SearchGroceryProducts200Response;
    
    }
    return null;
  }

  /// Search Grocery Products by UPC
  ///
  /// Get information about a packaged food using its UPC.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] upc (required):
  ///   The product's UPC.
  Future<Response> searchGroceryProductsByUPCWithHttpInfo(String upc,) async {
    // ignore: prefer_const_declarations
    final path = r'/food/products/upc/{upc}'
      .replaceAll('{upc}', upc);

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

  /// Search Grocery Products by UPC
  ///
  /// Get information about a packaged food using its UPC.
  ///
  /// Parameters:
  ///
  /// * [String] upc (required):
  ///   The product's UPC.
  Future<SearchGroceryProductsByUPC200Response?> searchGroceryProductsByUPC(String upc,) async {
    final response = await searchGroceryProductsByUPCWithHttpInfo(upc,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchGroceryProductsByUPC200Response',) as SearchGroceryProductsByUPC200Response;
    
    }
    return null;
  }

  /// Product Nutrition by ID Widget
  ///
  /// Visualize a product's nutritional information as HTML including CSS.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the product.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  Future<Response> visualizeProductNutritionByIDWithHttpInfo(int id, { bool? defaultCss, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/products/{id}/nutritionWidget'
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

  /// Product Nutrition by ID Widget
  ///
  /// Visualize a product's nutritional information as HTML including CSS.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the product.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  Future<String?> visualizeProductNutritionByID(int id, { bool? defaultCss, }) async {
    final response = await visualizeProductNutritionByIDWithHttpInfo(id,  defaultCss: defaultCss, );
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
