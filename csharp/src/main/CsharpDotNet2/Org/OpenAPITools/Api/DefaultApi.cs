using System;
using System.Collections.Generic;
using RestSharp;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace com.spoonacular
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IDefaultApi
    {
        /// <summary>
        /// Analyze Recipe This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
        /// </summary>
        /// <param name="analyzeRecipeRequest">Example request body.</param>
        /// <param name="language">The input language, either \&quot;en\&quot; or \&quot;de\&quot;.</param>
        /// <param name="includeNutrition">Whether nutrition data should be added to correctly parsed ingredients.</param>
        /// <param name="includeTaste">Whether taste data should be added to correctly parsed ingredients.</param>
        /// <returns>Object</returns>
        Object AnalyzeRecipe (AnalyzeRecipeRequest analyzeRecipeRequest, string language, bool? includeNutrition, bool? includeTaste);
        /// <summary>
        /// Create Recipe Card Generate a recipe card for a recipe.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <param name="mask">The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;).</param>
        /// <param name="backgroundImage">The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;).</param>
        /// <param name="backgroundColor">The background color for the recipe card as a hex-string.</param>
        /// <param name="fontColor">The font color for the recipe card as a hex-string.</param>
        /// <returns>Object</returns>
        Object CreateRecipeCardGet (decimal? id, string mask, string backgroundImage, string backgroundColor, string fontColor);
        /// <summary>
        /// Search Restaurants Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
        /// </summary>
        /// <param name="query">The search query.</param>
        /// <param name="lat">The latitude of the user&#39;s location.</param>
        /// <param name="lng">The longitude of the user&#39;s location.\&quot;.</param>
        /// <param name="distance">The distance around the location in miles.</param>
        /// <param name="budget">The user&#39;s budget for a meal in USD.</param>
        /// <param name="cuisine">The cuisine of the restaurant.</param>
        /// <param name="minRating">The minimum rating of the restaurant between 0 and 5.</param>
        /// <param name="isOpen">Whether the restaurant must be open at the time of search.</param>
        /// <param name="sort">How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;.</param>
        /// <param name="page">The page number of results.</param>
        /// <returns>SearchRestaurants200Response</returns>
        SearchRestaurants200Response SearchRestaurants (string query, decimal? lat, decimal? lng, decimal? distance, decimal? budget, string cuisine, decimal? minRating, bool? isOpen, string sort, decimal? page);
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class DefaultApi : IDefaultApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="DefaultApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public DefaultApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient;
            else
                this.ApiClient = apiClient;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="DefaultApi"/> class.
        /// </summary>
        /// <returns></returns>
        public DefaultApi(String basePath)
        {
            this.ApiClient = new ApiClient(basePath);
        }

        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public void SetBasePath(String basePath)
        {
            this.ApiClient.BasePath = basePath;
        }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public String GetBasePath(String basePath)
        {
            return this.ApiClient.BasePath;
        }

        /// <summary>
        /// Gets or sets the API client.
        /// </summary>
        /// <value>An instance of the ApiClient</value>
        public ApiClient ApiClient {get; set;}

        /// <summary>
        /// Analyze Recipe This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
        /// </summary>
        /// <param name="analyzeRecipeRequest">Example request body.</param>
        /// <param name="language">The input language, either \&quot;en\&quot; or \&quot;de\&quot;.</param>
        /// <param name="includeNutrition">Whether nutrition data should be added to correctly parsed ingredients.</param>
        /// <param name="includeTaste">Whether taste data should be added to correctly parsed ingredients.</param>
        /// <returns>Object</returns>
        public Object AnalyzeRecipe (AnalyzeRecipeRequest analyzeRecipeRequest, string language, bool? includeNutrition, bool? includeTaste)
        {
            
            // verify the required parameter 'analyzeRecipeRequest' is set
            if (analyzeRecipeRequest == null) throw new ApiException(400, "Missing required parameter 'analyzeRecipeRequest' when calling AnalyzeRecipe");
            

            var path = "/recipes/analyze";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (language != null) queryParams.Add("language", ApiClient.ParameterToString(language)); // query parameter
 if (includeNutrition != null) queryParams.Add("includeNutrition", ApiClient.ParameterToString(includeNutrition)); // query parameter
 if (includeTaste != null) queryParams.Add("includeTaste", ApiClient.ParameterToString(includeTaste)); // query parameter
                                    postBody = ApiClient.Serialize(analyzeRecipeRequest); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AnalyzeRecipe: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AnalyzeRecipe: " + response.ErrorMessage, response.ErrorMessage);

            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }

        /// <summary>
        /// Create Recipe Card Generate a recipe card for a recipe.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <param name="mask">The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;).</param>
        /// <param name="backgroundImage">The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;).</param>
        /// <param name="backgroundColor">The background color for the recipe card as a hex-string.</param>
        /// <param name="fontColor">The font color for the recipe card as a hex-string.</param>
        /// <returns>Object</returns>
        public Object CreateRecipeCardGet (decimal? id, string mask, string backgroundImage, string backgroundColor, string fontColor)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling CreateRecipeCardGet");
            

            var path = "/recipes/{id}/card";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (mask != null) queryParams.Add("mask", ApiClient.ParameterToString(mask)); // query parameter
 if (backgroundImage != null) queryParams.Add("backgroundImage", ApiClient.ParameterToString(backgroundImage)); // query parameter
 if (backgroundColor != null) queryParams.Add("backgroundColor", ApiClient.ParameterToString(backgroundColor)); // query parameter
 if (fontColor != null) queryParams.Add("fontColor", ApiClient.ParameterToString(fontColor)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling CreateRecipeCardGet: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling CreateRecipeCardGet: " + response.ErrorMessage, response.ErrorMessage);

            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }

        /// <summary>
        /// Search Restaurants Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
        /// </summary>
        /// <param name="query">The search query.</param>
        /// <param name="lat">The latitude of the user&#39;s location.</param>
        /// <param name="lng">The longitude of the user&#39;s location.\&quot;.</param>
        /// <param name="distance">The distance around the location in miles.</param>
        /// <param name="budget">The user&#39;s budget for a meal in USD.</param>
        /// <param name="cuisine">The cuisine of the restaurant.</param>
        /// <param name="minRating">The minimum rating of the restaurant between 0 and 5.</param>
        /// <param name="isOpen">Whether the restaurant must be open at the time of search.</param>
        /// <param name="sort">How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;.</param>
        /// <param name="page">The page number of results.</param>
        /// <returns>SearchRestaurants200Response</returns>
        public SearchRestaurants200Response SearchRestaurants (string query, decimal? lat, decimal? lng, decimal? distance, decimal? budget, string cuisine, decimal? minRating, bool? isOpen, string sort, decimal? page)
        {
            

            var path = "/food/restaurants/search";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (lat != null) queryParams.Add("lat", ApiClient.ParameterToString(lat)); // query parameter
 if (lng != null) queryParams.Add("lng", ApiClient.ParameterToString(lng)); // query parameter
 if (distance != null) queryParams.Add("distance", ApiClient.ParameterToString(distance)); // query parameter
 if (budget != null) queryParams.Add("budget", ApiClient.ParameterToString(budget)); // query parameter
 if (cuisine != null) queryParams.Add("cuisine", ApiClient.ParameterToString(cuisine)); // query parameter
 if (minRating != null) queryParams.Add("min-rating", ApiClient.ParameterToString(minRating)); // query parameter
 if (isOpen != null) queryParams.Add("is-open", ApiClient.ParameterToString(isOpen)); // query parameter
 if (sort != null) queryParams.Add("sort", ApiClient.ParameterToString(sort)); // query parameter
 if (page != null) queryParams.Add("page", ApiClient.ParameterToString(page)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRestaurants: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRestaurants: " + response.ErrorMessage, response.ErrorMessage);

            return (SearchRestaurants200Response) ApiClient.Deserialize(response.Content, typeof(SearchRestaurants200Response), response.Headers);
        }

    }
}
