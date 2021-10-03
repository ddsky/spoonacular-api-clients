part of openapi.api;



class RecipesApi {
  final ApiClient apiClient;

  RecipesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Analyze a Recipe Search Query
  ///
  /// Parse a recipe search query to find out its intention.
  Future<InlineResponse20018> analyzeARecipeSearchQuery(String q) async {
    Object postBody;

    // verify required params are set
    if(q == null) {
     throw new ApiException(400, "Missing required param: q");
    }

    // create path and map variables
    String path = "/recipes/queries/analyze".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "q", q));

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20018') as InlineResponse20018;
    } else {
      return null;
    }
  }
  /// Analyze Recipe Instructions
  ///
  /// This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe&#39;s instructions will be extracted independently of the step they&#39;re used in.
  Future<InlineResponse20016> analyzeRecipeInstructions({ String contentType }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/recipes/analyzeInstructions".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Content-Type"] = contentType;

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20016') as InlineResponse20016;
    } else {
      return null;
    }
  }
  /// Autocomplete Recipe Search
  ///
  /// Autocomplete a partial input to suggest possible recipe names.
  Future<List<InlineResponse2007>> autocompleteRecipeSearch({ String query, int number }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/recipes/autocomplete".replaceAll("{format}","json");

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<InlineResponse2007>') as List).map((item) => item as InlineResponse2007).toList();
    } else {
      return null;
    }
  }
  /// Classify Cuisine
  ///
  /// Classify the recipe&#39;s cuisine.
  Future<InlineResponse20017> classifyCuisine({ String contentType }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/recipes/cuisine".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Content-Type"] = contentType;

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20017') as InlineResponse20017;
    } else {
      return null;
    }
  }
  /// Compute Glycemic Load
  ///
  /// Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.
  Future<InlineResponse20023> computeGlycemicLoad(InlineObject inlineObject, { String language }) async {
    Object postBody = inlineObject;

    // verify required params are set
    if(inlineObject == null) {
     throw new ApiException(400, "Missing required param: inlineObject");
    }

    // create path and map variables
    String path = "/food/ingredients/glycemicLoad".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(language != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "language", language));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20023') as InlineResponse20023;
    } else {
      return null;
    }
  }
  /// Convert Amounts
  ///
  /// Convert amounts like \&quot;2 cups of flour to grams\&quot;.
  Future<InlineResponse20019> convertAmounts(String ingredientName, num sourceAmount, String sourceUnit, String targetUnit) async {
    Object postBody;

    // verify required params are set
    if(ingredientName == null) {
     throw new ApiException(400, "Missing required param: ingredientName");
    }
    if(sourceAmount == null) {
     throw new ApiException(400, "Missing required param: sourceAmount");
    }
    if(sourceUnit == null) {
     throw new ApiException(400, "Missing required param: sourceUnit");
    }
    if(targetUnit == null) {
     throw new ApiException(400, "Missing required param: targetUnit");
    }

    // create path and map variables
    String path = "/recipes/convert".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "ingredientName", ingredientName));
      queryParams.addAll(_convertParametersForCollectionFormat("", "sourceAmount", sourceAmount));
      queryParams.addAll(_convertParametersForCollectionFormat("", "sourceUnit", sourceUnit));
      queryParams.addAll(_convertParametersForCollectionFormat("", "targetUnit", targetUnit));

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20019') as InlineResponse20019;
    } else {
      return null;
    }
  }
  /// Create Recipe Card
  ///
  /// Generate a recipe card for a recipe.
  Future<InlineResponse20015> createRecipeCard({ String contentType }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/recipes/visualizeRecipe".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Content-Type"] = contentType;

    List<String> contentTypes = ["multipart/form-data"];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20015') as InlineResponse20015;
    } else {
      return null;
    }
  }
  /// Equipment by ID Image
  ///
  /// Visualize a recipe&#39;s equipment list as an image.
  Future<Object> equipmentByIDImage(num id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/equipmentWidget.png".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Extract Recipe from Website
  ///
  /// This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.
  Future<InlineResponse2003> extractRecipeFromWebsite(String url, { bool forceExtraction, bool analyze, bool includeNutrition, bool includeTaste }) async {
    Object postBody;

    // verify required params are set
    if(url == null) {
     throw new ApiException(400, "Missing required param: url");
    }

    // create path and map variables
    String path = "/recipes/extract".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "url", url));
    if(forceExtraction != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "forceExtraction", forceExtraction));
    }
    if(analyze != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "analyze", analyze));
    }
    if(includeNutrition != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeNutrition", includeNutrition));
    }
    if(includeTaste != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeTaste", includeTaste));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2003') as InlineResponse2003;
    } else {
      return null;
    }
  }
  /// Get Analyzed Recipe Instructions
  ///
  /// Get an analyzed breakdown of a recipe&#39;s instructions. Each step is enriched with the ingredients and equipment required.
  Future<InlineResponse20013> getAnalyzedRecipeInstructions(int id, { bool stepBreakdown }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/analyzedInstructions".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(stepBreakdown != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "stepBreakdown", stepBreakdown));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20013') as InlineResponse20013;
    } else {
      return null;
    }
  }
  /// Get Random Recipes
  ///
  /// Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.
  Future<InlineResponse2006> getRandomRecipes({ bool limitLicense, String tags, int number }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/recipes/random".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(limitLicense != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limitLicense", limitLicense));
    }
    if(tags != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tags", tags));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2006') as InlineResponse2006;
    } else {
      return null;
    }
  }
  /// Equipment by ID
  ///
  /// Get a recipe&#39;s equipment list.
  Future<InlineResponse2009> getRecipeEquipmentByID(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/equipmentWidget.json".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2009') as InlineResponse2009;
    } else {
      return null;
    }
  }
  /// Get Recipe Information
  ///
  /// Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.
  Future<InlineResponse2003> getRecipeInformation(int id, { bool includeNutrition }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/information".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(includeNutrition != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeNutrition", includeNutrition));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2003') as InlineResponse2003;
    } else {
      return null;
    }
  }
  /// Get Recipe Information Bulk
  ///
  /// Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.
  Future<List<InlineResponse2004>> getRecipeInformationBulk(String ids, { bool includeNutrition }) async {
    Object postBody;

    // verify required params are set
    if(ids == null) {
     throw new ApiException(400, "Missing required param: ids");
    }

    // create path and map variables
    String path = "/recipes/informationBulk".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "ids", ids));
    if(includeNutrition != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeNutrition", includeNutrition));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<InlineResponse2004>') as List).map((item) => item as InlineResponse2004).toList();
    } else {
      return null;
    }
  }
  /// Ingredients by ID
  ///
  /// Get a recipe&#39;s ingredient list.
  Future<InlineResponse20011> getRecipeIngredientsByID(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/ingredientWidget.json".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20011') as InlineResponse20011;
    } else {
      return null;
    }
  }
  /// Nutrition by ID
  ///
  /// Get a recipe&#39;s nutrition data.
  Future<InlineResponse20012> getRecipeNutritionWidgetByID(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/nutritionWidget.json".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20012') as InlineResponse20012;
    } else {
      return null;
    }
  }
  /// Price Breakdown by ID
  ///
  /// Get a recipe&#39;s price breakdown data.
  Future<InlineResponse20010> getRecipePriceBreakdownByID(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/priceBreakdownWidget.json".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20010') as InlineResponse20010;
    } else {
      return null;
    }
  }
  /// Taste by ID
  ///
  /// Get a recipe&#39;s taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
  Future<InlineResponse2008> getRecipeTasteByID(int id, { bool normalize }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/tasteWidget.json".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(normalize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "normalize", normalize));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2008') as InlineResponse2008;
    } else {
      return null;
    }
  }
  /// Get Similar Recipes
  ///
  /// Find recipes which are similar to the given one.
  Future<List<InlineResponse2005>> getSimilarRecipes(int id, { int number, bool limitLicense }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/similar".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "number", number));
    }
    if(limitLicense != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limitLicense", limitLicense));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<InlineResponse2005>') as List).map((item) => item as InlineResponse2005).toList();
    } else {
      return null;
    }
  }
  /// Guess Nutrition by Dish Name
  ///
  /// Estimate the macronutrients of a dish based on its title.
  Future<InlineResponse20021> guessNutritionByDishName(String title) async {
    Object postBody;

    // verify required params are set
    if(title == null) {
     throw new ApiException(400, "Missing required param: title");
    }

    // create path and map variables
    String path = "/recipes/guessNutrition".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "title", title));

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20021') as InlineResponse20021;
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
  /// Parse Ingredients
  ///
  /// Extract an ingredient from plain text.
  Future<List<InlineResponse20020>> parseIngredients({ String contentType, String language }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/recipes/parseIngredients".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(language != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "language", language));
    }
    headerParams["Content-Type"] = contentType;

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<InlineResponse20020>') as List).map((item) => item as InlineResponse20020).toList();
    } else {
      return null;
    }
  }
  /// Price Breakdown by ID Image
  ///
  /// Visualize a recipe&#39;s price breakdown.
  Future<Object> priceBreakdownByIDImage(num id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/priceBreakdownWidget.png".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Quick Answer
  ///
  /// Answer a nutrition related natural language question.
  Future<InlineResponse20050> quickAnswer(String q) async {
    Object postBody;

    // verify required params are set
    if(q == null) {
     throw new ApiException(400, "Missing required param: q");
    }

    // create path and map variables
    String path = "/recipes/quickAnswer".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "q", q));

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20050') as InlineResponse20050;
    } else {
      return null;
    }
  }
  /// Recipe Nutrition by ID Image
  ///
  /// Visualize a recipe&#39;s nutritional information as an image.
  Future<Object> recipeNutritionByIDImage(num id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/nutritionWidget.png".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Recipe Nutrition Label Image
  ///
  /// Get a recipe&#39;s nutrition label as an image.
  Future<Object> recipeNutritionLabelImage(num id, { bool showOptionalNutrients, bool showZeroValues, bool showIngredients }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/nutritionLabel.png".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Recipe Nutrition Label Widget
  ///
  /// Get a recipe&#39;s nutrition label as an HTML widget.
  Future<String> recipeNutritionLabelWidget(num id, { bool defaultCss, bool showOptionalNutrients, bool showZeroValues, bool showIngredients }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/nutritionLabel".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Recipe Taste by ID Image
  ///
  /// Get a recipe&#39;s taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
  Future<Object> recipeTasteByIDImage(num id, { bool normalize, String rgb }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/tasteWidget.png".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(normalize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "normalize", normalize));
    }
    if(rgb != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "rgb", rgb));
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
  /// Search Recipes
  ///
  /// Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.
  Future<InlineResponse200> searchRecipes({ String query, String cuisine, String excludeCuisine, String diet, String intolerances, String equipment, String includeIngredients, String excludeIngredients, String type, bool instructionsRequired, bool fillIngredients, bool addRecipeInformation, bool addRecipeNutrition, String author, String tags, num recipeBoxId, String titleMatch, num maxReadyTime, bool ignorePantry, String sort, String sortDirection, num minCarbs, num maxCarbs, num minProtein, num maxProtein, num minCalories, num maxCalories, num minFat, num maxFat, num minAlcohol, num maxAlcohol, num minCaffeine, num maxCaffeine, num minCopper, num maxCopper, num minCalcium, num maxCalcium, num minCholine, num maxCholine, num minCholesterol, num maxCholesterol, num minFluoride, num maxFluoride, num minSaturatedFat, num maxSaturatedFat, num minVitaminA, num maxVitaminA, num minVitaminC, num maxVitaminC, num minVitaminD, num maxVitaminD, num minVitaminE, num maxVitaminE, num minVitaminK, num maxVitaminK, num minVitaminB1, num maxVitaminB1, num minVitaminB2, num maxVitaminB2, num minVitaminB5, num maxVitaminB5, num minVitaminB3, num maxVitaminB3, num minVitaminB6, num maxVitaminB6, num minVitaminB12, num maxVitaminB12, num minFiber, num maxFiber, num minFolate, num maxFolate, num minFolicAcid, num maxFolicAcid, num minIodine, num maxIodine, num minIron, num maxIron, num minMagnesium, num maxMagnesium, num minManganese, num maxManganese, num minPhosphorus, num maxPhosphorus, num minPotassium, num maxPotassium, num minSelenium, num maxSelenium, num minSodium, num maxSodium, num minSugar, num maxSugar, num minZinc, num maxZinc, int offset, int number, bool limitLicense }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/recipes/complexSearch".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(query != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
    }
    if(cuisine != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "cuisine", cuisine));
    }
    if(excludeCuisine != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "excludeCuisine", excludeCuisine));
    }
    if(diet != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "diet", diet));
    }
    if(intolerances != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "intolerances", intolerances));
    }
    if(equipment != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "equipment", equipment));
    }
    if(includeIngredients != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeIngredients", includeIngredients));
    }
    if(excludeIngredients != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "excludeIngredients", excludeIngredients));
    }
    if(type != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "type", type));
    }
    if(instructionsRequired != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "instructionsRequired", instructionsRequired));
    }
    if(fillIngredients != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "fillIngredients", fillIngredients));
    }
    if(addRecipeInformation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "addRecipeInformation", addRecipeInformation));
    }
    if(addRecipeNutrition != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "addRecipeNutrition", addRecipeNutrition));
    }
    if(author != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "author", author));
    }
    if(tags != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tags", tags));
    }
    if(recipeBoxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "recipeBoxId", recipeBoxId));
    }
    if(titleMatch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "titleMatch", titleMatch));
    }
    if(maxReadyTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxReadyTime", maxReadyTime));
    }
    if(ignorePantry != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ignorePantry", ignorePantry));
    }
    if(sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort", sort));
    }
    if(sortDirection != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sortDirection", sortDirection));
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
    if(minCalories != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minCalories", minCalories));
    }
    if(maxCalories != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCalories", maxCalories));
    }
    if(minFat != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minFat", minFat));
    }
    if(maxFat != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxFat", maxFat));
    }
    if(minAlcohol != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minAlcohol", minAlcohol));
    }
    if(maxAlcohol != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxAlcohol", maxAlcohol));
    }
    if(minCaffeine != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minCaffeine", minCaffeine));
    }
    if(maxCaffeine != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCaffeine", maxCaffeine));
    }
    if(minCopper != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minCopper", minCopper));
    }
    if(maxCopper != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCopper", maxCopper));
    }
    if(minCalcium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minCalcium", minCalcium));
    }
    if(maxCalcium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCalcium", maxCalcium));
    }
    if(minCholine != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minCholine", minCholine));
    }
    if(maxCholine != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCholine", maxCholine));
    }
    if(minCholesterol != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minCholesterol", minCholesterol));
    }
    if(maxCholesterol != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCholesterol", maxCholesterol));
    }
    if(minFluoride != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minFluoride", minFluoride));
    }
    if(maxFluoride != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxFluoride", maxFluoride));
    }
    if(minSaturatedFat != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minSaturatedFat", minSaturatedFat));
    }
    if(maxSaturatedFat != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxSaturatedFat", maxSaturatedFat));
    }
    if(minVitaminA != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminA", minVitaminA));
    }
    if(maxVitaminA != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminA", maxVitaminA));
    }
    if(minVitaminC != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminC", minVitaminC));
    }
    if(maxVitaminC != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminC", maxVitaminC));
    }
    if(minVitaminD != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminD", minVitaminD));
    }
    if(maxVitaminD != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminD", maxVitaminD));
    }
    if(minVitaminE != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminE", minVitaminE));
    }
    if(maxVitaminE != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminE", maxVitaminE));
    }
    if(minVitaminK != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminK", minVitaminK));
    }
    if(maxVitaminK != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminK", maxVitaminK));
    }
    if(minVitaminB1 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminB1", minVitaminB1));
    }
    if(maxVitaminB1 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminB1", maxVitaminB1));
    }
    if(minVitaminB2 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminB2", minVitaminB2));
    }
    if(maxVitaminB2 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminB2", maxVitaminB2));
    }
    if(minVitaminB5 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminB5", minVitaminB5));
    }
    if(maxVitaminB5 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminB5", maxVitaminB5));
    }
    if(minVitaminB3 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminB3", minVitaminB3));
    }
    if(maxVitaminB3 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminB3", maxVitaminB3));
    }
    if(minVitaminB6 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminB6", minVitaminB6));
    }
    if(maxVitaminB6 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminB6", maxVitaminB6));
    }
    if(minVitaminB12 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminB12", minVitaminB12));
    }
    if(maxVitaminB12 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminB12", maxVitaminB12));
    }
    if(minFiber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minFiber", minFiber));
    }
    if(maxFiber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxFiber", maxFiber));
    }
    if(minFolate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minFolate", minFolate));
    }
    if(maxFolate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxFolate", maxFolate));
    }
    if(minFolicAcid != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minFolicAcid", minFolicAcid));
    }
    if(maxFolicAcid != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxFolicAcid", maxFolicAcid));
    }
    if(minIodine != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minIodine", minIodine));
    }
    if(maxIodine != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxIodine", maxIodine));
    }
    if(minIron != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minIron", minIron));
    }
    if(maxIron != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxIron", maxIron));
    }
    if(minMagnesium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minMagnesium", minMagnesium));
    }
    if(maxMagnesium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxMagnesium", maxMagnesium));
    }
    if(minManganese != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minManganese", minManganese));
    }
    if(maxManganese != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxManganese", maxManganese));
    }
    if(minPhosphorus != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minPhosphorus", minPhosphorus));
    }
    if(maxPhosphorus != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxPhosphorus", maxPhosphorus));
    }
    if(minPotassium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minPotassium", minPotassium));
    }
    if(maxPotassium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxPotassium", maxPotassium));
    }
    if(minSelenium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minSelenium", minSelenium));
    }
    if(maxSelenium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxSelenium", maxSelenium));
    }
    if(minSodium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minSodium", minSodium));
    }
    if(maxSodium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxSodium", maxSodium));
    }
    if(minSugar != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minSugar", minSugar));
    }
    if(maxSugar != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxSugar", maxSugar));
    }
    if(minZinc != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minZinc", minZinc));
    }
    if(maxZinc != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxZinc", maxZinc));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "number", number));
    }
    if(limitLicense != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limitLicense", limitLicense));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse200') as InlineResponse200;
    } else {
      return null;
    }
  }
  /// Search Recipes by Ingredients
  ///
  ///  Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don&#39;t currently have (post shopping).         
  Future<List<InlineResponse2001>> searchRecipesByIngredients({ String ingredients, int number, bool limitLicense, num ranking, bool ignorePantry }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/recipes/findByIngredients".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(ingredients != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ingredients", ingredients));
    }
    if(number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "number", number));
    }
    if(limitLicense != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limitLicense", limitLicense));
    }
    if(ranking != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ranking", ranking));
    }
    if(ignorePantry != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ignorePantry", ignorePantry));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<InlineResponse2001>') as List).map((item) => item as InlineResponse2001).toList();
    } else {
      return null;
    }
  }
  /// Search Recipes by Nutrients
  ///
  /// Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.
  Future<List<InlineResponse2002>> searchRecipesByNutrients({ num minCarbs, num maxCarbs, num minProtein, num maxProtein, num minCalories, num maxCalories, num minFat, num maxFat, num minAlcohol, num maxAlcohol, num minCaffeine, num maxCaffeine, num minCopper, num maxCopper, num minCalcium, num maxCalcium, num minCholine, num maxCholine, num minCholesterol, num maxCholesterol, num minFluoride, num maxFluoride, num minSaturatedFat, num maxSaturatedFat, num minVitaminA, num maxVitaminA, num minVitaminC, num maxVitaminC, num minVitaminD, num maxVitaminD, num minVitaminE, num maxVitaminE, num minVitaminK, num maxVitaminK, num minVitaminB1, num maxVitaminB1, num minVitaminB2, num maxVitaminB2, num minVitaminB5, num maxVitaminB5, num minVitaminB3, num maxVitaminB3, num minVitaminB6, num maxVitaminB6, num minVitaminB12, num maxVitaminB12, num minFiber, num maxFiber, num minFolate, num maxFolate, num minFolicAcid, num maxFolicAcid, num minIodine, num maxIodine, num minIron, num maxIron, num minMagnesium, num maxMagnesium, num minManganese, num maxManganese, num minPhosphorus, num maxPhosphorus, num minPotassium, num maxPotassium, num minSelenium, num maxSelenium, num minSodium, num maxSodium, num minSugar, num maxSugar, num minZinc, num maxZinc, int offset, int number, bool random, bool limitLicense }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/recipes/findByNutrients".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
    if(minCalories != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minCalories", minCalories));
    }
    if(maxCalories != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCalories", maxCalories));
    }
    if(minFat != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minFat", minFat));
    }
    if(maxFat != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxFat", maxFat));
    }
    if(minAlcohol != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minAlcohol", minAlcohol));
    }
    if(maxAlcohol != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxAlcohol", maxAlcohol));
    }
    if(minCaffeine != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minCaffeine", minCaffeine));
    }
    if(maxCaffeine != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCaffeine", maxCaffeine));
    }
    if(minCopper != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minCopper", minCopper));
    }
    if(maxCopper != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCopper", maxCopper));
    }
    if(minCalcium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minCalcium", minCalcium));
    }
    if(maxCalcium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCalcium", maxCalcium));
    }
    if(minCholine != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minCholine", minCholine));
    }
    if(maxCholine != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCholine", maxCholine));
    }
    if(minCholesterol != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minCholesterol", minCholesterol));
    }
    if(maxCholesterol != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCholesterol", maxCholesterol));
    }
    if(minFluoride != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minFluoride", minFluoride));
    }
    if(maxFluoride != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxFluoride", maxFluoride));
    }
    if(minSaturatedFat != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minSaturatedFat", minSaturatedFat));
    }
    if(maxSaturatedFat != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxSaturatedFat", maxSaturatedFat));
    }
    if(minVitaminA != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminA", minVitaminA));
    }
    if(maxVitaminA != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminA", maxVitaminA));
    }
    if(minVitaminC != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminC", minVitaminC));
    }
    if(maxVitaminC != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminC", maxVitaminC));
    }
    if(minVitaminD != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminD", minVitaminD));
    }
    if(maxVitaminD != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminD", maxVitaminD));
    }
    if(minVitaminE != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminE", minVitaminE));
    }
    if(maxVitaminE != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminE", maxVitaminE));
    }
    if(minVitaminK != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminK", minVitaminK));
    }
    if(maxVitaminK != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminK", maxVitaminK));
    }
    if(minVitaminB1 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminB1", minVitaminB1));
    }
    if(maxVitaminB1 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminB1", maxVitaminB1));
    }
    if(minVitaminB2 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminB2", minVitaminB2));
    }
    if(maxVitaminB2 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminB2", maxVitaminB2));
    }
    if(minVitaminB5 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminB5", minVitaminB5));
    }
    if(maxVitaminB5 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminB5", maxVitaminB5));
    }
    if(minVitaminB3 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminB3", minVitaminB3));
    }
    if(maxVitaminB3 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminB3", maxVitaminB3));
    }
    if(minVitaminB6 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminB6", minVitaminB6));
    }
    if(maxVitaminB6 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminB6", maxVitaminB6));
    }
    if(minVitaminB12 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minVitaminB12", minVitaminB12));
    }
    if(maxVitaminB12 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxVitaminB12", maxVitaminB12));
    }
    if(minFiber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minFiber", minFiber));
    }
    if(maxFiber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxFiber", maxFiber));
    }
    if(minFolate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minFolate", minFolate));
    }
    if(maxFolate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxFolate", maxFolate));
    }
    if(minFolicAcid != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minFolicAcid", minFolicAcid));
    }
    if(maxFolicAcid != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxFolicAcid", maxFolicAcid));
    }
    if(minIodine != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minIodine", minIodine));
    }
    if(maxIodine != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxIodine", maxIodine));
    }
    if(minIron != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minIron", minIron));
    }
    if(maxIron != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxIron", maxIron));
    }
    if(minMagnesium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minMagnesium", minMagnesium));
    }
    if(maxMagnesium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxMagnesium", maxMagnesium));
    }
    if(minManganese != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minManganese", minManganese));
    }
    if(maxManganese != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxManganese", maxManganese));
    }
    if(minPhosphorus != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minPhosphorus", minPhosphorus));
    }
    if(maxPhosphorus != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxPhosphorus", maxPhosphorus));
    }
    if(minPotassium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minPotassium", minPotassium));
    }
    if(maxPotassium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxPotassium", maxPotassium));
    }
    if(minSelenium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minSelenium", minSelenium));
    }
    if(maxSelenium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxSelenium", maxSelenium));
    }
    if(minSodium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minSodium", minSodium));
    }
    if(maxSodium != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxSodium", maxSodium));
    }
    if(minSugar != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minSugar", minSugar));
    }
    if(maxSugar != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxSugar", maxSugar));
    }
    if(minZinc != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minZinc", minZinc));
    }
    if(maxZinc != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxZinc", maxZinc));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "number", number));
    }
    if(random != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "random", random));
    }
    if(limitLicense != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limitLicense", limitLicense));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<InlineResponse2002>') as List).map((item) => item as InlineResponse2002).toList();
    } else {
      return null;
    }
  }
  /// Summarize Recipe
  ///
  /// Automatically generate a short description that summarizes key information about the recipe.
  Future<InlineResponse20014> summarizeRecipe(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/summary".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20014') as InlineResponse20014;
    } else {
      return null;
    }
  }
  /// Equipment Widget
  ///
  /// Visualize the equipment used to make a recipe.
  Future<String> visualizeEquipment({ String contentType, String accept }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/recipes/visualizeEquipment".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
  /// Price Breakdown Widget
  ///
  /// Visualize the price breakdown of a recipe.
  Future<String> visualizePriceBreakdown({ String contentType, String accept, String language }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/recipes/visualizePriceEstimator".replaceAll("{format}","json");

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
  /// Equipment by ID Widget
  ///
  /// Visualize a recipe&#39;s equipment list.
  Future<String> visualizeRecipeEquipmentByID(int id, { bool defaultCss }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/equipmentWidget".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(defaultCss != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "defaultCss", defaultCss));
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
  /// Ingredients by ID Widget
  ///
  /// Visualize a recipe&#39;s ingredient list.
  Future<String> visualizeRecipeIngredientsByID(int id, { bool defaultCss, String measure }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/ingredientWidget".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(defaultCss != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "defaultCss", defaultCss));
    }
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }
  /// Recipe Nutrition Widget
  ///
  /// Visualize a recipe&#39;s nutritional information as HTML including CSS.
  Future<String> visualizeRecipeNutrition({ String contentType, String accept, String language }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/recipes/visualizeNutrition".replaceAll("{format}","json");

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
  /// Recipe Nutrition by ID Widget
  ///
  /// Visualize a recipe&#39;s nutritional information as HTML including CSS.
  Future<String> visualizeRecipeNutritionByID(int id, { bool defaultCss, String accept }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/nutritionWidget".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Price Breakdown by ID Widget
  ///
  /// Visualize a recipe&#39;s price breakdown.
  Future<String> visualizeRecipePriceBreakdownByID(int id, { bool defaultCss }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/priceBreakdownWidget".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(defaultCss != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "defaultCss", defaultCss));
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
  /// Recipe Taste Widget
  ///
  /// Visualize a recipe&#39;s taste information as HTML including CSS. You can play around with that endpoint!
  Future<String> visualizeRecipeTaste({ String language, String contentType, String accept, bool normalize, String rgb }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/recipes/visualizeTaste".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(language != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "language", language));
    }
    if(normalize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "normalize", normalize));
    }
    if(rgb != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "rgb", rgb));
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
  /// Recipe Taste by ID Widget
  ///
  /// Get a recipe&#39;s taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
  Future<String> visualizeRecipeTasteByID(int id, { bool normalize, String rgb }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/recipes/{id}/tasteWidget".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(normalize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "normalize", normalize));
    }
    if(rgb != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "rgb", rgb));
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
}
