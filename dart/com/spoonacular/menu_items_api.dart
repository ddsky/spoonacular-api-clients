part of openapi.api;



class MenuItemsApi {
  final ApiClient apiClient;

  MenuItemsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Autocomplete Menu Item Search
  ///
  /// Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
  Future<InlineResponse20032> autocompleteMenuItemSearch(String query, { num number }) async {
    Object postBody;

    // verify required params are set
    if(query == null) {
     throw new ApiException(400, "Missing required param: query");
    }

    // create path and map variables
    String path = "/food/menuItems/suggest".replaceAll("{format}","json");

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
  /// Get Menu Item Information
  ///
  /// Use a menu item id to get all available information about a menu item, such as nutrition.
  Future<InlineResponse20036> getMenuItemInformation(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/food/menuItems/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20036') as InlineResponse20036;
    } else {
      return null;
    }
  }
  /// Menu Item Nutrition by ID Image
  ///
  /// Visualize a menu item&#39;s nutritional information as HTML including CSS.
  Future<Object> menuItemNutritionByIDImage(num id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/food/menuItems/{id}/nutritionWidget.png".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Menu Item Nutrition Label Image
  ///
  /// Visualize a menu item&#39;s nutritional label information as an image.
  Future<Object> menuItemNutritionLabelImage(num id, { bool showOptionalNutrients, bool showZeroValues, bool showIngredients }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/food/menuItems/{id}/nutritionLabel.png".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Menu Item Nutrition Label Widget
  ///
  /// Visualize a menu item&#39;s nutritional label information as HTML including CSS.
  Future<String> menuItemNutritionLabelWidget(num id, { bool defaultCss, bool showOptionalNutrients, bool showZeroValues, bool showIngredients }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/food/menuItems/{id}/nutritionLabel".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Search Menu Items
  ///
  /// Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald&#39;s Big Mac or Starbucks Mocha.
  Future<InlineResponse20035> searchMenuItems({ String query, num minCalories, num maxCalories, num minCarbs, num maxCarbs, num minProtein, num maxProtein, num minFat, num maxFat, int offset, int number }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/food/menuItems/search".replaceAll("{format}","json");

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20035') as InlineResponse20035;
    } else {
      return null;
    }
  }
  /// Menu Item Nutrition by ID Widget
  ///
  /// Visualize a menu item&#39;s nutritional information as HTML including CSS.
  Future<String> visualizeMenuItemNutritionByID(int id, { bool defaultCss, String accept }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/food/menuItems/{id}/nutritionWidget".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
