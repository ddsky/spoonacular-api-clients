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
    public interface IMealPlanningApi
    {
        /// <summary>
        /// Add Meal Plan Template Add a meal plan template for a user.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <param name="inlineObject6"></param>
        /// <returns>InlineResponse20040</returns>
        InlineResponse20040 AddMealPlanTemplate (string username, string hash, InlineObject6 inlineObject6);
        /// <summary>
        /// Add to Meal Plan Add an item to the user&#39;s meal plan.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <param name="inlineObject4"></param>
        /// <returns>Object</returns>
        Object AddToMealPlan (string username, string hash, InlineObject4 inlineObject4);
        /// <summary>
        /// Add to Shopping List Add an item to the current shopping list of a user.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <param name="inlineObject9"></param>
        /// <returns>InlineResponse20042</returns>
        InlineResponse20042 AddToShoppingList (string username, string hash, InlineObject9 inlineObject9);
        /// <summary>
        /// Clear Meal Plan Day Delete all planned items from the user&#39;s meal plan for a specific day.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="date">The date in the format yyyy-mm-dd.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <param name="inlineObject3"></param>
        /// <returns>Object</returns>
        Object ClearMealPlanDay (string username, string date, string hash, InlineObject3 inlineObject3);
        /// <summary>
        /// Connect User In order to call user-specific endpoints, you need to connect your app&#39;s users to spoonacular users.
        /// </summary>
        /// <param name="body"></param>
        /// <returns>InlineResponse20043</returns>
        InlineResponse20043 ConnectUser (Object body);
        /// <summary>
        /// Delete from Meal Plan Delete an item from the user&#39;s meal plan.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="id">The shopping list item id.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <param name="inlineObject5"></param>
        /// <returns>Object</returns>
        Object DeleteFromMealPlan (string username, decimal? id, string hash, InlineObject5 inlineObject5);
        /// <summary>
        /// Delete from Shopping List Delete an item from the current shopping list of the user.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="id">The item&#39;s id.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <param name="inlineObject10"></param>
        /// <returns>Object</returns>
        Object DeleteFromShoppingList (string username, int? id, string hash, InlineObject10 inlineObject10);
        /// <summary>
        /// Delete Meal Plan Template Delete a meal plan template for a user.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="id">The item&#39;s id.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <param name="inlineObject7"></param>
        /// <returns>Object</returns>
        Object DeleteMealPlanTemplate (string username, int? id, string hash, InlineObject7 inlineObject7);
        /// <summary>
        /// Generate Meal Plan Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
        /// </summary>
        /// <param name="timeFrame">Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;.</param>
        /// <param name="targetCalories">What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.</param>
        /// <param name="diet">Enter a diet that the meal plan has to adhere to. See a full list of supported diets.</param>
        /// <param name="exclude">A comma-separated list of allergens or ingredients that must be excluded.</param>
        /// <returns>InlineResponse20037</returns>
        InlineResponse20037 GenerateMealPlan (string timeFrame, decimal? targetCalories, string diet, string exclude);
        /// <summary>
        /// Generate Shopping List Generate the shopping list for a user from the meal planner in a given time frame.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="startDate">The start date in the format yyyy-mm-dd.</param>
        /// <param name="endDate">The end date in the format yyyy-mm-dd.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <param name="inlineObject8"></param>
        /// <returns>InlineResponse20042</returns>
        InlineResponse20042 GenerateShoppingList (string username, string startDate, string endDate, string hash, InlineObject8 inlineObject8);
        /// <summary>
        /// Get Meal Plan Template Get information about a meal plan template.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="id">The item&#39;s id.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <returns>InlineResponse20041</returns>
        InlineResponse20041 GetMealPlanTemplate (string username, int? id, string hash);
        /// <summary>
        /// Get Meal Plan Templates Get meal plan templates from user or public ones.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <returns>InlineResponse20039</returns>
        InlineResponse20039 GetMealPlanTemplates (string username, string hash);
        /// <summary>
        /// Get Meal Plan Week Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user&#39;s hash that can be found in his/her account.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="startDate">The start date of the meal planned week in the format yyyy-mm-dd.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <returns>InlineResponse20038</returns>
        InlineResponse20038 GetMealPlanWeek (string username, string startDate, string hash);
        /// <summary>
        /// Get Shopping List Get the current shopping list for the given user.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <returns>InlineResponse20042</returns>
        InlineResponse20042 GetShoppingList (string username, string hash);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class MealPlanningApi : IMealPlanningApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="MealPlanningApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public MealPlanningApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="MealPlanningApi"/> class.
        /// </summary>
        /// <returns></returns>
        public MealPlanningApi(String basePath)
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
        /// Add Meal Plan Template Add a meal plan template for a user.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <param name="inlineObject6"></param> 
        /// <returns>InlineResponse20040</returns>            
        public InlineResponse20040 AddMealPlanTemplate (string username, string hash, InlineObject6 inlineObject6)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling AddMealPlanTemplate");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling AddMealPlanTemplate");
            
            // verify the required parameter 'inlineObject6' is set
            if (inlineObject6 == null) throw new ApiException(400, "Missing required parameter 'inlineObject6' when calling AddMealPlanTemplate");
            
    
            var path = "/mealplanner/{username}/templates";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                    postBody = ApiClient.Serialize(inlineObject6); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AddMealPlanTemplate: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddMealPlanTemplate: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20040) ApiClient.Deserialize(response.Content, typeof(InlineResponse20040), response.Headers);
        }
    
        /// <summary>
        /// Add to Meal Plan Add an item to the user&#39;s meal plan.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <param name="inlineObject4"></param> 
        /// <returns>Object</returns>            
        public Object AddToMealPlan (string username, string hash, InlineObject4 inlineObject4)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling AddToMealPlan");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling AddToMealPlan");
            
            // verify the required parameter 'inlineObject4' is set
            if (inlineObject4 == null) throw new ApiException(400, "Missing required parameter 'inlineObject4' when calling AddToMealPlan");
            
    
            var path = "/mealplanner/{username}/items";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                    postBody = ApiClient.Serialize(inlineObject4); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AddToMealPlan: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddToMealPlan: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Add to Shopping List Add an item to the current shopping list of a user.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <param name="inlineObject9"></param> 
        /// <returns>InlineResponse20042</returns>            
        public InlineResponse20042 AddToShoppingList (string username, string hash, InlineObject9 inlineObject9)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling AddToShoppingList");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling AddToShoppingList");
            
            // verify the required parameter 'inlineObject9' is set
            if (inlineObject9 == null) throw new ApiException(400, "Missing required parameter 'inlineObject9' when calling AddToShoppingList");
            
    
            var path = "/mealplanner/{username}/shopping-list/items";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                    postBody = ApiClient.Serialize(inlineObject9); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AddToShoppingList: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddToShoppingList: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20042) ApiClient.Deserialize(response.Content, typeof(InlineResponse20042), response.Headers);
        }
    
        /// <summary>
        /// Clear Meal Plan Day Delete all planned items from the user&#39;s meal plan for a specific day.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="date">The date in the format yyyy-mm-dd.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <param name="inlineObject3"></param> 
        /// <returns>Object</returns>            
        public Object ClearMealPlanDay (string username, string date, string hash, InlineObject3 inlineObject3)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling ClearMealPlanDay");
            
            // verify the required parameter 'date' is set
            if (date == null) throw new ApiException(400, "Missing required parameter 'date' when calling ClearMealPlanDay");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling ClearMealPlanDay");
            
            // verify the required parameter 'inlineObject3' is set
            if (inlineObject3 == null) throw new ApiException(400, "Missing required parameter 'inlineObject3' when calling ClearMealPlanDay");
            
    
            var path = "/mealplanner/{username}/day/{date}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
