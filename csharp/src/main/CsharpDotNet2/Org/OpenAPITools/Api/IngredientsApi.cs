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
    public interface IIngredientsApi
    {
        /// <summary>
        /// Autocomplete Ingredient Search Autocomplete the entry of an ingredient.
        /// </summary>
        /// <param name="query">The (natural language) search query.</param>
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param>
        /// <param name="metaInformation">Whether to return more meta information about the ingredients.</param>
        /// <param name="intolerances">A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.</param>
        /// <param name="language">The language of the input. Either &#39;en&#39; or &#39;de&#39;.</param>
        /// <returns>List&lt;AutocompleteIngredientSearch200ResponseInner&gt;</returns>
        List<AutocompleteIngredientSearch200ResponseInner> AutocompleteIngredientSearch (string query, int? number, bool? metaInformation, string intolerances, string language);
        /// <summary>
        /// Compute Ingredient Amount Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?
        /// </summary>
        /// <param name="id">The id of the ingredient you want the amount for.</param>
        /// <param name="nutrient">The target nutrient. See a list of supported nutrients.</param>
        /// <param name="target">The target number of the given nutrient.</param>
        /// <param name="unit">The target unit.</param>
        /// <returns>ComputeIngredientAmount200Response</returns>
        ComputeIngredientAmount200Response ComputeIngredientAmount (decimal? id, string nutrient, decimal? target, string unit);
        /// <summary>
        /// Get Ingredient Information Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <param name="amount">The amount of this ingredient.</param>
        /// <param name="unit">The unit for the given amount.</param>
        /// <returns>GetIngredientInformation200Response</returns>
        GetIngredientInformation200Response GetIngredientInformation (int? id, decimal? amount, string unit);
        /// <summary>
        /// Get Ingredient Substitutes Search for substitutes for a given ingredient.
        /// </summary>
        /// <param name="ingredientName">The name of the ingredient you want to replace.</param>
        /// <returns>GetIngredientSubstitutes200Response</returns>
        GetIngredientSubstitutes200Response GetIngredientSubstitutes (string ingredientName);
        /// <summary>
        /// Get Ingredient Substitutes by ID Search for substitutes for a given ingredient.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <returns>GetIngredientSubstitutes200Response</returns>
        GetIngredientSubstitutes200Response GetIngredientSubstitutesByID (int? id);
        /// <summary>
        /// Ingredient Search Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
        /// </summary>
        /// <param name="query">The (natural language) search query.</param>
        /// <param name="addChildren">Whether to add children of found foods.</param>
        /// <param name="minProteinPercent">The minimum percentage of protein the food must have (between 0 and 100).</param>
        /// <param name="maxProteinPercent">The maximum percentage of protein the food can have (between 0 and 100).</param>
        /// <param name="minFatPercent">The minimum percentage of fat the food must have (between 0 and 100).</param>
        /// <param name="maxFatPercent">The maximum percentage of fat the food can have (between 0 and 100).</param>
        /// <param name="minCarbsPercent">The minimum percentage of carbs the food must have (between 0 and 100).</param>
        /// <param name="maxCarbsPercent">The maximum percentage of carbs the food can have (between 0 and 100).</param>
        /// <param name="metaInformation">Whether to return more meta information about the ingredients.</param>
        /// <param name="intolerances">A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.</param>
        /// <param name="sort">The strategy to sort recipes by. See a full list of supported sorting options.</param>
        /// <param name="sortDirection">The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending).</param>
        /// <param name="offset">The number of results to skip (between 0 and 900).</param>
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param>
        /// <param name="language">The language of the input. Either &#39;en&#39; or &#39;de&#39;.</param>
        /// <returns>IngredientSearch200Response</returns>
        IngredientSearch200Response IngredientSearch (string query, bool? addChildren, decimal? minProteinPercent, decimal? maxProteinPercent, decimal? minFatPercent, decimal? maxFatPercent, decimal? minCarbsPercent, decimal? maxCarbsPercent, bool? metaInformation, string intolerances, string sort, string sortDirection, int? offset, int? number, string language);
        /// <summary>
        /// Ingredients by ID Image Visualize a recipe&#39;s ingredient list.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <param name="measure">Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.</param>
        /// <returns>Object</returns>
        Object IngredientsByIDImage (decimal? id, string measure);
        /// <summary>
        /// Map Ingredients to Grocery Products Map a set of ingredients to products you can buy in the grocery store.
        /// </summary>
        /// <param name="mapIngredientsToGroceryProductsRequest"></param>
        /// <returns>List&lt;MapIngredientsToGroceryProducts200ResponseInner&gt;</returns>
        List<MapIngredientsToGroceryProducts200ResponseInner> MapIngredientsToGroceryProducts (MapIngredientsToGroceryProductsRequest mapIngredientsToGroceryProductsRequest);
        /// <summary>
        /// Ingredients Widget Visualize ingredients of a recipe. You can play around with that endpoint!
        /// </summary>
        /// <param name="contentType">The content type.</param>
        /// <param name="language">The language of the input. Either &#39;en&#39; or &#39;de&#39;.</param>
        /// <param name="accept">Accept header.</param>
        /// <returns>string</returns>
        string VisualizeIngredients (string contentType, string language, string accept);
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class IngredientsApi : IIngredientsApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="IngredientsApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public IngredientsApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient;
            else
                this.ApiClient = apiClient;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="IngredientsApi"/> class.
        /// </summary>
        /// <returns></returns>
        public IngredientsApi(String basePath)
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
        /// Autocomplete Ingredient Search Autocomplete the entry of an ingredient.
        /// </summary>
        /// <param name="query">The (natural language) search query.</param>
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param>
        /// <param name="metaInformation">Whether to return more meta information about the ingredients.</param>
        /// <param name="intolerances">A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.</param>
        /// <param name="language">The language of the input. Either &#39;en&#39; or &#39;de&#39;.</param>
        /// <returns>List&lt;AutocompleteIngredientSearch200ResponseInner&gt;</returns>
        public List<AutocompleteIngredientSearch200ResponseInner> AutocompleteIngredientSearch (string query, int? number, bool? metaInformation, string intolerances, string language)
        {
            

            var path = "/food/ingredients/autocomplete";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
 if (metaInformation != null) queryParams.Add("metaInformation", ApiClient.ParameterToString(metaInformation)); // query parameter
 if (intolerances != null) queryParams.Add("intolerances", ApiClient.ParameterToString(intolerances)); // query parameter
 if (language != null) queryParams.Add("language", ApiClient.ParameterToString(language)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AutocompleteIngredientSearch: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AutocompleteIngredientSearch: " + response.ErrorMessage, response.ErrorMessage);

            return (List<AutocompleteIngredientSearch200ResponseInner>) ApiClient.Deserialize(response.Content, typeof(List<AutocompleteIngredientSearch200ResponseInner>), response.Headers);
        }

        /// <summary>
        /// Compute Ingredient Amount Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?
        /// </summary>
        /// <param name="id">The id of the ingredient you want the amount for.</param>
        /// <param name="nutrient">The target nutrient. See a list of supported nutrients.</param>
        /// <param name="target">The target number of the given nutrient.</param>
        /// <param name="unit">The target unit.</param>
        /// <returns>ComputeIngredientAmount200Response</returns>
        public ComputeIngredientAmount200Response ComputeIngredientAmount (decimal? id, string nutrient, decimal? target, string unit)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling ComputeIngredientAmount");
            
            // verify the required parameter 'nutrient' is set
            if (nutrient == null) throw new ApiException(400, "Missing required parameter 'nutrient' when calling ComputeIngredientAmount");
            
            // verify the required parameter 'target' is set
            if (target == null) throw new ApiException(400, "Missing required parameter 'target' when calling ComputeIngredientAmount");
            

            var path = "/food/ingredients/{id}/amount";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (nutrient != null) queryParams.Add("nutrient", ApiClient.ParameterToString(nutrient)); // query parameter
 if (target != null) queryParams.Add("target", ApiClient.ParameterToString(target)); // query parameter
 if (unit != null) queryParams.Add("unit", ApiClient.ParameterToString(unit)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ComputeIngredientAmount: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ComputeIngredientAmount: " + response.ErrorMessage, response.ErrorMessage);

            return (ComputeIngredientAmount200Response) ApiClient.Deserialize(response.Content, typeof(ComputeIngredientAmount200Response), response.Headers);
        }

        /// <summary>
        /// Get Ingredient Information Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <param name="amount">The amount of this ingredient.</param>
        /// <param name="unit">The unit for the given amount.</param>
        /// <returns>GetIngredientInformation200Response</returns>
        public GetIngredientInformation200Response GetIngredientInformation (int? id, decimal? amount, string unit)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetIngredientInformation");
            

            var path = "/food/ingredients/{id}/information";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (amount != null) queryParams.Add("amount", ApiClient.ParameterToString(amount)); // query parameter
 if (unit != null) queryParams.Add("unit", ApiClient.ParameterToString(unit)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetIngredientInformation: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetIngredientInformation: " + response.ErrorMessage, response.ErrorMessage);

            return (GetIngredientInformation200Response) ApiClient.Deserialize(response.Content, typeof(GetIngredientInformation200Response), response.Headers);
        }

        /// <summary>
        /// Get Ingredient Substitutes Search for substitutes for a given ingredient.
        /// </summary>
        /// <param name="ingredientName">The name of the ingredient you want to replace.</param>
        /// <returns>GetIngredientSubstitutes200Response</returns>
        public GetIngredientSubstitutes200Response GetIngredientSubstitutes (string ingredientName)
        {
            
            // verify the required parameter 'ingredientName' is set
            if (ingredientName == null) throw new ApiException(400, "Missing required parameter 'ingredientName' when calling GetIngredientSubstitutes");
            

            var path = "/food/ingredients/substitutes";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (ingredientName != null) queryParams.Add("ingredientName", ApiClient.ParameterToString(ingredientName)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetIngredientSubstitutes: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetIngredientSubstitutes: " + response.ErrorMessage, response.ErrorMessage);

            return (GetIngredientSubstitutes200Response) ApiClient.Deserialize(response.Content, typeof(GetIngredientSubstitutes200Response), response.Headers);
        }

        /// <summary>
        /// Get Ingredient Substitutes by ID Search for substitutes for a given ingredient.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <returns>GetIngredientSubstitutes200Response</returns>
        public GetIngredientSubstitutes200Response GetIngredientSubstitutesByID (int? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetIngredientSubstitutesByID");
            

            var path = "/food/ingredients/{id}/substitutes";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetIngredientSubstitutesByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetIngredientSubstitutesByID: " + response.ErrorMessage, response.ErrorMessage);

            return (GetIngredientSubstitutes200Response) ApiClient.Deserialize(response.Content, typeof(GetIngredientSubstitutes200Response), response.Headers);
        }

        /// <summary>
        /// Ingredient Search Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
        /// </summary>
        /// <param name="query">The (natural language) search query.</param>
        /// <param name="addChildren">Whether to add children of found foods.</param>
        /// <param name="minProteinPercent">The minimum percentage of protein the food must have (between 0 and 100).</param>
        /// <param name="maxProteinPercent">The maximum percentage of protein the food can have (between 0 and 100).</param>
        /// <param name="minFatPercent">The minimum percentage of fat the food must have (between 0 and 100).</param>
        /// <param name="maxFatPercent">The maximum percentage of fat the food can have (between 0 and 100).</param>
        /// <param name="minCarbsPercent">The minimum percentage of carbs the food must have (between 0 and 100).</param>
        /// <param name="maxCarbsPercent">The maximum percentage of carbs the food can have (between 0 and 100).</param>
        /// <param name="metaInformation">Whether to return more meta information about the ingredients.</param>
        /// <param name="intolerances">A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.</param>
        /// <param name="sort">The strategy to sort recipes by. See a full list of supported sorting options.</param>
        /// <param name="sortDirection">The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending).</param>
        /// <param name="offset">The number of results to skip (between 0 and 900).</param>
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param>
        /// <param name="language">The language of the input. Either &#39;en&#39; or &#39;de&#39;.</param>
        /// <returns>IngredientSearch200Response</returns>
        public IngredientSearch200Response IngredientSearch (string query, bool? addChildren, decimal? minProteinPercent, decimal? maxProteinPercent, decimal? minFatPercent, decimal? maxFatPercent, decimal? minCarbsPercent, decimal? maxCarbsPercent, bool? metaInformation, string intolerances, string sort, string sortDirection, int? offset, int? number, string language)
        {
            

            var path = "/food/ingredients/search";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (addChildren != null) queryParams.Add("addChildren", ApiClient.ParameterToString(addChildren)); // query parameter
 if (minProteinPercent != null) queryParams.Add("minProteinPercent", ApiClient.ParameterToString(minProteinPercent)); // query parameter
 if (maxProteinPercent != null) queryParams.Add("maxProteinPercent", ApiClient.ParameterToString(maxProteinPercent)); // query parameter
 if (minFatPercent != null) queryParams.Add("minFatPercent", ApiClient.ParameterToString(minFatPercent)); // query parameter
 if (maxFatPercent != null) queryParams.Add("maxFatPercent", ApiClient.ParameterToString(maxFatPercent)); // query parameter
 if (minCarbsPercent != null) queryParams.Add("minCarbsPercent", ApiClient.ParameterToString(minCarbsPercent)); // query parameter
 if (maxCarbsPercent != null) queryParams.Add("maxCarbsPercent", ApiClient.ParameterToString(maxCarbsPercent)); // query parameter
 if (metaInformation != null) queryParams.Add("metaInformation", ApiClient.ParameterToString(metaInformation)); // query parameter
 if (intolerances != null) queryParams.Add("intolerances", ApiClient.ParameterToString(intolerances)); // query parameter
 if (sort != null) queryParams.Add("sort", ApiClient.ParameterToString(sort)); // query parameter
 if (sortDirection != null) queryParams.Add("sortDirection", ApiClient.ParameterToString(sortDirection)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
 if (language != null) queryParams.Add("language", ApiClient.ParameterToString(language)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling IngredientSearch: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling IngredientSearch: " + response.ErrorMessage, response.ErrorMessage);

            return (IngredientSearch200Response) ApiClient.Deserialize(response.Content, typeof(IngredientSearch200Response), response.Headers);
        }

        /// <summary>
        /// Ingredients by ID Image Visualize a recipe&#39;s ingredient list.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <param name="measure">Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.</param>
        /// <returns>Object</returns>
        public Object IngredientsByIDImage (decimal? id, string measure)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling IngredientsByIDImage");
            

            var path = "/recipes/{id}/ingredientWidget.png";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (measure != null) queryParams.Add("measure", ApiClient.ParameterToString(measure)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling IngredientsByIDImage: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling IngredientsByIDImage: " + response.ErrorMessage, response.ErrorMessage);

            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }

        /// <summary>
        /// Map Ingredients to Grocery Products Map a set of ingredients to products you can buy in the grocery store.
        /// </summary>
        /// <param name="mapIngredientsToGroceryProductsRequest"></param>
        /// <returns>List&lt;MapIngredientsToGroceryProducts200ResponseInner&gt;</returns>
        public List<MapIngredientsToGroceryProducts200ResponseInner> MapIngredientsToGroceryProducts (MapIngredientsToGroceryProductsRequest mapIngredientsToGroceryProductsRequest)
        {
            
            // verify the required parameter 'mapIngredientsToGroceryProductsRequest' is set
            if (mapIngredientsToGroceryProductsRequest == null) throw new ApiException(400, "Missing required parameter 'mapIngredientsToGroceryProductsRequest' when calling MapIngredientsToGroceryProducts");
            

            var path = "/food/ingredients/map";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                postBody = ApiClient.Serialize(mapIngredientsToGroceryProductsRequest); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling MapIngredientsToGroceryProducts: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling MapIngredientsToGroceryProducts: " + response.ErrorMessage, response.ErrorMessage);

            return (List<MapIngredientsToGroceryProducts200ResponseInner>) ApiClient.Deserialize(response.Content, typeof(List<MapIngredientsToGroceryProducts200ResponseInner>), response.Headers);
        }

        /// <summary>
        /// Ingredients Widget Visualize ingredients of a recipe. You can play around with that endpoint!
        /// </summary>
        /// <param name="contentType">The content type.</param>
        /// <param name="language">The language of the input. Either &#39;en&#39; or &#39;de&#39;.</param>
        /// <param name="accept">Accept header.</param>
        /// <returns>string</returns>
        public string VisualizeIngredients (string contentType, string language, string accept)
        {
            

            var path = "/recipes/visualizeIngredients";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (language != null) queryParams.Add("language", ApiClient.ParameterToString(language)); // query parameter
             if (contentType != null) headerParams.Add("Content-Type", ApiClient.ParameterToString(contentType)); // header parameter
 if (accept != null) headerParams.Add("Accept", ApiClient.ParameterToString(accept)); // header parameter
                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeIngredients: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeIngredients: " + response.ErrorMessage, response.ErrorMessage);

            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }

    }
}
