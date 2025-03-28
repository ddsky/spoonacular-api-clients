/*
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 2.0.2
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


import java.math.BigDecimal;
import com.spoonacular.client.model.GetDishPairingForWine200Response;
import com.spoonacular.client.model.GetWineDescription200Response;
import com.spoonacular.client.model.GetWinePairing200Response;
import com.spoonacular.client.model.GetWineRecommendation200Response;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class WineApi {
    private ApiClient localVarApiClient;
    private int localHostIndex;
    private String localCustomBaseUrl;

    public WineApi() {
        this(Configuration.getDefaultApiClient());
    }

    public WineApi(ApiClient apiClient) {
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
     * Build call for getDishPairingForWine
     * @param wine The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. (required)
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
     * @see <a href="https://spoonacular.com/food-api/docs#Dish-Pairing-for-Wine">Dish Pairing for Wine Documentation</a>
     */
    public okhttp3.Call getDishPairingForWineCall(String wine, final ApiCallback _callback) throws ApiException {
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
        String localVarPath = "/food/wine/dishes";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (wine != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("wine", wine));
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
    private okhttp3.Call getDishPairingForWineValidateBeforeCall(String wine, final ApiCallback _callback) throws ApiException {
        // verify the required parameter 'wine' is set
        if (wine == null) {
            throw new ApiException("Missing the required parameter 'wine' when calling getDishPairingForWine(Async)");
        }

        return getDishPairingForWineCall(wine, _callback);

    }

    /**
     * Dish Pairing for Wine
     * Find a dish that goes well with a given wine.
     * @param wine The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. (required)
     * @return GetDishPairingForWine200Response
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
     * @see <a href="https://spoonacular.com/food-api/docs#Dish-Pairing-for-Wine">Dish Pairing for Wine Documentation</a>
     */
    public GetDishPairingForWine200Response getDishPairingForWine(String wine) throws ApiException {
        ApiResponse<GetDishPairingForWine200Response> localVarResp = getDishPairingForWineWithHttpInfo(wine);
        return localVarResp.getData();
    }

    /**
     * Dish Pairing for Wine
     * Find a dish that goes well with a given wine.
     * @param wine The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. (required)
     * @return ApiResponse&lt;GetDishPairingForWine200Response&gt;
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
     * @see <a href="https://spoonacular.com/food-api/docs#Dish-Pairing-for-Wine">Dish Pairing for Wine Documentation</a>
     */
    public ApiResponse<GetDishPairingForWine200Response> getDishPairingForWineWithHttpInfo(String wine) throws ApiException {
        okhttp3.Call localVarCall = getDishPairingForWineValidateBeforeCall(wine, null);
        Type localVarReturnType = new TypeToken<GetDishPairingForWine200Response>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Dish Pairing for Wine (asynchronously)
     * Find a dish that goes well with a given wine.
     * @param wine The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. (required)
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
     * @see <a href="https://spoonacular.com/food-api/docs#Dish-Pairing-for-Wine">Dish Pairing for Wine Documentation</a>
     */
    public okhttp3.Call getDishPairingForWineAsync(String wine, final ApiCallback<GetDishPairingForWine200Response> _callback) throws ApiException {

        okhttp3.Call localVarCall = getDishPairingForWineValidateBeforeCall(wine, _callback);
        Type localVarReturnType = new TypeToken<GetDishPairingForWine200Response>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for getWineDescription
     * @param wine The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. (required)
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
     * @see <a href="https://spoonacular.com/food-api/docs#Wine-Description">Wine Description Documentation</a>
     */
    public okhttp3.Call getWineDescriptionCall(String wine, final ApiCallback _callback) throws ApiException {
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
        String localVarPath = "/food/wine/description";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (wine != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("wine", wine));
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
    private okhttp3.Call getWineDescriptionValidateBeforeCall(String wine, final ApiCallback _callback) throws ApiException {
        // verify the required parameter 'wine' is set
        if (wine == null) {
            throw new ApiException("Missing the required parameter 'wine' when calling getWineDescription(Async)");
        }

        return getWineDescriptionCall(wine, _callback);

    }

    /**
     * Wine Description
     * Get a simple description of a certain wine, e.g. \&quot;malbec\&quot;, \&quot;riesling\&quot;, or \&quot;merlot\&quot;.
     * @param wine The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. (required)
     * @return GetWineDescription200Response
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
     * @see <a href="https://spoonacular.com/food-api/docs#Wine-Description">Wine Description Documentation</a>
     */
    public GetWineDescription200Response getWineDescription(String wine) throws ApiException {
        ApiResponse<GetWineDescription200Response> localVarResp = getWineDescriptionWithHttpInfo(wine);
        return localVarResp.getData();
    }

    /**
     * Wine Description
     * Get a simple description of a certain wine, e.g. \&quot;malbec\&quot;, \&quot;riesling\&quot;, or \&quot;merlot\&quot;.
     * @param wine The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. (required)
     * @return ApiResponse&lt;GetWineDescription200Response&gt;
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
     * @see <a href="https://spoonacular.com/food-api/docs#Wine-Description">Wine Description Documentation</a>
     */
    public ApiResponse<GetWineDescription200Response> getWineDescriptionWithHttpInfo(String wine) throws ApiException {
        okhttp3.Call localVarCall = getWineDescriptionValidateBeforeCall(wine, null);
        Type localVarReturnType = new TypeToken<GetWineDescription200Response>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Wine Description (asynchronously)
     * Get a simple description of a certain wine, e.g. \&quot;malbec\&quot;, \&quot;riesling\&quot;, or \&quot;merlot\&quot;.
     * @param wine The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. (required)
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
     * @see <a href="https://spoonacular.com/food-api/docs#Wine-Description">Wine Description Documentation</a>
     */
    public okhttp3.Call getWineDescriptionAsync(String wine, final ApiCallback<GetWineDescription200Response> _callback) throws ApiException {

        okhttp3.Call localVarCall = getWineDescriptionValidateBeforeCall(wine, _callback);
        Type localVarReturnType = new TypeToken<GetWineDescription200Response>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for getWinePairing
     * @param food The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). (required)
     * @param maxPrice The maximum price for the specific wine recommendation in USD. (optional)
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
     * @see <a href="https://spoonacular.com/food-api/docs#Wine-Pairing">Wine Pairing Documentation</a>
     */
    public okhttp3.Call getWinePairingCall(String food, BigDecimal maxPrice, final ApiCallback _callback) throws ApiException {
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
        String localVarPath = "/food/wine/pairing";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (food != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("food", food));
        }

        if (maxPrice != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("maxPrice", maxPrice));
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
    private okhttp3.Call getWinePairingValidateBeforeCall(String food, BigDecimal maxPrice, final ApiCallback _callback) throws ApiException {
        // verify the required parameter 'food' is set
        if (food == null) {
            throw new ApiException("Missing the required parameter 'food' when calling getWinePairing(Async)");
        }

        return getWinePairingCall(food, maxPrice, _callback);

    }

    /**
     * Wine Pairing
     * Find a wine that goes well with a food. Food can be a dish name (\&quot;steak\&quot;), an ingredient name (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).
     * @param food The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). (required)
     * @param maxPrice The maximum price for the specific wine recommendation in USD. (optional)
     * @return GetWinePairing200Response
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
     * @see <a href="https://spoonacular.com/food-api/docs#Wine-Pairing">Wine Pairing Documentation</a>
     */
    public GetWinePairing200Response getWinePairing(String food, BigDecimal maxPrice) throws ApiException {
        ApiResponse<GetWinePairing200Response> localVarResp = getWinePairingWithHttpInfo(food, maxPrice);
        return localVarResp.getData();
    }

    /**
     * Wine Pairing
     * Find a wine that goes well with a food. Food can be a dish name (\&quot;steak\&quot;), an ingredient name (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).
     * @param food The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). (required)
     * @param maxPrice The maximum price for the specific wine recommendation in USD. (optional)
     * @return ApiResponse&lt;GetWinePairing200Response&gt;
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
     * @see <a href="https://spoonacular.com/food-api/docs#Wine-Pairing">Wine Pairing Documentation</a>
     */
    public ApiResponse<GetWinePairing200Response> getWinePairingWithHttpInfo(String food, BigDecimal maxPrice) throws ApiException {
        okhttp3.Call localVarCall = getWinePairingValidateBeforeCall(food, maxPrice, null);
        Type localVarReturnType = new TypeToken<GetWinePairing200Response>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Wine Pairing (asynchronously)
     * Find a wine that goes well with a food. Food can be a dish name (\&quot;steak\&quot;), an ingredient name (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).
     * @param food The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). (required)
     * @param maxPrice The maximum price for the specific wine recommendation in USD. (optional)
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
     * @see <a href="https://spoonacular.com/food-api/docs#Wine-Pairing">Wine Pairing Documentation</a>
     */
    public okhttp3.Call getWinePairingAsync(String food, BigDecimal maxPrice, final ApiCallback<GetWinePairing200Response> _callback) throws ApiException {

        okhttp3.Call localVarCall = getWinePairingValidateBeforeCall(food, maxPrice, _callback);
        Type localVarReturnType = new TypeToken<GetWinePairing200Response>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for getWineRecommendation
     * @param wine The type of wine to get a specific product recommendation for. (required)
     * @param maxPrice The maximum price for the specific wine recommendation in USD. (optional)
     * @param minRating The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. (optional)
     * @param number The number of wine recommendations expected (between 1 and 100). (optional, default to 10)
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
     * @see <a href="https://spoonacular.com/food-api/docs#Wine-Recommendation">Wine Recommendation Documentation</a>
     */
    public okhttp3.Call getWineRecommendationCall(String wine, BigDecimal maxPrice, BigDecimal minRating, BigDecimal number, final ApiCallback _callback) throws ApiException {
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
        String localVarPath = "/food/wine/recommendation";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (wine != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("wine", wine));
        }

        if (maxPrice != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("maxPrice", maxPrice));
        }

        if (minRating != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("minRating", minRating));
        }

        if (number != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("number", number));
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
    private okhttp3.Call getWineRecommendationValidateBeforeCall(String wine, BigDecimal maxPrice, BigDecimal minRating, BigDecimal number, final ApiCallback _callback) throws ApiException {
        // verify the required parameter 'wine' is set
        if (wine == null) {
            throw new ApiException("Missing the required parameter 'wine' when calling getWineRecommendation(Async)");
        }

        return getWineRecommendationCall(wine, maxPrice, minRating, number, _callback);

    }

    /**
     * Wine Recommendation
     * Get a specific wine recommendation (concrete product) for a given wine type, e.g. \&quot;merlot\&quot;.
     * @param wine The type of wine to get a specific product recommendation for. (required)
     * @param maxPrice The maximum price for the specific wine recommendation in USD. (optional)
     * @param minRating The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. (optional)
     * @param number The number of wine recommendations expected (between 1 and 100). (optional, default to 10)
     * @return GetWineRecommendation200Response
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
     * @see <a href="https://spoonacular.com/food-api/docs#Wine-Recommendation">Wine Recommendation Documentation</a>
     */
    public GetWineRecommendation200Response getWineRecommendation(String wine, BigDecimal maxPrice, BigDecimal minRating, BigDecimal number) throws ApiException {
        ApiResponse<GetWineRecommendation200Response> localVarResp = getWineRecommendationWithHttpInfo(wine, maxPrice, minRating, number);
        return localVarResp.getData();
    }

    /**
     * Wine Recommendation
     * Get a specific wine recommendation (concrete product) for a given wine type, e.g. \&quot;merlot\&quot;.
     * @param wine The type of wine to get a specific product recommendation for. (required)
     * @param maxPrice The maximum price for the specific wine recommendation in USD. (optional)
     * @param minRating The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. (optional)
     * @param number The number of wine recommendations expected (between 1 and 100). (optional, default to 10)
     * @return ApiResponse&lt;GetWineRecommendation200Response&gt;
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
     * @see <a href="https://spoonacular.com/food-api/docs#Wine-Recommendation">Wine Recommendation Documentation</a>
     */
    public ApiResponse<GetWineRecommendation200Response> getWineRecommendationWithHttpInfo(String wine, BigDecimal maxPrice, BigDecimal minRating, BigDecimal number) throws ApiException {
        okhttp3.Call localVarCall = getWineRecommendationValidateBeforeCall(wine, maxPrice, minRating, number, null);
        Type localVarReturnType = new TypeToken<GetWineRecommendation200Response>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Wine Recommendation (asynchronously)
     * Get a specific wine recommendation (concrete product) for a given wine type, e.g. \&quot;merlot\&quot;.
     * @param wine The type of wine to get a specific product recommendation for. (required)
     * @param maxPrice The maximum price for the specific wine recommendation in USD. (optional)
     * @param minRating The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. (optional)
     * @param number The number of wine recommendations expected (between 1 and 100). (optional, default to 10)
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
     * @see <a href="https://spoonacular.com/food-api/docs#Wine-Recommendation">Wine Recommendation Documentation</a>
     */
    public okhttp3.Call getWineRecommendationAsync(String wine, BigDecimal maxPrice, BigDecimal minRating, BigDecimal number, final ApiCallback<GetWineRecommendation200Response> _callback) throws ApiException {

        okhttp3.Call localVarCall = getWineRecommendationValidateBeforeCall(wine, maxPrice, minRating, number, _callback);
        Type localVarReturnType = new TypeToken<GetWineRecommendation200Response>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}