path = path.Replace("{" + "date" + "}", ApiClient.ParameterToString(date));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                    postBody = ApiClient.Serialize(inlineObject3); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ClearMealPlanDay: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ClearMealPlanDay: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Connect User In order to call user-specific endpoints, you need to connect your app&#39;s users to spoonacular users.
        /// </summary>
        /// <param name="body"></param> 
        /// <returns>InlineResponse20043</returns>            
        public InlineResponse20043 ConnectUser (Object body)
        {
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling ConnectUser");
            
    
            var path = "/users/connect";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                postBody = ApiClient.Serialize(body); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ConnectUser: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ConnectUser: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20043) ApiClient.Deserialize(response.Content, typeof(InlineResponse20043), response.Headers);
        }
    
        /// <summary>
        /// Delete from Meal Plan Delete an item from the user&#39;s meal plan.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="id">The shopping list item id.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <param name="inlineObject5"></param> 
        /// <returns>Object</returns>            
        public Object DeleteFromMealPlan (string username, decimal? id, string hash, InlineObject5 inlineObject5)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling DeleteFromMealPlan");
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling DeleteFromMealPlan");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling DeleteFromMealPlan");
            
            // verify the required parameter 'inlineObject5' is set
            if (inlineObject5 == null) throw new ApiException(400, "Missing required parameter 'inlineObject5' when calling DeleteFromMealPlan");
            
    
            var path = "/mealplanner/{username}/items/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                    postBody = ApiClient.Serialize(inlineObject5); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteFromMealPlan: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteFromMealPlan: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Delete from Shopping List Delete an item from the current shopping list of the user.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="id">The item&#39;s id.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <param name="inlineObject10"></param> 
        /// <returns>Object</returns>            
        public Object DeleteFromShoppingList (string username, int? id, string hash, InlineObject10 inlineObject10)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling DeleteFromShoppingList");
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling DeleteFromShoppingList");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling DeleteFromShoppingList");
            
            // verify the required parameter 'inlineObject10' is set
            if (inlineObject10 == null) throw new ApiException(400, "Missing required parameter 'inlineObject10' when calling DeleteFromShoppingList");
            
    
            var path = "/mealplanner/{username}/shopping-list/items/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                    postBody = ApiClient.Serialize(inlineObject10); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteFromShoppingList: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteFromShoppingList: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Delete Meal Plan Template Delete a meal plan template for a user.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="id">The item&#39;s id.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <param name="inlineObject7"></param> 
        /// <returns>Object</returns>            
        public Object DeleteMealPlanTemplate (string username, int? id, string hash, InlineObject7 inlineObject7)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling DeleteMealPlanTemplate");
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling DeleteMealPlanTemplate");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling DeleteMealPlanTemplate");
            
            // verify the required parameter 'inlineObject7' is set
            if (inlineObject7 == null) throw new ApiException(400, "Missing required parameter 'inlineObject7' when calling DeleteMealPlanTemplate");
            
    
            var path = "/mealplanner/{username}/templates/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                    postBody = ApiClient.Serialize(inlineObject7); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteMealPlanTemplate: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteMealPlanTemplate: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Generate Meal Plan Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
        /// </summary>
        /// <param name="timeFrame">Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;.</param> 
        /// <param name="targetCalories">What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.</param> 
        /// <param name="diet">Enter a diet that the meal plan has to adhere to. See a full list of supported diets.</param> 
        /// <param name="exclude">A comma-separated list of allergens or ingredients that must be excluded.</param> 
        /// <returns>InlineResponse20037</returns>            
        public InlineResponse20037 GenerateMealPlan (string timeFrame, decimal? targetCalories, string diet, string exclude)
        {
            
    
            var path = "/mealplanner/generate";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (timeFrame != null) queryParams.Add("timeFrame", ApiClient.ParameterToString(timeFrame)); // query parameter
 if (targetCalories != null) queryParams.Add("targetCalories", ApiClient.ParameterToString(targetCalories)); // query parameter
 if (diet != null) queryParams.Add("diet", ApiClient.ParameterToString(diet)); // query parameter
 if (exclude != null) queryParams.Add("exclude", ApiClient.ParameterToString(exclude)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GenerateMealPlan: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GenerateMealPlan: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20037) ApiClient.Deserialize(response.Content, typeof(InlineResponse20037), response.Headers);
        }
    
        /// <summary>
        /// Generate Shopping List Generate the shopping list for a user from the meal planner in a given time frame.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="startDate">The start date in the format yyyy-mm-dd.</param> 
        /// <param name="endDate">The end date in the format yyyy-mm-dd.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <param name="inlineObject8"></param> 
        /// <returns>InlineResponse20042</returns>            
        public InlineResponse20042 GenerateShoppingList (string username, string startDate, string endDate, string hash, InlineObject8 inlineObject8)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling GenerateShoppingList");
            
            // verify the required parameter 'startDate' is set
            if (startDate == null) throw new ApiException(400, "Missing required parameter 'startDate' when calling GenerateShoppingList");
            
            // verify the required parameter 'endDate' is set
            if (endDate == null) throw new ApiException(400, "Missing required parameter 'endDate' when calling GenerateShoppingList");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling GenerateShoppingList");
            
            // verify the required parameter 'inlineObject8' is set
            if (inlineObject8 == null) throw new ApiException(400, "Missing required parameter 'inlineObject8' when calling GenerateShoppingList");
            
    
            var path = "/mealplanner/{username}/shopping-list/{start-date}/{end-date}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
