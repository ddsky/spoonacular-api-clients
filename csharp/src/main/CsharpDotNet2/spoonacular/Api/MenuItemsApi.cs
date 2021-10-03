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
    public interface IMenuItemsApi
    {
        /// <summary>
        /// Autocomplete Menu Item Search Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
        /// </summary>
        /// <param name="query">The (partial) search query.</param>
        /// <param name="number">The number of results to return (between 1 and 25).</param>
        /// <returns>InlineResponse20032</returns>
        InlineResponse20032 AutocompleteMenuItemSearch (string query, decimal? number);
        /// <summary>
        /// Get Menu Item Information Use a menu item id to get all available information about a menu item, such as nutrition.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <returns>InlineResponse20036</returns>
        InlineResponse20036 GetMenuItemInformation (int? id);
        /// <summary>
        /// Menu Item Nutrition by ID Image Visualize a menu item&#39;s nutritional information as HTML including CSS.
        /// </summary>
        /// <param name="id">The menu item id.</param>
        /// <returns>Object</returns>
        Object MenuItemNutritionByIDImage (decimal? id);
        /// <summary>
        /// Menu Item Nutrition Label Image Visualize a menu item&#39;s nutritional label information as an image.
        /// </summary>
        /// <param name="id">The menu item id.</param>
        /// <param name="showOptionalNutrients">Whether to show optional nutrients.</param>
        /// <param name="showZeroValues">Whether to show zero values.</param>
        /// <param name="showIngredients">Whether to show a list of ingredients.</param>
        /// <returns>Object</returns>
        Object MenuItemNutritionLabelImage (decimal? id, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients);
        /// <summary>
        /// Menu Item Nutrition Label Widget Visualize a menu item&#39;s nutritional label information as HTML including CSS.
        /// </summary>
        /// <param name="id">The menu item id.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <param name="showOptionalNutrients">Whether to show optional nutrients.</param>
        /// <param name="showZeroValues">Whether to show zero values.</param>
        /// <param name="showIngredients">Whether to show a list of ingredients.</param>
        /// <returns>string</returns>
        string MenuItemNutritionLabelWidget (decimal? id, bool? defaultCss, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients);
        /// <summary>
        /// Search Menu Items Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald&#39;s Big Mac or Starbucks Mocha.
        /// </summary>
        /// <param name="query">The (natural language) search query.</param>
        /// <param name="minCalories">The minimum amount of calories the menu item must have.</param>
        /// <param name="maxCalories">The maximum amount of calories the menu item can have.</param>
        /// <param name="minCarbs">The minimum amount of carbohydrates in grams the menu item must have.</param>
        /// <param name="maxCarbs">The maximum amount of carbohydrates in grams the menu item can have.</param>
        /// <param name="minProtein">The minimum amount of protein in grams the menu item must have.</param>
        /// <param name="maxProtein">The maximum amount of protein in grams the menu item can have.</param>
        /// <param name="minFat">The minimum amount of fat in grams the menu item must have.</param>
        /// <param name="maxFat">The maximum amount of fat in grams the menu item can have.</param>
        /// <param name="addMenuItemInformation">If set to true, you get more information about the menu items returned.</param>
        /// <param name="offset">The number of results to skip (between 0 and 900).</param>
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param>
        /// <returns>InlineResponse20035</returns>
        InlineResponse20035 SearchMenuItems (string query, decimal? minCalories, decimal? maxCalories, decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minFat, decimal? maxFat, bool? addMenuItemInformation, int? offset, int? number);
        /// <summary>
        /// Menu Item Nutrition by ID Widget Visualize a menu item&#39;s nutritional information as HTML including CSS.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <param name="accept">Accept header.</param>
        /// <returns>string</returns>
        string VisualizeMenuItemNutritionByID (int? id, bool? defaultCss, string accept);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class MenuItemsApi : IMenuItemsApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="MenuItemsApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public MenuItemsApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="MenuItemsApi"/> class.
        /// </summary>
        /// <returns></returns>
        public MenuItemsApi(String basePath)
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
        /// Autocomplete Menu Item Search Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
        /// </summary>
        /// <param name="query">The (partial) search query.</param> 
        /// <param name="number">The number of results to return (between 1 and 25).</param> 
        /// <returns>InlineResponse20032</returns>            
        public InlineResponse20032 AutocompleteMenuItemSearch (string query, decimal? number)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling AutocompleteMenuItemSearch");
            
    
            var path = "/food/menuItems/suggest";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AutocompleteMenuItemSearch: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AutocompleteMenuItemSearch: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20032) ApiClient.Deserialize(response.Content, typeof(InlineResponse20032), response.Headers);
        }
    
        /// <summary>
        /// Get Menu Item Information Use a menu item id to get all available information about a menu item, such as nutrition.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <returns>InlineResponse20036</returns>            
        public InlineResponse20036 GetMenuItemInformation (int? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetMenuItemInformation");
            
    
            var path = "/food/menuItems/{id}";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetMenuItemInformation: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMenuItemInformation: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20036) ApiClient.Deserialize(response.Content, typeof(InlineResponse20036), response.Headers);
        }
    
        /// <summary>
        /// Menu Item Nutrition by ID Image Visualize a menu item&#39;s nutritional information as HTML including CSS.
        /// </summary>
        /// <param name="id">The menu item id.</param> 
        /// <returns>Object</returns>            
        public Object MenuItemNutritionByIDImage (decimal? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling MenuItemNutritionByIDImage");
            
    
            var path = "/food/menuItems/{id}/nutritionWidget.png";
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
                throw new ApiException ((int)response.StatusCode, "Error calling MenuItemNutritionByIDImage: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling MenuItemNutritionByIDImage: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Menu Item Nutrition Label Image Visualize a menu item&#39;s nutritional label information as an image.
        /// </summary>
        /// <param name="id">The menu item id.</param> 
        /// <param name="showOptionalNutrients">Whether to show optional nutrients.</param> 
        /// <param name="showZeroValues">Whether to show zero values.</param> 
        /// <param name="showIngredients">Whether to show a list of ingredients.</param> 
        /// <returns>Object</returns>            
        public Object MenuItemNutritionLabelImage (decimal? id, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling MenuItemNutritionLabelImage");
            
    
            var path = "/food/menuItems/{id}/nutritionLabel.png";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (showOptionalNutrients != null) queryParams.Add("showOptionalNutrients", ApiClient.ParameterToString(showOptionalNutrients)); // query parameter
 if (showZeroValues != null) queryParams.Add("showZeroValues", ApiClient.ParameterToString(showZeroValues)); // query parameter
 if (showIngredients != null) queryParams.Add("showIngredients", ApiClient.ParameterToString(showIngredients)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling MenuItemNutritionLabelImage: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling MenuItemNutritionLabelImage: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Menu Item Nutrition Label Widget Visualize a menu item&#39;s nutritional label information as HTML including CSS.
        /// </summary>
        /// <param name="id">The menu item id.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <param name="showOptionalNutrients">Whether to show optional nutrients.</param> 
        /// <param name="showZeroValues">Whether to show zero values.</param> 
        /// <param name="showIngredients">Whether to show a list of ingredients.</param> 
        /// <returns>string</returns>            
        public string MenuItemNutritionLabelWidget (decimal? id, bool? defaultCss, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling MenuItemNutritionLabelWidget");
            
    
            var path = "/food/menuItems/{id}/nutritionLabel";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (defaultCss != null) queryParams.Add("defaultCss", ApiClient.ParameterToString(defaultCss)); // query parameter
 if (showOptionalNutrients != null) queryParams.Add("showOptionalNutrients", ApiClient.ParameterToString(showOptionalNutrients)); // query parameter
 if (showZeroValues != null) queryParams.Add("showZeroValues", ApiClient.ParameterToString(showZeroValues)); // query parameter
 if (showIngredients != null) queryParams.Add("showIngredients", ApiClient.ParameterToString(showIngredients)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling MenuItemNutritionLabelWidget: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling MenuItemNutritionLabelWidget: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Search Menu Items Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald&#39;s Big Mac or Starbucks Mocha.
        /// </summary>
        /// <param name="query">The (natural language) search query.</param> 
        /// <param name="minCalories">The minimum amount of calories the menu item must have.</param> 
        /// <param name="maxCalories">The maximum amount of calories the menu item can have.</param> 
        /// <param name="minCarbs">The minimum amount of carbohydrates in grams the menu item must have.</param> 
        /// <param name="maxCarbs">The maximum amount of carbohydrates in grams the menu item can have.</param> 
        /// <param name="minProtein">The minimum amount of protein in grams the menu item must have.</param> 
        /// <param name="maxProtein">The maximum amount of protein in grams the menu item can have.</param> 
        /// <param name="minFat">The minimum amount of fat in grams the menu item must have.</param> 
        /// <param name="maxFat">The maximum amount of fat in grams the menu item can have.</param> 
        /// <param name="addMenuItemInformation">If set to true, you get more information about the menu items returned.</param> 
        /// <param name="offset">The number of results to skip (between 0 and 900).</param> 
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param> 
        /// <returns>InlineResponse20035</returns>            
        public InlineResponse20035 SearchMenuItems (string query, decimal? minCalories, decimal? maxCalories, decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minFat, decimal? maxFat, bool? addMenuItemInformation, int? offset, int? number)
        {
            
    
            var path = "/food/menuItems/search";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (minCalories != null) queryParams.Add("minCalories", ApiClient.ParameterToString(minCalories)); // query parameter
 if (maxCalories != null) queryParams.Add("maxCalories", ApiClient.ParameterToString(maxCalories)); // query parameter
 if (minCarbs != null) queryParams.Add("minCarbs", ApiClient.ParameterToString(minCarbs)); // query parameter
 if (maxCarbs != null) queryParams.Add("maxCarbs", ApiClient.ParameterToString(maxCarbs)); // query parameter
 if (minProtein != null) queryParams.Add("minProtein", ApiClient.ParameterToString(minProtein)); // query parameter
 if (maxProtein != null) queryParams.Add("maxProtein", ApiClient.ParameterToString(maxProtein)); // query parameter
 if (minFat != null) queryParams.Add("minFat", ApiClient.ParameterToString(minFat)); // query parameter
 if (maxFat != null) queryParams.Add("maxFat", ApiClient.ParameterToString(maxFat)); // query parameter
 if (addMenuItemInformation != null) queryParams.Add("addMenuItemInformation", ApiClient.ParameterToString(addMenuItemInformation)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchMenuItems: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchMenuItems: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20035) ApiClient.Deserialize(response.Content, typeof(InlineResponse20035), response.Headers);
        }
    
        /// <summary>
        /// Menu Item Nutrition by ID Widget Visualize a menu item&#39;s nutritional information as HTML including CSS.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <param name="accept">Accept header.</param> 
        /// <returns>string</returns>            
        public string VisualizeMenuItemNutritionByID (int? id, bool? defaultCss, string accept)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling VisualizeMenuItemNutritionByID");
            
    
            var path = "/food/menuItems/{id}/nutritionWidget";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (defaultCss != null) queryParams.Add("defaultCss", ApiClient.ParameterToString(defaultCss)); // query parameter
             if (accept != null) headerParams.Add("Accept", ApiClient.ParameterToString(accept)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeMenuItemNutritionByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeMenuItemNutritionByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
    }
}
