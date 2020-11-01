part of openapi.api;



class DefaultApi {
  final ApiClient apiClient;

  DefaultApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add to Meal Plan
  ///
  /// Add an item to the user&#39;s meal plan.
  Future<Object> addToMealPlan(String username, String hash, InlineObject11 inlineObject11) async {
    Object postBody = inlineObject11;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }
    if(inlineObject11 == null) {
     throw new ApiException(400, "Missing required param: inlineObject11");
    }

    // create path and map variables
    String path = "/mealplanner/{username}/items".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "hash", hash));

    List<String> contentTypes = [""];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
  /// Add to Shopping List
  ///
  /// Add an item to the current shopping list of a user.
  Future<Object> addToShoppingList(String username, String hash, InlineObject14 inlineObject14) async {
    Object postBody = inlineObject14;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }
    if(inlineObject14 == null) {
     throw new ApiException(400, "Missing required param: inlineObject14");
    }

    // create path and map variables
    String path = "/mealplanner/{username}/shopping-list/items".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "hash", hash));

    List<String> contentTypes = [""];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
  /// Analyze a Recipe Search Query
  ///
  /// Parse a recipe search query to find out its intention.
  Future<Object> analyzeARecipeSearchQuery(String q) async {
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
    List<String> authNames = [];

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
  /// Analyze Recipe Instructions
  ///
  /// This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe&#39;s instructions will be extracted independently of the step they&#39;re used in.
  Future<Object> analyzeRecipeInstructions(String instructions) async {
    Object postBody;

    // verify required params are set
    if(instructions == null) {
     throw new ApiException(400, "Missing required param: instructions");
    }

    // create path and map variables
    String path = "/recipes/analyzeInstructions".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/x-www-form-urlencoded"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (instructions != null) {
        hasFields = true;
        mp.fields['instructions'] = parameterToString(instructions);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (instructions != null)
        formParams['instructions'] = parameterToString(instructions);
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
  /// Autocomplete Ingredient Search
  ///
  /// Autocomplete the entry of an ingredient.
  Future<Object> autocompleteIngredientSearch(String query, { num number, bool metaInformation, String intolerances }) async {
    Object postBody;

    // verify required params are set
    if(query == null) {
     throw new ApiException(400, "Missing required param: query");
    }

    // create path and map variables
    String path = "/food/ingredients/autocomplete".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
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
    List<String> authNames = [];

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
  /// Autocomplete Menu Item Search
  ///
  /// Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
  Future<Object> autocompleteMenuItemSearch(String query, { num number }) async {
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
    List<String> authNames = [];

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
  /// Autocomplete Product Search
  ///
  /// Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.
  Future<Object> autocompleteProductSearch(String query, { num number }) async {
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
    List<String> authNames = [];

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
  /// Autocomplete Recipe Search
  ///
  /// Autocomplete a partial input to suggest possible recipe names.
  Future<Object> autocompleteRecipeSearch(String query, { num number }) async {
    Object postBody;

    // verify required params are set
    if(query == null) {
     throw new ApiException(400, "Missing required param: query");
    }

    // create path and map variables
    String path = "/recipes/autocomplete".replaceAll("{format}","json");

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
    List<String> authNames = [];

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
  /// Classify Cuisine
  ///
  /// Classify the recipe&#39;s cuisine.
  Future<Object> classifyCuisine(String title, String ingredientList) async {
    Object postBody;

    // verify required params are set
    if(title == null) {
     throw new ApiException(400, "Missing required param: title");
    }
    if(ingredientList == null) {
     throw new ApiException(400, "Missing required param: ingredientList");
    }

    // create path and map variables
    String path = "/recipes/cuisine".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/x-www-form-urlencoded"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (title != null) {
        hasFields = true;
        mp.fields['title'] = parameterToString(title);
      }
      if (ingredientList != null) {
        hasFields = true;
        mp.fields['ingredientList'] = parameterToString(ingredientList);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (title != null)
        formParams['title'] = parameterToString(title);
      if (ingredientList != null)
        formParams['ingredientList'] = parameterToString(ingredientList);
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
  /// Classify Grocery Product
  ///
  /// This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.
  Future<Object> classifyGroceryProduct(InlineObject9 inlineObject9, { String locale }) async {
    Object postBody = inlineObject9;

    // verify required params are set
    if(inlineObject9 == null) {
     throw new ApiException(400, "Missing required param: inlineObject9");
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
    List<String> authNames = [];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
  /// Classify Grocery Product Bulk
  ///
  /// Provide a set of product jsons, get back classified products.
  Future<Object> classifyGroceryProductBulk(Object body, { String locale }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
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
    List<String> authNames = [];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
  /// Clear Meal Plan Day
  ///
  /// Delete all planned items from the user&#39;s meal plan for a specific day.
  Future<Object> clearMealPlanDay(String username, String date, String hash, InlineObject10 inlineObject10) async {
    Object postBody = inlineObject10;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }
    if(date == null) {
     throw new ApiException(400, "Missing required param: date");
    }
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }
    if(inlineObject10 == null) {
     throw new ApiException(400, "Missing required param: inlineObject10");
    }

    // create path and map variables
    String path = "/mealplanner/{username}/day/{date}".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString()).replaceAll("{" + "date" + "}", date.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "hash", hash));

    List<String> contentTypes = [""];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
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
  /// Compute Glycemic Load
  ///
  /// Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.
  Future<Object> computeGlycemicLoad(Object body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/food/ingredients/glycemicLoad".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
  /// Connect User
  ///
  /// In order to call user-specific endpoints, you need to connect your app&#39;s users to spoonacular users.
  Future<Object> connectUser(Object body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/users/connect".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [""];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
  /// Convert Amounts
  ///
  /// Convert amounts like \&quot;2 cups of flour to grams\&quot;.
  Future<Object> convertAmounts(String ingredientName, num sourceAmount, String sourceUnit, String targetUnit) async {
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
    List<String> authNames = [];

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
  /// Create Recipe Card
  ///
  /// Generate a recipe card for a recipe.
  Future<Object> createRecipeCard(String title, MultipartFile image, String ingredients, String instructions, num readyInMinutes, num servings, String mask, String backgroundImage, { String author, String backgroundColor, String fontColor, String source }) async {
    Object postBody;

    // verify required params are set
    if(title == null) {
     throw new ApiException(400, "Missing required param: title");
    }
    if(image == null) {
     throw new ApiException(400, "Missing required param: image");
    }
    if(ingredients == null) {
     throw new ApiException(400, "Missing required param: ingredients");
    }
    if(instructions == null) {
     throw new ApiException(400, "Missing required param: instructions");
    }
    if(readyInMinutes == null) {
     throw new ApiException(400, "Missing required param: readyInMinutes");
    }
    if(servings == null) {
     throw new ApiException(400, "Missing required param: servings");
    }
    if(mask == null) {
     throw new ApiException(400, "Missing required param: mask");
    }
    if(backgroundImage == null) {
     throw new ApiException(400, "Missing required param: backgroundImage");
    }

    // create path and map variables
    String path = "/recipes/visualizeRecipe".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["multipart/form-data"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (title != null) {
        hasFields = true;
        mp.fields['title'] = parameterToString(title);
      }
      if (image != null) {
        hasFields = true;
        mp.fields['image'] = image.field;
        mp.files.add(image);
      }
      if (ingredients != null) {
        hasFields = true;
        mp.fields['ingredients'] = parameterToString(ingredients);
      }
      if (instructions != null) {
        hasFields = true;
        mp.fields['instructions'] = parameterToString(instructions);
      }
      if (readyInMinutes != null) {
        hasFields = true;
        mp.fields['readyInMinutes'] = parameterToString(readyInMinutes);
      }
      if (servings != null) {
        hasFields = true;
        mp.fields['servings'] = parameterToString(servings);
      }
      if (mask != null) {
        hasFields = true;
        mp.fields['mask'] = parameterToString(mask);
      }
      if (backgroundImage != null) {
        hasFields = true;
        mp.fields['backgroundImage'] = parameterToString(backgroundImage);
      }
      if (author != null) {
        hasFields = true;
        mp.fields['author'] = parameterToString(author);
      }
      if (backgroundColor != null) {
        hasFields = true;
        mp.fields['backgroundColor'] = parameterToString(backgroundColor);
      }
      if (fontColor != null) {
        hasFields = true;
        mp.fields['fontColor'] = parameterToString(fontColor);
      }
      if (source != null) {
        hasFields = true;
        mp.fields['source'] = parameterToString(source);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (title != null)
        formParams['title'] = parameterToString(title);
      if (ingredients != null)
        formParams['ingredients'] = parameterToString(ingredients);
      if (instructions != null)
        formParams['instructions'] = parameterToString(instructions);
      if (readyInMinutes != null)
        formParams['readyInMinutes'] = parameterToString(readyInMinutes);
      if (servings != null)
        formParams['servings'] = parameterToString(servings);
      if (mask != null)
        formParams['mask'] = parameterToString(mask);
      if (backgroundImage != null)
        formParams['backgroundImage'] = parameterToString(backgroundImage);
      if (author != null)
        formParams['author'] = parameterToString(author);
      if (backgroundColor != null)
        formParams['backgroundColor'] = parameterToString(backgroundColor);
      if (fontColor != null)
        formParams['fontColor'] = parameterToString(fontColor);
      if (source != null)
        formParams['source'] = parameterToString(source);
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
  /// Delete from Meal Plan
  ///
  /// Delete an item from the user&#39;s meal plan.
  Future<Object> deleteFromMealPlan(String username, num id, String hash, InlineObject12 inlineObject12) async {
    Object postBody = inlineObject12;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }
    if(inlineObject12 == null) {
     throw new ApiException(400, "Missing required param: inlineObject12");
    }

    // create path and map variables
    String path = "/mealplanner/{username}/items/{id}".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "hash", hash));

    List<String> contentTypes = [""];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
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
  /// Delete from Shopping List
  ///
  /// Delete an item from the current shopping list of the user.
  Future<Object> deleteFromShoppingList(String username, num id, String hash, InlineObject15 inlineObject15) async {
    Object postBody = inlineObject15;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }
    if(inlineObject15 == null) {
     throw new ApiException(400, "Missing required param: inlineObject15");
    }

    // create path and map variables
    String path = "/mealplanner/{username}/shopping-list/items/{id}".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "hash", hash));

    List<String> contentTypes = [""];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
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
  /// Detect Food in Text
  ///
  /// Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.
  Future<Object> detectFoodInText(String text) async {
    Object postBody;

    // verify required params are set
    if(text == null) {
     throw new ApiException(400, "Missing required param: text");
    }

    // create path and map variables
    String path = "/food/detect".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/x-www-form-urlencoded"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (text != null) {
        hasFields = true;
        mp.fields['text'] = parameterToString(text);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (text != null)
        formParams['text'] = parameterToString(text);
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
  /// Extract Recipe from Website
  ///
  /// This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.
  Future<Object> extractRecipeFromWebsite(String url, { bool forceExtraction, bool analyze }) async {
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

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Generate Meal Plan
  ///
  /// Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
  Future<Object> generateMealPlan({ String timeFrame, num targetCalories, String diet, String exclude }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/mealplanner/generate".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(timeFrame != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timeFrame", timeFrame));
    }
    if(targetCalories != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "targetCalories", targetCalories));
    }
    if(diet != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "diet", diet));
    }
    if(exclude != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "exclude", exclude));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Generate Shopping List
  ///
  /// Generate the shopping list for a user from the meal planner in a given time frame.
  Future<Object> generateShoppingList(String username, String startDate, String endDate, String hash, InlineObject13 inlineObject13) async {
    Object postBody = inlineObject13;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }
    if(startDate == null) {
     throw new ApiException(400, "Missing required param: startDate");
    }
    if(endDate == null) {
     throw new ApiException(400, "Missing required param: endDate");
    }
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }
    if(inlineObject13 == null) {
     throw new ApiException(400, "Missing required param: inlineObject13");
    }

    // create path and map variables
    String path = "/mealplanner/{username}/shopping-list/{start-date}/{end-date}".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString()).replaceAll("{" + "start-date" + "}", startDate.toString()).replaceAll("{" + "end-date" + "}", endDate.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "hash", hash));

    List<String> contentTypes = [""];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
  /// Get a Random Food Joke
  ///
  /// Get a random joke that is related to food. Caution: this is an endpoint for adults!
  Future<Object> getARandomFoodJoke() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/food/jokes/random".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Get Analyzed Recipe Instructions
  ///
  /// Get an analyzed breakdown of a recipe&#39;s instructions. Each step is enriched with the ingredients and equipment required.
  Future<Object> getAnalyzedRecipeInstructions(num id, { bool stepBreakdown }) async {
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
    List<String> authNames = [];

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
  /// Get Comparable Products
  ///
  /// Find comparable products to the given one.
  Future<Object> getComparableProducts(num upc) async {
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
    List<String> authNames = [];

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
  /// Get Conversation Suggests
  ///
  /// This endpoint returns suggestions for things the user can say or ask the chatbot.
  Future<Object> getConversationSuggests(String query, { num number }) async {
    Object postBody;

    // verify required params are set
    if(query == null) {
     throw new ApiException(400, "Missing required param: query");
    }

    // create path and map variables
    String path = "/food/converse/suggest".replaceAll("{format}","json");

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
    List<String> authNames = [];

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
  /// Get Dish Pairing for Wine
  ///
  /// Find a dish that goes well with a given wine.
  Future<Object> getDishPairingForWine(String wine) async {
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
    List<String> authNames = [];

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
  /// Get Ingredient Information
  ///
  /// Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
  Future<Object> getIngredientInformation(num id, { num amount, String unit }) async {
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
    List<String> authNames = [];

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
  /// Get Ingredient Substitutes
  ///
  /// Search for substitutes for a given ingredient.
  Future<Object> getIngredientSubstitutes(String ingredientName) async {
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
    List<String> authNames = [];

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
  /// Get Ingredient Substitutes by ID
  ///
  /// Search for substitutes for a given ingredient.
  Future<Object> getIngredientSubstitutesByID(num id) async {
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
    List<String> authNames = [];

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
  /// Get Meal Plan Template
  ///
  /// Get information about a meal plan template.
  Future<Object> getMealPlanTemplate(String username, num id, String hash) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }

    // create path and map variables
    String path = "/mealplanner/{username}/templates/{id}".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "hash", hash));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Get Meal Plan Templates
  ///
  /// Get meal plan templates from user or public ones.
  Future<Object> getMealPlanTemplates(String username, String hash) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }

    // create path and map variables
    String path = "/mealplanner/{username}/templates".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "hash", hash));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Get Meal Plan Week
  ///
  /// Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user&#39;s hash that can be found in his/her account.
  Future<Object> getMealPlanWeek(String username, String startDate, String hash) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }
    if(startDate == null) {
     throw new ApiException(400, "Missing required param: startDate");
    }
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }

    // create path and map variables
    String path = "/mealplanner/{username}/week/{start-date}".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString()).replaceAll("{" + "start-date" + "}", startDate.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "hash", hash));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Get Menu Item Information
  ///
  /// Use a menu item id to get all available information about a menu item, such as nutrition.
  Future<Object> getMenuItemInformation(num id) async {
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
    List<String> authNames = [];

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
  /// Get Product Information
  ///
  /// Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.
  Future<Object> getProductInformation(num id) async {
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
    List<String> authNames = [];

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
  /// Get Random Food Trivia
  ///
  /// Returns random food trivia.
  Future<Object> getRandomFoodTrivia() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/food/trivia/random".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Get Random Recipes
  ///
  /// Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.
  Future<Object> getRandomRecipes({ bool limitLicense, String tags, num number }) async {
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
    List<String> authNames = [];

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
  /// Get Recipe Equipment by ID
  ///
  /// Get a recipe&#39;s equipment list.
  Future<Object> getRecipeEquipmentByID(num id) async {
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
    List<String> authNames = [];

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
  /// Get Recipe Information
  ///
  /// Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.
  Future<Object> getRecipeInformation(num id, { bool includeNutrition }) async {
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
    List<String> authNames = [];

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
  /// Get Recipe Information Bulk
  ///
  /// Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.
  Future<Object> getRecipeInformationBulk(String ids, { bool includeNutrition }) async {
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
    List<String> authNames = [];

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
  /// Get Recipe Ingredients by ID
  ///
  /// Get a recipe&#39;s ingredient list.
  Future<Object> getRecipeIngredientsByID(num id) async {
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
    List<String> authNames = [];

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
  /// Get Recipe Nutrition Widget by ID
  ///
  /// Get a recipe&#39;s nutrition widget data.
  Future<Object> getRecipeNutritionWidgetByID(num id) async {
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
    List<String> authNames = [];

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
  /// Get Recipe Price Breakdown by ID
  ///
  /// Get a recipe&#39;s price breakdown data.
  Future<Object> getRecipePriceBreakdownByID(num id) async {
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
    List<String> authNames = [];

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
  /// Get Recipe Taste by ID
  ///
  /// Get a recipe&#39;s taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
  Future<Object> getRecipeTasteByID(num id) async {
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

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Get Shopping List
  ///
  /// Get the current shopping list for the given user.
  Future<Object> getShoppingList(String username, String hash) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }

    // create path and map variables
    String path = "/mealplanner/{username}/shopping-list".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "hash", hash));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Get Similar Recipes
  ///
  /// Find recipes which are similar to the given one.
  Future<Object> getSimilarRecipes(num id, { num number, bool limitLicense }) async {
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
    List<String> authNames = [];

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
  /// Get Wine Description
  ///
  /// Get a simple description of a certain wine, e.g. \&quot;malbec\&quot;, \&quot;riesling\&quot;, or \&quot;merlot\&quot;.
  Future<Object> getWineDescription(String wine) async {
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
    List<String> authNames = [];

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
  /// Get Wine Pairing
  ///
  /// Find a wine that goes well with a food. Food can be a dish name (\&quot;steak\&quot;), an ingredient name (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).
  Future<Object> getWinePairing(String food, { num maxPrice }) async {
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
    List<String> authNames = [];

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
  /// Get Wine Recommendation
  ///
  /// Get a specific wine recommendation (concrete product) for a given wine type, e.g. \&quot;merlot\&quot;.
  Future<Object> getWineRecommendation(String wine, { num maxPrice, num minRating, num number }) async {
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
    List<String> authNames = [];

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
  /// Guess Nutrition by Dish Name
  ///
  /// Estimate the macronutrients of a dish based on its title.
  Future<Object> guessNutritionByDishName(String title) async {
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
    List<String> authNames = [];

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
  /// Image Analysis by URL
  ///
  /// Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes. You can play around with that endpoint!
  Future<Object> imageAnalysisByURL(String imageUrl) async {
    Object postBody;

    // verify required params are set
    if(imageUrl == null) {
     throw new ApiException(400, "Missing required param: imageUrl");
    }

    // create path and map variables
    String path = "/food/images/analyze".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "imageUrl", imageUrl));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Image Classification by URL
  ///
  /// Classify a food image. You can play around with that endpoint!
  Future<Object> imageClassificationByURL(String imageUrl) async {
    Object postBody;

    // verify required params are set
    if(imageUrl == null) {
     throw new ApiException(400, "Missing required param: imageUrl");
    }

    // create path and map variables
    String path = "/food/images/classify".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "imageUrl", imageUrl));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Ingredient Search
  ///
  /// Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
  Future<Object> ingredientSearch(String query, { bool addChildren, num minProteinPercent, num maxProteinPercent, num minFatPercent, num maxFatPercent, num minCarbsPercent, num maxCarbsPercent, bool metaInformation, String intolerances, String sort, String sortDirection, num offset, num number }) async {
    Object postBody;

    // verify required params are set
    if(query == null) {
     throw new ApiException(400, "Missing required param: query");
    }

    // create path and map variables
    String path = "/food/ingredients/search".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
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
    List<String> authNames = [];

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
  Future<Object> mapIngredientsToGroceryProducts(Object body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/food/ingredients/map".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
  /// Parse Ingredients
  ///
  /// Extract an ingredient from plain text.
  Future<Object> parseIngredients(String ingredientList, num servings, { bool includeNutrition }) async {
    Object postBody;

    // verify required params are set
    if(ingredientList == null) {
     throw new ApiException(400, "Missing required param: ingredientList");
    }
    if(servings == null) {
     throw new ApiException(400, "Missing required param: servings");
    }

    // create path and map variables
    String path = "/recipes/parseIngredients".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/x-www-form-urlencoded"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (ingredientList != null) {
        hasFields = true;
        mp.fields['ingredientList'] = parameterToString(ingredientList);
      }
      if (servings != null) {
        hasFields = true;
        mp.fields['servings'] = parameterToString(servings);
      }
      if (includeNutrition != null) {
        hasFields = true;
        mp.fields['includeNutrition'] = parameterToString(includeNutrition);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (ingredientList != null)
        formParams['ingredientList'] = parameterToString(ingredientList);
      if (servings != null)
        formParams['servings'] = parameterToString(servings);
      if (includeNutrition != null)
        formParams['includeNutrition'] = parameterToString(includeNutrition);
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
  /// Quick Answer
  ///
  /// Answer a nutrition related natural language question.
  Future<Object> quickAnswer(String q) async {
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
    List<String> authNames = [];

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
  /// Search All Food
  ///
  /// Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.
  Future<Object> searchAllFood(String query, { num offset, num number }) async {
    Object postBody;

    // verify required params are set
    if(query == null) {
     throw new ApiException(400, "Missing required param: query");
    }

    // create path and map variables
    String path = "/food/search".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "number", number));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Search Custom Foods
  ///
  /// Search custom foods in a user&#39;s account.
  Future<Object> searchCustomFoods(String query, String username, String hash, { num offset, num number }) async {
    Object postBody;

    // verify required params are set
    if(query == null) {
     throw new ApiException(400, "Missing required param: query");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }

    // create path and map variables
    String path = "/food/customFoods/search".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
      queryParams.addAll(_convertParametersForCollectionFormat("", "username", username));
      queryParams.addAll(_convertParametersForCollectionFormat("", "hash", hash));
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "number", number));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Search Food Videos
  ///
  /// Find recipe and other food related videos.
  Future<Object> searchFoodVideos(String query, { String type, String cuisine, String diet, String includeIngredients, String excludeIngredients, num minLength, num maxLength, num offset, num number }) async {
    Object postBody;

    // verify required params are set
    if(query == null) {
     throw new ApiException(400, "Missing required param: query");
    }

    // create path and map variables
    String path = "/food/videos/search".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
    if(type != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "type", type));
    }
    if(cuisine != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "cuisine", cuisine));
    }
    if(diet != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "diet", diet));
    }
    if(includeIngredients != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeIngredients", includeIngredients));
    }
    if(excludeIngredients != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "excludeIngredients", excludeIngredients));
    }
    if(minLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minLength", minLength));
    }
    if(maxLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxLength", maxLength));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "number", number));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Search Grocery Products
  ///
  /// Search packaged food products, such as frozen pizza or Greek yogurt.
  Future<Object> searchGroceryProducts(String query, { num minCalories, num maxCalories, num minCarbs, num maxCarbs, num minProtein, num maxProtein, num minFat, num maxFat, num offset, num number }) async {
    Object postBody;

    // verify required params are set
    if(query == null) {
     throw new ApiException(400, "Missing required param: query");
    }

    // create path and map variables
    String path = "/food/products/search".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
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
    List<String> authNames = [];

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
  /// Search Grocery Products by UPC
  ///
  /// Get information about a packaged food using its UPC.
  Future<Object> searchGroceryProductsByUPC(num upc) async {
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
    List<String> authNames = [];

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
  /// Search Menu Items
  ///
  /// Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald&#39;s Big Mac or Starbucks Mocha.
  Future<Object> searchMenuItems(String query, { num minCalories, num maxCalories, num minCarbs, num maxCarbs, num minProtein, num maxProtein, num minFat, num maxFat, num offset, num number }) async {
    Object postBody;

    // verify required params are set
    if(query == null) {
     throw new ApiException(400, "Missing required param: query");
    }

    // create path and map variables
    String path = "/food/menuItems/search".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
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
    List<String> authNames = [];

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
  Future<Object> searchRecipes(String query, { String cuisine, String excludeCuisine, String diet, String intolerances, String equipment, String includeIngredients, String excludeIngredients, String type, bool instructionsRequired, bool fillIngredients, bool addRecipeInformation, bool addRecipeNutrition, String author, String tags, num recipeBoxId, String titleMatch, num maxReadyTime, bool ignorePantry, String sort, String sortDirection, num minCarbs, num maxCarbs, num minProtein, num maxProtein, num minCalories, num maxCalories, num minFat, num maxFat, num minAlcohol, num maxAlcohol, num minCaffeine, num maxCaffeine, num minCopper, num maxCopper, num minCalcium, num maxCalcium, num minCholine, num maxCholine, num minCholesterol, num maxCholesterol, num minFluoride, num maxFluoride, num minSaturatedFat, num maxSaturatedFat, num minVitaminA, num maxVitaminA, num minVitaminC, num maxVitaminC, num minVitaminD, num maxVitaminD, num minVitaminE, num maxVitaminE, num minVitaminK, num maxVitaminK, num minVitaminB1, num maxVitaminB1, num minVitaminB2, num maxVitaminB2, num minVitaminB5, num maxVitaminB5, num minVitaminB3, num maxVitaminB3, num minVitaminB6, num maxVitaminB6, num minVitaminB12, num maxVitaminB12, num minFiber, num maxFiber, num minFolate, num maxFolate, num minFolicAcid, num maxFolicAcid, num minIodine, num maxIodine, num minIron, num maxIron, num minMagnesium, num maxMagnesium, num minManganese, num maxManganese, num minPhosphorus, num maxPhosphorus, num minPotassium, num maxPotassium, num minSelenium, num maxSelenium, num minSodium, num maxSodium, num minSugar, num maxSugar, num minZinc, num maxZinc, num offset, num number, bool limitLicense }) async {
    Object postBody;

    // verify required params are set
    if(query == null) {
     throw new ApiException(400, "Missing required param: query");
    }

    // create path and map variables
    String path = "/recipes/complexSearch".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
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
    List<String> authNames = [];

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
  /// Search Recipes by Ingredients
  ///
  ///              Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don&#39;t currently have (post shopping).         
  Future<Object> searchRecipesByIngredients(String ingredients, { num number, bool limitLicense, num ranking, bool ignorePantry }) async {
    Object postBody;

    // verify required params are set
    if(ingredients == null) {
     throw new ApiException(400, "Missing required param: ingredients");
    }

    // create path and map variables
    String path = "/recipes/findByIngredients".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "ingredients", ingredients));
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
    List<String> authNames = [];

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
  /// Search Recipes by Nutrients
  ///
  /// Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.
  Future<Object> searchRecipesByNutrients({ num minCarbs, num maxCarbs, num minProtein, num maxProtein, num minCalories, num maxCalories, num minFat, num maxFat, num minAlcohol, num maxAlcohol, num minCaffeine, num maxCaffeine, num minCopper, num maxCopper, num minCalcium, num maxCalcium, num minCholine, num maxCholine, num minCholesterol, num maxCholesterol, num minFluoride, num maxFluoride, num minSaturatedFat, num maxSaturatedFat, num minVitaminA, num maxVitaminA, num minVitaminC, num maxVitaminC, num minVitaminD, num maxVitaminD, num minVitaminE, num maxVitaminE, num minVitaminK, num maxVitaminK, num minVitaminB1, num maxVitaminB1, num minVitaminB2, num maxVitaminB2, num minVitaminB5, num maxVitaminB5, num minVitaminB3, num maxVitaminB3, num minVitaminB6, num maxVitaminB6, num minVitaminB12, num maxVitaminB12, num minFiber, num maxFiber, num minFolate, num maxFolate, num minFolicAcid, num maxFolicAcid, num minIodine, num maxIodine, num minIron, num maxIron, num minMagnesium, num maxMagnesium, num minManganese, num maxManganese, num minPhosphorus, num maxPhosphorus, num minPotassium, num maxPotassium, num minSelenium, num maxSelenium, num minSodium, num maxSodium, num minSugar, num maxSugar, num minZinc, num maxZinc, num offset, num number, bool random, bool limitLicense }) async {
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
    List<String> authNames = [];

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
  /// Search Site Content
  ///
  /// Search spoonacular&#39;s site content. You&#39;ll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.
  Future<Object> searchSiteContent(String query) async {
    Object postBody;

    // verify required params are set
    if(query == null) {
     throw new ApiException(400, "Missing required param: query");
    }

    // create path and map variables
    String path = "/food/site/search".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Summarize Recipe
  ///
  /// Automatically generate a short description that summarizes key information about the recipe.
  Future<Object> summarizeRecipe(num id) async {
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
    List<String> authNames = [];

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
  /// Talk to Chatbot
  ///
  /// This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \&quot;Get Conversation Suggests\&quot; endpoint to show your user what he or she can say.
  Future<Object> talkToChatbot(String text, { String contextId }) async {
    Object postBody;

    // verify required params are set
    if(text == null) {
     throw new ApiException(400, "Missing required param: text");
    }

    // create path and map variables
    String path = "/food/converse".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "text", text));
    if(contextId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "contextId", contextId));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Visualize Equipment
  ///
  /// Visualize the equipment used to make a recipe. You can play around with that endpoint!
  Future<String> visualizeEquipment(String instructions, { String view, bool defaultCss, bool showBacklink }) async {
    Object postBody;

    // verify required params are set
    if(instructions == null) {
     throw new ApiException(400, "Missing required param: instructions");
    }

    // create path and map variables
    String path = "/recipes/visualizeEquipment".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/x-www-form-urlencoded"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (instructions != null) {
        hasFields = true;
        mp.fields['instructions'] = parameterToString(instructions);
      }
      if (view != null) {
        hasFields = true;
        mp.fields['view'] = parameterToString(view);
      }
      if (defaultCss != null) {
        hasFields = true;
        mp.fields['defaultCss'] = parameterToString(defaultCss);
      }
      if (showBacklink != null) {
        hasFields = true;
        mp.fields['showBacklink'] = parameterToString(showBacklink);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (instructions != null)
        formParams['instructions'] = parameterToString(instructions);
      if (view != null)
        formParams['view'] = parameterToString(view);
      if (defaultCss != null)
        formParams['defaultCss'] = parameterToString(defaultCss);
      if (showBacklink != null)
        formParams['showBacklink'] = parameterToString(showBacklink);
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
  /// Visualize Ingredients
  ///
  /// Visualize ingredients of a recipe. You can play around with that endpoint!
  Future<String> visualizeIngredients(String ingredientList, num servings, { String measure, String view, bool defaultCss, bool showBacklink }) async {
    Object postBody;

    // verify required params are set
    if(ingredientList == null) {
     throw new ApiException(400, "Missing required param: ingredientList");
    }
    if(servings == null) {
     throw new ApiException(400, "Missing required param: servings");
    }

    // create path and map variables
    String path = "/recipes/visualizeIngredients".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/x-www-form-urlencoded"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (ingredientList != null) {
        hasFields = true;
        mp.fields['ingredientList'] = parameterToString(ingredientList);
      }
      if (servings != null) {
        hasFields = true;
        mp.fields['servings'] = parameterToString(servings);
      }
      if (measure != null) {
        hasFields = true;
        mp.fields['measure'] = parameterToString(measure);
      }
      if (view != null) {
        hasFields = true;
        mp.fields['view'] = parameterToString(view);
      }
      if (defaultCss != null) {
        hasFields = true;
        mp.fields['defaultCss'] = parameterToString(defaultCss);
      }
      if (showBacklink != null) {
        hasFields = true;
        mp.fields['showBacklink'] = parameterToString(showBacklink);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (ingredientList != null)
        formParams['ingredientList'] = parameterToString(ingredientList);
      if (servings != null)
        formParams['servings'] = parameterToString(servings);
      if (measure != null)
        formParams['measure'] = parameterToString(measure);
      if (view != null)
        formParams['view'] = parameterToString(view);
      if (defaultCss != null)
        formParams['defaultCss'] = parameterToString(defaultCss);
      if (showBacklink != null)
        formParams['showBacklink'] = parameterToString(showBacklink);
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
  /// Visualize Menu Item Nutrition by ID
  ///
  /// Visualize a menu item&#39;s nutritional information as HTML including CSS.
  Future<String> visualizeMenuItemNutritionByID(num id, { bool defaultCss }) async {
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

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Visualize Price Breakdown
  ///
  /// Visualize the price breakdown of a recipe. You can play around with that endpoint!
  Future<String> visualizePriceBreakdown(String ingredientList, num servings, { num mode, bool defaultCss, bool showBacklink }) async {
    Object postBody;

    // verify required params are set
    if(ingredientList == null) {
     throw new ApiException(400, "Missing required param: ingredientList");
    }
    if(servings == null) {
     throw new ApiException(400, "Missing required param: servings");
    }

    // create path and map variables
    String path = "/recipes/visualizePriceEstimator".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/x-www-form-urlencoded"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (ingredientList != null) {
        hasFields = true;
        mp.fields['ingredientList'] = parameterToString(ingredientList);
      }
      if (servings != null) {
        hasFields = true;
        mp.fields['servings'] = parameterToString(servings);
      }
      if (mode != null) {
        hasFields = true;
        mp.fields['mode'] = parameterToString(mode);
      }
      if (defaultCss != null) {
        hasFields = true;
        mp.fields['defaultCss'] = parameterToString(defaultCss);
      }
      if (showBacklink != null) {
        hasFields = true;
        mp.fields['showBacklink'] = parameterToString(showBacklink);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (ingredientList != null)
        formParams['ingredientList'] = parameterToString(ingredientList);
      if (servings != null)
        formParams['servings'] = parameterToString(servings);
      if (mode != null)
        formParams['mode'] = parameterToString(mode);
      if (defaultCss != null)
        formParams['defaultCss'] = parameterToString(defaultCss);
      if (showBacklink != null)
        formParams['showBacklink'] = parameterToString(showBacklink);
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
  /// Visualize Product Nutrition by ID
  ///
  /// Visualize a product&#39;s nutritional information as HTML including CSS.
  Future<String> visualizeProductNutritionByID(num id, { bool defaultCss }) async {
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

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Visualize Recipe Equipment by ID
  ///
  /// Visualize a recipe&#39;s equipment list.
  Future<String> visualizeRecipeEquipmentByID(num id, { bool defaultCss }) async {
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
    List<String> authNames = [];

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
  /// Visualize Recipe Ingredients by ID
  ///
  /// Visualize a recipe&#39;s ingredient list.
  Future<String> visualizeRecipeIngredientsByID(num id, { bool defaultCss }) async {
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

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Visualize Recipe Nutrition
  ///
  /// Visualize a recipe&#39;s nutritional information as HTML including CSS. You can play around with that endpoint!
  Future<String> visualizeRecipeNutrition(String ingredientList, num servings, { bool defaultCss, bool showBacklink }) async {
    Object postBody;

    // verify required params are set
    if(ingredientList == null) {
     throw new ApiException(400, "Missing required param: ingredientList");
    }
    if(servings == null) {
     throw new ApiException(400, "Missing required param: servings");
    }

    // create path and map variables
    String path = "/recipes/visualizeNutrition".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/x-www-form-urlencoded"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (ingredientList != null) {
        hasFields = true;
        mp.fields['ingredientList'] = parameterToString(ingredientList);
      }
      if (servings != null) {
        hasFields = true;
        mp.fields['servings'] = parameterToString(servings);
      }
      if (defaultCss != null) {
        hasFields = true;
        mp.fields['defaultCss'] = parameterToString(defaultCss);
      }
      if (showBacklink != null) {
        hasFields = true;
        mp.fields['showBacklink'] = parameterToString(showBacklink);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (ingredientList != null)
        formParams['ingredientList'] = parameterToString(ingredientList);
      if (servings != null)
        formParams['servings'] = parameterToString(servings);
      if (defaultCss != null)
        formParams['defaultCss'] = parameterToString(defaultCss);
      if (showBacklink != null)
        formParams['showBacklink'] = parameterToString(showBacklink);
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
  /// Visualize Recipe Nutrition by ID
  ///
  /// Visualize a recipe&#39;s nutritional information as HTML including CSS.
  Future<String> visualizeRecipeNutritionByID(num id, { bool defaultCss }) async {
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

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
  /// Visualize Recipe Price Breakdown by ID
  ///
  /// Visualize a recipe&#39;s price breakdown.
  Future<String> visualizeRecipePriceBreakdownByID(num id, { bool defaultCss }) async {
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
    List<String> authNames = [];

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
  /// Visualize Recipe Taste
  ///
  /// Visualize a recipe&#39;s taste information as HTML including CSS. You can play around with that endpoint!
  Future<String> visualizeRecipeTaste(String ingredientList) async {
    Object postBody;

    // verify required params are set
    if(ingredientList == null) {
     throw new ApiException(400, "Missing required param: ingredientList");
    }

    // create path and map variables
    String path = "/recipes/visualizeTaste".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/x-www-form-urlencoded"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (ingredientList != null) {
        hasFields = true;
        mp.fields['ingredientList'] = parameterToString(ingredientList);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (ingredientList != null)
        formParams['ingredientList'] = parameterToString(ingredientList);
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
  /// Visualize Recipe Taste by ID
  ///
  /// Get a recipe&#39;s taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
  Future<String> visualizeRecipeTasteByID(num id) async {
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

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