path = path.Replace("{" + "start-date" + "}", ApiClient.ParameterToString(startDate));
path = path.Replace("{" + "end-date" + "}", ApiClient.ParameterToString(endDate));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                    postBody = ApiClient.Serialize(inlineObject8); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GenerateShoppingList: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GenerateShoppingList: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20042) ApiClient.Deserialize(response.Content, typeof(InlineResponse20042), response.Headers);
        }
    
        /// <summary>
        /// Get Meal Plan Template Get information about a meal plan template.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="id">The item&#39;s id.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <returns>InlineResponse20041</returns>            
        public InlineResponse20041 GetMealPlanTemplate (string username, int? id, string hash)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling GetMealPlanTemplate");
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetMealPlanTemplate");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling GetMealPlanTemplate");
            
    
            var path = "/mealplanner/{username}/templates/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMealPlanTemplate: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMealPlanTemplate: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20041) ApiClient.Deserialize(response.Content, typeof(InlineResponse20041), response.Headers);
        }
    
        /// <summary>
        /// Get Meal Plan Templates Get meal plan templates from user or public ones.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <returns>InlineResponse20039</returns>            
        public InlineResponse20039 GetMealPlanTemplates (string username, string hash)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling GetMealPlanTemplates");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling GetMealPlanTemplates");
            
    
            var path = "/mealplanner/{username}/templates";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMealPlanTemplates: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMealPlanTemplates: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20039) ApiClient.Deserialize(response.Content, typeof(InlineResponse20039), response.Headers);
        }
    
        /// <summary>
        /// Get Meal Plan Week Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user&#39;s hash that can be found in his/her account.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="startDate">The start date of the meal planned week in the format yyyy-mm-dd.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <returns>InlineResponse20038</returns>            
        public InlineResponse20038 GetMealPlanWeek (string username, string startDate, string hash)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling GetMealPlanWeek");
            
            // verify the required parameter 'startDate' is set
            if (startDate == null) throw new ApiException(400, "Missing required parameter 'startDate' when calling GetMealPlanWeek");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling GetMealPlanWeek");
            
    
            var path = "/mealplanner/{username}/week/{start-date}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
path = path.Replace("{" + "start-date" + "}", ApiClient.ParameterToString(startDate));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMealPlanWeek: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMealPlanWeek: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20038) ApiClient.Deserialize(response.Content, typeof(InlineResponse20038), response.Headers);
        }
    
        /// <summary>
        /// Get Shopping List Get the current shopping list for the given user.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <returns>InlineResponse20042</returns>            
        public InlineResponse20042 GetShoppingList (string username, string hash)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling GetShoppingList");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling GetShoppingList");
            
    
            var path = "/mealplanner/{username}/shopping-list";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetShoppingList: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetShoppingList: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20042) ApiClient.Deserialize(response.Content, typeof(InlineResponse20042), response.Headers);
        }
    
    }
}
