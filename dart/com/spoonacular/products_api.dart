part of openapi.api;



class ProductsApi {
  final ApiClient apiClient;

  ProductsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Autocomplete Product Search
  ///
  /// Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.
  Future<InlineResponse20032> autocompleteProductSearch(String query, { int number }) async {
    Object postBody;

    // verify required params are set
    if(query == null) {
     throw new ApiException(400, "Missing required param: query");
    }

    // create path and map variables
    String path = "/food/products/suggest".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
    if(number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "number", number));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyScheme"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20032') as InlineResponse20032;
    } else {
      return null;
    }
  }
  /// Classify Grocery Product
  ///
  /// This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.
  Future<InlineResponse20033> classifyGroceryProduct(InlineObject1 inlineObject1, { String locale }) async {
    Object postBody = inlineObject1;

    // verify required params are set
    if(inlineObject1 == null) {
     throw new ApiException(400, "Missing required param: inlineObject1");
    }

    // create path and map variables
    String path = "/food/products/classify".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(locale != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "locale", locale));
    }

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyScheme"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20033') as InlineResponse20033;
    } else {
      return null;
    }
  }
  /// Classify Grocery Product Bulk
  ///
  /// Provide a set of product jsons, get back classified products.
  Future<List<InlineResponse20033>> classifyGroceryProductBulk(List<InlineObject> inlineObject, { String locale }) async {
    Object postBody = inlineObject;

    // verify required params are set
    if(inlineObject == null) {
     throw new ApiException(400, "Missing required param: inlineObject");
    }

    // create path and map variables
    String path = "/food/products/classifyBatch".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(locale != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "locale", locale));
    }

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyScheme"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<InlineResponse20033>') as List).map((item) => item as InlineResponse20033).toList();
    } else {
      return null;
    }
  }
  /// Get Comparable Products
  ///
  /// Find comparable products to the given one.
  Future<InlineResponse20031> getComparableProducts(num upc) async {
    Object postBody;

    // verify required params are set
    if(upc == null) {
     throw new ApiException(400, "Missing required param: upc");
    }

    // create path and map variables
    String path = "/food/products/upc/{upc}/comparable".replaceAll("{format}","json").replaceAll("{" + "upc" + "}", upc.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyScheme"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20031') as InlineResponse20031;
    } else {
      return null;
    }
  }
  /// Get Product Information
  ///
  /// Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.
  Future<InlineResponse20030> getProductInformation(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/food/products/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyScheme"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20030') as InlineResponse20030;
    } else {
      return null;
    }
  }
  /// Product Nutrition by ID Image
  ///
  /// Visualize a product&#39;s nutritional information as an image.
  Future<Object> productNutritionByIDImage(num id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/food/products/{id}/nutritionWidget.png".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyScheme"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
  /// Product Nutrition Label Image
  ///
  /// Get a product&#39;s nutrition label as an image.
  Future<Object> productNutritionLabelImage(num id, { bool showOptionalNutrients, bool showZeroValues, bool showIngredients }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/food/products/{id}/nutritionLabel.png".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(showOptionalNutrients != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showOptionalNutrients", showOptionalNutrients));
    }
    if(showZeroValues != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showZeroValues", showZeroValues));
    }
    if(showIngredients != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showIngredients", showIngredients));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyScheme"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
  /// Product Nutrition Label Widget
  ///
  /// Get a product&#39;s nutrition label as an HTML widget.
  Future<String> productNutritionLabelWidget(num id, { bool defaultCss, bool showOptionalNutrients, bool showZeroValues, bool showIngredients }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/food/products/{id}/nutritionLabel".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(defaultCss != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "defaultCss", defaultCss));
    }
    if(showOptionalNutrients != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showOptionalNutrients", showOptionalNutrients));
    }
    if(showZeroValues != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showZeroValues", showZeroValues));
    }
    if(showIngredients != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showIngredients", showIngredients));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyScheme"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }
  /// Search Grocery Products
  ///
  /// Search packaged food products, such as frozen pizza or Greek yogurt.
  Future<InlineResponse20027> searchGroceryProducts({ String query, num minCalories, num maxCalories, num minCarbs, num maxCarbs, num minProtein, num maxProtein, num minFat, num maxFat, bool addProductInformation, int offset, int number }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/food/products/search".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(query != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
    }
    if(minCalories != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minCalories", minCalories));
    }
    if(maxCalories != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCalories", maxCalories));
    }
    if(minCarbs != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minCarbs", minCarbs));
    }
    if(maxCarbs != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCarbs", maxCarbs));
    }
    if(minProtein != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minProtein", minProtein));
    }
    if(maxProtein != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxProtein", maxProtein));
    }
    if(minFat != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minFat", minFat));
    }
    if(maxFat != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxFat", maxFat));
    }
    if(addProductInformation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "addProductInformation", addProductInformation));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "number", number));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyScheme"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20027') as InlineResponse20027;
    } else {
      return null;
    }
  }
  /// Search Grocery Products by UPC
  ///
  /// Get information about a packaged food using its UPC.
  Future<InlineResponse20028> searchGroceryProductsByUPC(num upc) async {
    Object postBody;

    // verify required params are set
    if(upc == null) {
     throw new ApiException(400, "Missing required param: upc");
    }

    // create path and map variables
    String path = "/food/products/upc/{upc}".replaceAll("{format}","json").replaceAll("{" + "upc" + "}", upc.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyScheme"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20028') as InlineResponse20028;
    } else {
      return null;
    }
  }
  /// Product Nutrition by ID Widget
  ///
  /// Visualize a product&#39;s nutritional information as HTML including CSS.
  Future<String> visualizeProductNutritionByID(int id, { bool defaultCss, String accept }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/food/products/{id}/nutritionWidget".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(defaultCss != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "defaultCss", defaultCss));
    }
    headerParams["Accept"] = accept;

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyScheme"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }
}
