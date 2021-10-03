part of openapi.api;



class MealPlanningApi {
  final ApiClient apiClient;

  MealPlanningApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add Meal Plan Template
  ///
  /// Add a meal plan template for a user.
  Future<InlineResponse20040> addMealPlanTemplate(String username, String hash, InlineObject6 inlineObject6) async {
    Object postBody = inlineObject6;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }
    if(inlineObject6 == null) {
     throw new ApiException(400, "Missing required param: inlineObject6");
    }

    // create path and map variables
    String path = "/mealplanner/{username}/templates".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "hash", hash));

    List<String> contentTypes = [""];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20040') as InlineResponse20040;
    } else {
      return null;
    }
  }
  /// Add to Meal Plan
  ///
  /// Add an item to the user&#39;s meal plan.
  Future<Object> addToMealPlan(String username, String hash, InlineObject4 inlineObject4) async {
    Object postBody = inlineObject4;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }
    if(inlineObject4 == null) {
     throw new ApiException(400, "Missing required param: inlineObject4");
    }

    // create path and map variables
    String path = "/mealplanner/{username}/items".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "hash", hash));

    List<String> contentTypes = ["","application/json"];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
  /// Add to Shopping List
  ///
  /// Add an item to the current shopping list of a user.
  Future<InlineResponse20042> addToShoppingList(String username, String hash, InlineObject9 inlineObject9) async {
    Object postBody = inlineObject9;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }
    if(inlineObject9 == null) {
     throw new ApiException(400, "Missing required param: inlineObject9");
    }

    // create path and map variables
    String path = "/mealplanner/{username}/shopping-list/items".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "hash", hash));

    List<String> contentTypes = ["","application/json"];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20042') as InlineResponse20042;
    } else {
      return null;
    }
  }
  /// Clear Meal Plan Day
  ///
  /// Delete all planned items from the user&#39;s meal plan for a specific day.
  Future<Object> clearMealPlanDay(String username, String date, String hash, InlineObject3 inlineObject3) async {
    Object postBody = inlineObject3;

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
    if(inlineObject3 == null) {
     throw new ApiException(400, "Missing required param: inlineObject3");
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
  /// Connect User
  ///
  /// In order to call user-specific endpoints, you need to connect your app&#39;s users to spoonacular users.
  Future<InlineResponse20043> connectUser(Object body) async {
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

    List<String> contentTypes = ["","application/json"];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20043') as InlineResponse20043;
    } else {
      return null;
    }
  }
  /// Delete from Meal Plan
  ///
  /// Delete an item from the user&#39;s meal plan.
  Future<Object> deleteFromMealPlan(String username, num id, String hash, InlineObject5 inlineObject5) async {
    Object postBody = inlineObject5;

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
    if(inlineObject5 == null) {
     throw new ApiException(400, "Missing required param: inlineObject5");
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
  Future<Object> deleteFromShoppingList(String username, int id, String hash, InlineObject10 inlineObject10) async {
    Object postBody = inlineObject10;

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
    if(inlineObject10 == null) {
     throw new ApiException(400, "Missing required param: inlineObject10");
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
  /// Delete Meal Plan Template
  ///
  /// Delete a meal plan template for a user.
  Future<Object> deleteMealPlanTemplate(String username, int id, String hash, InlineObject7 inlineObject7) async {
    Object postBody = inlineObject7;

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
    if(inlineObject7 == null) {
     throw new ApiException(400, "Missing required param: inlineObject7");
    }

    // create path and map variables
    String path = "/mealplanner/{username}/templates/{id}".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "hash", hash));

    List<String> contentTypes = [""];

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
  /// Generate Meal Plan
  ///
  /// Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
  Future<InlineResponse20037> generateMealPlan({ String timeFrame, num targetCalories, String diet, String exclude }) async {
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20037') as InlineResponse20037;
    } else {
      return null;
    }
  }
  /// Generate Shopping List
  ///
  /// Generate the shopping list for a user from the meal planner in a given time frame.
  Future<InlineResponse20042> generateShoppingList(String username, String startDate, String endDate, String hash, InlineObject8 inlineObject8) async {
    Object postBody = inlineObject8;

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
    if(inlineObject8 == null) {
     throw new ApiException(400, "Missing required param: inlineObject8");
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20042') as InlineResponse20042;
    } else {
      return null;
    }
  }
  /// Get Meal Plan Template
  ///
  /// Get information about a meal plan template.
  Future<InlineResponse20041> getMealPlanTemplate(String username, int id, String hash) async {
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20041') as InlineResponse20041;
    } else {
      return null;
    }
  }
  /// Get Meal Plan Templates
  ///
  /// Get meal plan templates from user or public ones.
  Future<InlineResponse20039> getMealPlanTemplates(String username, String hash) async {
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20039') as InlineResponse20039;
    } else {
      return null;
    }
  }
  /// Get Meal Plan Week
  ///
  /// Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user&#39;s hash that can be found in his/her account.
  Future<InlineResponse20038> getMealPlanWeek(String username, String startDate, String hash) async {
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20038') as InlineResponse20038;
    } else {
      return null;
    }
  }
  /// Get Shopping List
  ///
  /// Get the current shopping list for the given user.
  Future<InlineResponse20042> getShoppingList(String username, String hash) async {
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse20042') as InlineResponse20042;
    } else {
      return null;
    }
  }
}
