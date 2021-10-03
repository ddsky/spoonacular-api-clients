part of openapi.api;



class WineApi {
  final ApiClient apiClient;

  WineApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Dish Pairing for Wine
  ///
  /// Find a dish that goes well with a given wine.
  Future<InlineResponse20044> getDishPairingForWine(String wine) async {
    Object postBody;

    // verify required params are set
    if(wine == null) {
     throw new ApiException(400, "Missing required param: wine");
    }

    // create path and map variables
    String path = "/food/wine/dishes".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "wine", wine));

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20044') as InlineResponse20044;
    } else {
      return null;
    }
  }
  /// Wine Description
  ///
  /// Get a simple description of a certain wine, e.g. \&quot;malbec\&quot;, \&quot;riesling\&quot;, or \&quot;merlot\&quot;.
  Future<InlineResponse20046> getWineDescription(String wine) async {
    Object postBody;

    // verify required params are set
    if(wine == null) {
     throw new ApiException(400, "Missing required param: wine");
    }

    // create path and map variables
    String path = "/food/wine/description".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "wine", wine));

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20046') as InlineResponse20046;
    } else {
      return null;
    }
  }
  /// Wine Pairing
  ///
  /// Find a wine that goes well with a food. Food can be a dish name (\&quot;steak\&quot;), an ingredient name (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).
  Future<InlineResponse20045> getWinePairing(String food, { num maxPrice }) async {
    Object postBody;

    // verify required params are set
    if(food == null) {
     throw new ApiException(400, "Missing required param: food");
    }

    // create path and map variables
    String path = "/food/wine/pairing".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "food", food));
    if(maxPrice != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxPrice", maxPrice));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20045') as InlineResponse20045;
    } else {
      return null;
    }
  }
  /// Wine Recommendation
  ///
  /// Get a specific wine recommendation (concrete product) for a given wine type, e.g. \&quot;merlot\&quot;.
  Future<InlineResponse20047> getWineRecommendation(String wine, { num maxPrice, num minRating, num number }) async {
    Object postBody;

    // verify required params are set
    if(wine == null) {
     throw new ApiException(400, "Missing required param: wine");
    }

    // create path and map variables
    String path = "/food/wine/recommendation".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "wine", wine));
    if(maxPrice != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxPrice", maxPrice));
    }
    if(minRating != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minRating", minRating));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20047') as InlineResponse20047;
    } else {
      return null;
    }
  }
}
