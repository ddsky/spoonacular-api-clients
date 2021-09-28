part of openapi.api;



class IngredientsApi {
  final ApiClient apiClient;

  IngredientsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Autocomplete Ingredient Search
  ///
  /// Autocomplete the entry of an ingredient.
  Future<List<InlineResponse20024>> autocompleteIngredientSearch({ String query, int number, bool metaInformation, String intolerances }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/food/ingredients/autocomplete".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(query != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
    }
    if(number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "number", number));
    }
    if(metaInformation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "metaInformation", metaInformation));
    }
    if(intolerances != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "intolerances", intolerances));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<InlineResponse20024>') as List).map((item) => item as InlineResponse20024).toList();
    } else {
      return null;
    }
  }
  /// Compute Ingredient Amount
  ///
  /// Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?
  Future<RecipesParseIngredientsNutritionWeightPerServing> computeIngredientAmount(num id, String nutrient, num target, { String unit }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(nutrient == null) {
     throw new ApiException(400, "Missing required param: nutrient");
    }
    if(target == null) {
     throw new ApiException(400, "Missing required param: target");
    }

    // create path and map variables
    String path = "/food/ingredients/{id}/amount".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "nutrient", nutrient));
      queryParams.addAll(_convertParametersForCollectionFormat("", "target", target));
    if(unit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "unit", unit));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'RecipesParseIngredientsNutritionWeightPerServing') as RecipesParseIngredientsNutritionWeightPerServing;
    } else {
      return null;
    }
  }
  /// Get Ingredient Information
  ///
  /// Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
  Future<InlineResponse20022> getIngredientInformation(int id, { num amount, String unit }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/food/ingredients/{id}/information".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(amount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "amount", amount));
    }
    if(unit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "unit", unit));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20022') as InlineResponse20022;
    } else {
      return null;
    }
  }
  /// Get Ingredient Substitutes
  ///
  /// Search for substitutes for a given ingredient.
  Future<InlineResponse20026> getIngredientSubstitutes(String ingredientName) async {
    Object postBody;

    // verify required params are set
    if(ingredientName == null) {
     throw new ApiException(400, "Missing required param: ingredientName");
    }

    // create path and map variables
    String path = "/food/ingredients/substitutes".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "ingredientName", ingredientName));

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20026') as InlineResponse20026;
    } else {
      return null;
    }
  }
  /// Get Ingredient Substitutes by ID
  ///
  /// Search for substitutes for a given ingredient.
  Future<InlineResponse20026> getIngredientSubstitutesByID(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/food/ingredients/{id}/substitutes".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20026') as InlineResponse20026;
    } else {
      return null;
    }
  }
  /// Ingredient Search
  ///
  /// Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
  Future<InlineResponse20025> ingredientSearch({ String query, bool addChildren, num minProteinPercent, num maxProteinPercent, num minFatPercent, num maxFatPercent, num minCarbsPercent, num maxCarbsPercent, bool metaInformation, String intolerances, String sort, String sortDirection, int offset, int number }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/food/ingredients/search".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(query != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
    }
    if(addChildren != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "addChildren", addChildren));
    }
    if(minProteinPercent != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minProteinPercent", minProteinPercent));
    }
    if(maxProteinPercent != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxProteinPercent", maxProteinPercent));
    }
    if(minFatPercent != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minFatPercent", minFatPercent));
    }
    if(maxFatPercent != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxFatPercent", maxFatPercent));
    }
    if(minCarbsPercent != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minCarbsPercent", minCarbsPercent));
    }
    if(maxCarbsPercent != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCarbsPercent", maxCarbsPercent));
    }
    if(metaInformation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "metaInformation", metaInformation));
    }
    if(intolerances != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "intolerances", intolerances));
    }
    if(sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort", sort));
    }
    if(sortDirection != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sortDirection", sortDirection));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20025') as InlineResponse20025;
    } else {
      return null;
    }
  }
  /// Ingredients by ID Image
  ///
  /// Visualize a recipe&#39;s ingredient list.
  Future<Object> ingredientsByIDImage(num id, { String measure }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/ingredientWidget.png".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(measure != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "measure", measure));
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
  /// Map Ingredients to Grocery Products
  ///
  /// Map a set of ingredients to products you can buy in the grocery store.
  Future<List<InlineResponse20034>> mapIngredientsToGroceryProducts(InlineObject2 inlineObject2) async {
    Object postBody = inlineObject2;

    // verify required params are set
    if(inlineObject2 == null) {
     throw new ApiException(400, "Missing required param: inlineObject2");
    }

    // create path and map variables
    String path = "/food/ingredients/map".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<InlineResponse20034>') as List).map((item) => item as InlineResponse20034).toList();
    } else {
      return null;
    }
  }
  /// Ingredients Widget
  ///
  /// Visualize ingredients of a recipe. You can play around with that endpoint!
  Future<String> visualizeIngredients({ String contentType, String language, String accept }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/recipes/visualizeIngredients".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(language != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "language", language));
    }
    headerParams["Content-Type"] = contentType;
    headerParams["Accept"] = accept;

    List<String> contentTypes = ["application/x-www-form-urlencoded"];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }
}
