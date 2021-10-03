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
    public interface IWineApi
    {
        /// <summary>
        /// Dish Pairing for Wine Find a dish that goes well with a given wine.
        /// </summary>
        /// <param name="wine">The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.</param>
        /// <returns>InlineResponse20044</returns>
        InlineResponse20044 GetDishPairingForWine (string wine);
        /// <summary>
        /// Wine Description Get a simple description of a certain wine, e.g. \&quot;malbec\&quot;, \&quot;riesling\&quot;, or \&quot;merlot\&quot;.
        /// </summary>
        /// <param name="wine">The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.</param>
        /// <returns>InlineResponse20046</returns>
        InlineResponse20046 GetWineDescription (string wine);
        /// <summary>
        /// Wine Pairing Find a wine that goes well with a food. Food can be a dish name (\&quot;steak\&quot;), an ingredient name (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).
        /// </summary>
        /// <param name="food">The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).</param>
        /// <param name="maxPrice">The maximum price for the specific wine recommendation in USD.</param>
        /// <returns>InlineResponse20045</returns>
        InlineResponse20045 GetWinePairing (string food, decimal? maxPrice);
        /// <summary>
        /// Wine Recommendation Get a specific wine recommendation (concrete product) for a given wine type, e.g. \&quot;merlot\&quot;.
        /// </summary>
        /// <param name="wine">The type of wine to get a specific product recommendation for.</param>
        /// <param name="maxPrice">The maximum price for the specific wine recommendation in USD.</param>
        /// <param name="minRating">The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.</param>
        /// <param name="number">The number of wine recommendations expected (between 1 and 100).</param>
        /// <returns>InlineResponse20047</returns>
        InlineResponse20047 GetWineRecommendation (string wine, decimal? maxPrice, decimal? minRating, decimal? number);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class WineApi : IWineApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="WineApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public WineApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="WineApi"/> class.
        /// </summary>
        /// <returns></returns>
        public WineApi(String basePath)
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
        /// Dish Pairing for Wine Find a dish that goes well with a given wine.
        /// </summary>
        /// <param name="wine">The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.</param> 
        /// <returns>InlineResponse20044</returns>            
        public InlineResponse20044 GetDishPairingForWine (string wine)
        {
            
            // verify the required parameter 'wine' is set
            if (wine == null) throw new ApiException(400, "Missing required parameter 'wine' when calling GetDishPairingForWine");
            
    
            var path = "/food/wine/dishes";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (wine != null) queryParams.Add("wine", ApiClient.ParameterToString(wine)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetDishPairingForWine: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetDishPairingForWine: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20044) ApiClient.Deserialize(response.Content, typeof(InlineResponse20044), response.Headers);
        }
    
        /// <summary>
        /// Wine Description Get a simple description of a certain wine, e.g. \&quot;malbec\&quot;, \&quot;riesling\&quot;, or \&quot;merlot\&quot;.
        /// </summary>
        /// <param name="wine">The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.</param> 
        /// <returns>InlineResponse20046</returns>            
        public InlineResponse20046 GetWineDescription (string wine)
        {
            
            // verify the required parameter 'wine' is set
            if (wine == null) throw new ApiException(400, "Missing required parameter 'wine' when calling GetWineDescription");
            
    
            var path = "/food/wine/description";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (wine != null) queryParams.Add("wine", ApiClient.ParameterToString(wine)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWineDescription: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWineDescription: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20046) ApiClient.Deserialize(response.Content, typeof(InlineResponse20046), response.Headers);
        }
    
        /// <summary>
        /// Wine Pairing Find a wine that goes well with a food. Food can be a dish name (\&quot;steak\&quot;), an ingredient name (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).
        /// </summary>
        /// <param name="food">The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).</param> 
        /// <param name="maxPrice">The maximum price for the specific wine recommendation in USD.</param> 
        /// <returns>InlineResponse20045</returns>            
        public InlineResponse20045 GetWinePairing (string food, decimal? maxPrice)
        {
            
            // verify the required parameter 'food' is set
            if (food == null) throw new ApiException(400, "Missing required parameter 'food' when calling GetWinePairing");
            
    
            var path = "/food/wine/pairing";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (food != null) queryParams.Add("food", ApiClient.ParameterToString(food)); // query parameter
 if (maxPrice != null) queryParams.Add("maxPrice", ApiClient.ParameterToString(maxPrice)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWinePairing: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWinePairing: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20045) ApiClient.Deserialize(response.Content, typeof(InlineResponse20045), response.Headers);
        }
    
        /// <summary>
        /// Wine Recommendation Get a specific wine recommendation (concrete product) for a given wine type, e.g. \&quot;merlot\&quot;.
        /// </summary>
        /// <param name="wine">The type of wine to get a specific product recommendation for.</param> 
        /// <param name="maxPrice">The maximum price for the specific wine recommendation in USD.</param> 
        /// <param name="minRating">The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.</param> 
        /// <param name="number">The number of wine recommendations expected (between 1 and 100).</param> 
        /// <returns>InlineResponse20047</returns>            
        public InlineResponse20047 GetWineRecommendation (string wine, decimal? maxPrice, decimal? minRating, decimal? number)
        {
            
            // verify the required parameter 'wine' is set
            if (wine == null) throw new ApiException(400, "Missing required parameter 'wine' when calling GetWineRecommendation");
            
    
            var path = "/food/wine/recommendation";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (wine != null) queryParams.Add("wine", ApiClient.ParameterToString(wine)); // query parameter
 if (maxPrice != null) queryParams.Add("maxPrice", ApiClient.ParameterToString(maxPrice)); // query parameter
 if (minRating != null) queryParams.Add("minRating", ApiClient.ParameterToString(minRating)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWineRecommendation: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWineRecommendation: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20047) ApiClient.Deserialize(response.Content, typeof(InlineResponse20047), response.Headers);
        }
    
    }
}
