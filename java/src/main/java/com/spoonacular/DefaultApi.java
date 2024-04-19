/*
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.spoonacular;

import com.spoonacular.client.ApiCallback;
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.ApiResponse;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.Pair;
import com.spoonacular.client.ProgressRequestBody;
import com.spoonacular.client.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;


import com.spoonacular.client.model.AnalyzeRecipeRequest;
import java.math.BigDecimal;
import com.spoonacular.client.model.SearchRestaurants200Response;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DefaultApi {
    private ApiClient localVarApiClient;
    private int localHostIndex;
    private String localCustomBaseUrl;

    public DefaultApi() {
        this(Configuration.getDefaultApiClient());
    }

    public DefaultApi(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return localVarApiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public int getHostIndex() {
        return localHostIndex;
    }

    public void setHostIndex(int hostIndex) {
        this.localHostIndex = hostIndex;
    }

    public String getCustomBaseUrl() {
        return localCustomBaseUrl;
    }

    public void setCustomBaseUrl(String customBaseUrl) {
        this.localCustomBaseUrl = customBaseUrl;
    }

    /**
     * Build call for analyzeRecipe
     * @param analyzeRecipeRequest Example request body. (required)
     * @param language The input language, either \&quot;en\&quot; or \&quot;de\&quot;. (optional)
     * @param includeNutrition Whether nutrition data should be added to correctly parsed ingredients. (optional)
     * @param includeTaste Whether taste data should be added to correctly parsed ingredients. (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://spoonacular.com/food-api/docs#Analyze-Recipe">Analyze Recipe Documentation</a>
     */
    public okhttp3.Call analyzeRecipeCall(AnalyzeRecipeRequest analyzeRecipeRequest, String language, Boolean includeNutrition, Boolean includeTaste, final ApiCallback _callback) throws ApiException {
        String basePath = null;
        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = analyzeRecipeRequest;

        // create path and map variables
        String localVarPath = "/recipes/analyze";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (language != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("language", language));
        }

        if (includeNutrition != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("includeNutrition", includeNutrition));
        }

        if (includeTaste != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("includeTaste", includeTaste));
        }

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            "application/json"
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] { "apiKeyScheme" };
        return localVarApiClient.buildCall(basePath, localVarPath, "POST", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call analyzeRecipeValidateBeforeCall(AnalyzeRecipeRequest analyzeRecipeRequest, String language, Boolean includeNutrition, Boolean includeTaste, final ApiCallback _callback) throws ApiException {
        // verify the required parameter 'analyzeRecipeRequest' is set
        if (analyzeRecipeRequest == null) {
            throw new ApiException("Missing the required parameter 'analyzeRecipeRequest' when calling analyzeRecipe(Async)");
        }

        return analyzeRecipeCall(analyzeRecipeRequest, language, includeNutrition, includeTaste, _callback);

    }

    /**
     * Analyze Recipe
     * This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
     * @param analyzeRecipeRequest Example request body. (required)
     * @param language The input language, either \&quot;en\&quot; or \&quot;de\&quot;. (optional)
     * @param includeNutrition Whether nutrition data should be added to correctly parsed ingredients. (optional)
     * @param includeTaste Whether taste data should be added to correctly parsed ingredients. (optional)
     * @return Object
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://spoonacular.com/food-api/docs#Analyze-Recipe">Analyze Recipe Documentation</a>
     */
    public Object analyzeRecipe(AnalyzeRecipeRequest analyzeRecipeRequest, String language, Boolean includeNutrition, Boolean includeTaste) throws ApiException {
        ApiResponse<Object> localVarResp = analyzeRecipeWithHttpInfo(analyzeRecipeRequest, language, includeNutrition, includeTaste);
        return localVarResp.getData();
    }

    /**
     * Analyze Recipe
     * This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
     * @param analyzeRecipeRequest Example request body. (required)
     * @param language The input language, either \&quot;en\&quot; or \&quot;de\&quot;. (optional)
     * @param includeNutrition Whether nutrition data should be added to correctly parsed ingredients. (optional)
     * @param includeTaste Whether taste data should be added to correctly parsed ingredients. (optional)
     * @return ApiResponse&lt;Object&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://spoonacular.com/food-api/docs#Analyze-Recipe">Analyze Recipe Documentation</a>
     */
    public ApiResponse<Object> analyzeRecipeWithHttpInfo(AnalyzeRecipeRequest analyzeRecipeRequest, String language, Boolean includeNutrition, Boolean includeTaste) throws ApiException {
        okhttp3.Call localVarCall = analyzeRecipeValidateBeforeCall(analyzeRecipeRequest, language, includeNutrition, includeTaste, null);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Analyze Recipe (asynchronously)
     * This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
     * @param analyzeRecipeRequest Example request body. (required)
     * @param language The input language, either \&quot;en\&quot; or \&quot;de\&quot;. (optional)
     * @param includeNutrition Whether nutrition data should be added to correctly parsed ingredients. (optional)
     * @param includeTaste Whether taste data should be added to correctly parsed ingredients. (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://spoonacular.com/food-api/docs#Analyze-Recipe">Analyze Recipe Documentation</a>
     */
    public okhttp3.Call analyzeRecipeAsync(AnalyzeRecipeRequest analyzeRecipeRequest, String language, Boolean includeNutrition, Boolean includeTaste, final ApiCallback<Object> _callback) throws ApiException {

        okhttp3.Call localVarCall = analyzeRecipeValidateBeforeCall(analyzeRecipeRequest, language, includeNutrition, includeTaste, _callback);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for createRecipeCardGet
     * @param id The recipe id. (required)
     * @param mask The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;). (optional)
     * @param backgroundImage The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;). (optional)
     * @param backgroundColor The background color for the recipe card as a hex-string. (optional)
     * @param fontColor The font color for the recipe card as a hex-string. (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://spoonacular.com/food-api/docs#Create-Recipe-Card">Create Recipe Card Documentation</a>
     */
    public okhttp3.Call createRecipeCardGetCall(BigDecimal id, String mask, String backgroundImage, String backgroundColor, String fontColor, final ApiCallback _callback) throws ApiException {
        String basePath = null;
        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/recipes/{id}/card"
            .replace("{" + "id" + "}", localVarApiClient.escapeString(id.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (mask != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("mask", mask));
        }

        if (backgroundImage != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("backgroundImage", backgroundImage));
        }

        if (backgroundColor != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("backgroundColor", backgroundColor));
        }

        if (fontColor != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("fontColor", fontColor));
        }

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] { "apiKeyScheme" };
        return localVarApiClient.buildCall(basePath, localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call createRecipeCardGetValidateBeforeCall(BigDecimal id, String mask, String backgroundImage, String backgroundColor, String fontColor, final ApiCallback _callback) throws ApiException {
        // verify the required parameter 'id' is set
        if (id == null) {
            throw new ApiException("Missing the required parameter 'id' when calling createRecipeCardGet(Async)");
        }

        return createRecipeCardGetCall(id, mask, backgroundImage, backgroundColor, fontColor, _callback);

    }

    /**
     * Create Recipe Card
     * Generate a recipe card for a recipe.
     * @param id The recipe id. (required)
     * @param mask The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;). (optional)
     * @param backgroundImage The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;). (optional)
     * @param backgroundColor The background color for the recipe card as a hex-string. (optional)
     * @param fontColor The font color for the recipe card as a hex-string. (optional)
     * @return Object
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://spoonacular.com/food-api/docs#Create-Recipe-Card">Create Recipe Card Documentation</a>
     */
    public Object createRecipeCardGet(BigDecimal id, String mask, String backgroundImage, String backgroundColor, String fontColor) throws ApiException {
        ApiResponse<Object> localVarResp = createRecipeCardGetWithHttpInfo(id, mask, backgroundImage, backgroundColor, fontColor);
        return localVarResp.getData();
    }

    /**
     * Create Recipe Card
     * Generate a recipe card for a recipe.
     * @param id The recipe id. (required)
     * @param mask The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;). (optional)
     * @param backgroundImage The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;). (optional)
     * @param backgroundColor The background color for the recipe card as a hex-string. (optional)
     * @param fontColor The font color for the recipe card as a hex-string. (optional)
     * @return ApiResponse&lt;Object&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://spoonacular.com/food-api/docs#Create-Recipe-Card">Create Recipe Card Documentation</a>
     */
    public ApiResponse<Object> createRecipeCardGetWithHttpInfo(BigDecimal id, String mask, String backgroundImage, String backgroundColor, String fontColor) throws ApiException {
        okhttp3.Call localVarCall = createRecipeCardGetValidateBeforeCall(id, mask, backgroundImage, backgroundColor, fontColor, null);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Create Recipe Card (asynchronously)
     * Generate a recipe card for a recipe.
     * @param id The recipe id. (required)
     * @param mask The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;). (optional)
     * @param backgroundImage The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;). (optional)
     * @param backgroundColor The background color for the recipe card as a hex-string. (optional)
     * @param fontColor The font color for the recipe card as a hex-string. (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://spoonacular.com/food-api/docs#Create-Recipe-Card">Create Recipe Card Documentation</a>
     */
    public okhttp3.Call createRecipeCardGetAsync(BigDecimal id, String mask, String backgroundImage, String backgroundColor, String fontColor, final ApiCallback<Object> _callback) throws ApiException {

        okhttp3.Call localVarCall = createRecipeCardGetValidateBeforeCall(id, mask, backgroundImage, backgroundColor, fontColor, _callback);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for searchRestaurants
     * @param query The search query. (optional)
     * @param lat The latitude of the user&#39;s location. (optional)
     * @param lng The longitude of the user&#39;s location.\&quot;. (optional)
     * @param distance The distance around the location in miles. (optional)
     * @param budget The user&#39;s budget for a meal in USD. (optional)
     * @param cuisine The cuisine of the restaurant. (optional)
     * @param minRating The minimum rating of the restaurant between 0 and 5. (optional)
     * @param isOpen Whether the restaurant must be open at the time of search. (optional)
     * @param sort How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. (optional)
     * @param page The page number of results. (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://spoonacular.com/food-api/docs#Search-Restaurants">Search Restaurants Documentation</a>
     */
    public okhttp3.Call searchRestaurantsCall(String query, BigDecimal lat, BigDecimal lng, BigDecimal distance, BigDecimal budget, String cuisine, BigDecimal minRating, Boolean isOpen, String sort, BigDecimal page, final ApiCallback _callback) throws ApiException {
        String basePath = null;
        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/food/restaurants/search";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (query != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("query", query));
        }

        if (lat != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("lat", lat));
        }

        if (lng != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("lng", lng));
        }

        if (distance != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("distance", distance));
        }

        if (budget != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("budget", budget));
        }

        if (cuisine != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("cuisine", cuisine));
        }

        if (minRating != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("min-rating", minRating));
        }

        if (isOpen != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("is-open", isOpen));
        }

        if (sort != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("sort", sort));
        }

        if (page != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("page", page));
        }

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] { "apiKeyScheme" };
        return localVarApiClient.buildCall(basePath, localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call searchRestaurantsValidateBeforeCall(String query, BigDecimal lat, BigDecimal lng, BigDecimal distance, BigDecimal budget, String cuisine, BigDecimal minRating, Boolean isOpen, String sort, BigDecimal page, final ApiCallback _callback) throws ApiException {
        return searchRestaurantsCall(query, lat, lng, distance, budget, cuisine, minRating, isOpen, sort, page, _callback);

    }

    /**
     * Search Restaurants
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     * @param query The search query. (optional)
     * @param lat The latitude of the user&#39;s location. (optional)
     * @param lng The longitude of the user&#39;s location.\&quot;. (optional)
     * @param distance The distance around the location in miles. (optional)
     * @param budget The user&#39;s budget for a meal in USD. (optional)
     * @param cuisine The cuisine of the restaurant. (optional)
     * @param minRating The minimum rating of the restaurant between 0 and 5. (optional)
     * @param isOpen Whether the restaurant must be open at the time of search. (optional)
     * @param sort How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. (optional)
     * @param page The page number of results. (optional)
     * @return SearchRestaurants200Response
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://spoonacular.com/food-api/docs#Search-Restaurants">Search Restaurants Documentation</a>
     */
    public SearchRestaurants200Response searchRestaurants(String query, BigDecimal lat, BigDecimal lng, BigDecimal distance, BigDecimal budget, String cuisine, BigDecimal minRating, Boolean isOpen, String sort, BigDecimal page) throws ApiException {
        ApiResponse<SearchRestaurants200Response> localVarResp = searchRestaurantsWithHttpInfo(query, lat, lng, distance, budget, cuisine, minRating, isOpen, sort, page);
        return localVarResp.getData();
    }

    /**
     * Search Restaurants
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     * @param query The search query. (optional)
     * @param lat The latitude of the user&#39;s location. (optional)
     * @param lng The longitude of the user&#39;s location.\&quot;. (optional)
     * @param distance The distance around the location in miles. (optional)
     * @param budget The user&#39;s budget for a meal in USD. (optional)
     * @param cuisine The cuisine of the restaurant. (optional)
     * @param minRating The minimum rating of the restaurant between 0 and 5. (optional)
     * @param isOpen Whether the restaurant must be open at the time of search. (optional)
     * @param sort How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. (optional)
     * @param page The page number of results. (optional)
     * @return ApiResponse&lt;SearchRestaurants200Response&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://spoonacular.com/food-api/docs#Search-Restaurants">Search Restaurants Documentation</a>
     */
    public ApiResponse<SearchRestaurants200Response> searchRestaurantsWithHttpInfo(String query, BigDecimal lat, BigDecimal lng, BigDecimal distance, BigDecimal budget, String cuisine, BigDecimal minRating, Boolean isOpen, String sort, BigDecimal page) throws ApiException {
        okhttp3.Call localVarCall = searchRestaurantsValidateBeforeCall(query, lat, lng, distance, budget, cuisine, minRating, isOpen, sort, page, null);
        Type localVarReturnType = new TypeToken<SearchRestaurants200Response>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Search Restaurants (asynchronously)
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     * @param query The search query. (optional)
     * @param lat The latitude of the user&#39;s location. (optional)
     * @param lng The longitude of the user&#39;s location.\&quot;. (optional)
     * @param distance The distance around the location in miles. (optional)
     * @param budget The user&#39;s budget for a meal in USD. (optional)
     * @param cuisine The cuisine of the restaurant. (optional)
     * @param minRating The minimum rating of the restaurant between 0 and 5. (optional)
     * @param isOpen Whether the restaurant must be open at the time of search. (optional)
     * @param sort How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. (optional)
     * @param page The page number of results. (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://spoonacular.com/food-api/docs#Search-Restaurants">Search Restaurants Documentation</a>
     */
    public okhttp3.Call searchRestaurantsAsync(String query, BigDecimal lat, BigDecimal lng, BigDecimal distance, BigDecimal budget, String cuisine, BigDecimal minRating, Boolean isOpen, String sort, BigDecimal page, final ApiCallback<SearchRestaurants200Response> _callback) throws ApiException {

        okhttp3.Call localVarCall = searchRestaurantsValidateBeforeCall(query, lat, lng, distance, budget, cuisine, minRating, isOpen, sort, page, _callback);
        Type localVarReturnType = new TypeToken<SearchRestaurants200Response>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}
