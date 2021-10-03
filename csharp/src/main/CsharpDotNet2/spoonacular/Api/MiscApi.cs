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
    public interface IMiscApi
    {
        /// <summary>
        /// Detect Food in Text Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.
        /// </summary>
        /// <param name="contentType">The content type.</param>
        /// <returns>InlineResponse20051</returns>
        InlineResponse20051 DetectFoodInText (string contentType);
        /// <summary>
        /// Random Food Joke Get a random joke that is related to food. Caution: this is an endpoint for adults!
        /// </summary>
        /// <returns>InlineResponse20055</returns>
        InlineResponse20055 GetARandomFoodJoke ();
        /// <summary>
        /// Conversation Suggests This endpoint returns suggestions for things the user can say or ask the chatbot.
        /// </summary>
        /// <param name="query">A (partial) query from the user. The endpoint will return if it matches topics it can talk about.</param>
        /// <param name="number">The number of suggestions to return (between 1 and 25).</param>
        /// <returns>InlineResponse20057</returns>
        InlineResponse20057 GetConversationSuggests (string query, decimal? number);
        /// <summary>
        /// Random Food Trivia Returns random food trivia.
        /// </summary>
        /// <returns>InlineResponse20055</returns>
        InlineResponse20055 GetRandomFoodTrivia ();
        /// <summary>
        /// Image Analysis by URL Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.
        /// </summary>
        /// <param name="imageUrl">The URL of the image to be analyzed.</param>
        /// <returns>InlineResponse20049</returns>
        InlineResponse20049 ImageAnalysisByURL (string imageUrl);
        /// <summary>
        /// Image Classification by URL Classify a food image.
        /// </summary>
        /// <param name="imageUrl">The URL of the image to be classified.</param>
        /// <returns>InlineResponse20048</returns>
        InlineResponse20048 ImageClassificationByURL (string imageUrl);
        /// <summary>
        /// Search All Food Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.
        /// </summary>
        /// <param name="query">The search query.</param>
        /// <param name="offset">The number of results to skip (between 0 and 900).</param>
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param>
        /// <returns>InlineResponse20053</returns>
        InlineResponse20053 SearchAllFood (string query, int? offset, int? number);
        /// <summary>
        /// Search Custom Foods Search custom foods in a user&#39;s account.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <param name="query">The (natural language) search query.</param>
        /// <param name="offset">The number of results to skip (between 0 and 900).</param>
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param>
        /// <returns>InlineResponse20029</returns>
        InlineResponse20029 SearchCustomFoods (string username, string hash, string query, int? offset, int? number);
        /// <summary>
        /// Search Food Videos Find recipe and other food related videos.
        /// </summary>
        /// <param name="query">The (natural language) search query.</param>
        /// <param name="type">The type of the recipes. See a full list of supported meal types.</param>
        /// <param name="cuisine">The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.</param>
        /// <param name="diet">The diet for which the recipes must be suitable. See a full list of supported diets.</param>
        /// <param name="includeIngredients">A comma-separated list of ingredients that the recipes should contain.</param>
        /// <param name="excludeIngredients">A comma-separated list of ingredients or ingredient types that the recipes must not contain.</param>
        /// <param name="minLength">Minimum video length in seconds.</param>
        /// <param name="maxLength">Maximum video length in seconds.</param>
        /// <param name="offset">The number of results to skip (between 0 and 900).</param>
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param>
        /// <returns>InlineResponse20054</returns>
        InlineResponse20054 SearchFoodVideos (string query, string type, string cuisine, string diet, string includeIngredients, string excludeIngredients, decimal? minLength, decimal? maxLength, int? offset, int? number);
        /// <summary>
        /// Search Site Content Search spoonacular&#39;s site content. You&#39;ll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.
        /// </summary>
        /// <param name="query">The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content.</param>
        /// <returns>InlineResponse20052</returns>
        InlineResponse20052 SearchSiteContent (string query);
        /// <summary>
        /// Talk to Chatbot This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \&quot;Get Conversation Suggests\&quot; endpoint to show your user what he or she can say.
        /// </summary>
        /// <param name="text">The request / question / answer from the user to the chatbot.</param>
        /// <param name="contextId">An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.</param>
        /// <returns>InlineResponse20056</returns>
        InlineResponse20056 TalkToChatbot (string text, string contextId);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class MiscApi : IMiscApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="MiscApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public MiscApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="MiscApi"/> class.
        /// </summary>
        /// <returns></returns>
        public MiscApi(String basePath)
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
        /// Detect Food in Text Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.
        /// </summary>
        /// <param name="contentType">The content type.</param> 
        /// <returns>InlineResponse20051</returns>            
        public InlineResponse20051 DetectFoodInText (string contentType)
        {
            
    
            var path = "/food/detect";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (contentType != null) headerParams.Add("Content-Type", ApiClient.ParameterToString(contentType)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DetectFoodInText: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DetectFoodInText: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20051) ApiClient.Deserialize(response.Content, typeof(InlineResponse20051), response.Headers);
        }
    
        /// <summary>
        /// Random Food Joke Get a random joke that is related to food. Caution: this is an endpoint for adults!
        /// </summary>
        /// <returns>InlineResponse20055</returns>            
        public InlineResponse20055 GetARandomFoodJoke ()
        {
            
    
            var path = "/food/jokes/random";
            path = path.Replace("{format}", "json");
                
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetARandomFoodJoke: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetARandomFoodJoke: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20055) ApiClient.Deserialize(response.Content, typeof(InlineResponse20055), response.Headers);
        }
    
        /// <summary>
        /// Conversation Suggests This endpoint returns suggestions for things the user can say or ask the chatbot.
        /// </summary>
        /// <param name="query">A (partial) query from the user. The endpoint will return if it matches topics it can talk about.</param> 
        /// <param name="number">The number of suggestions to return (between 1 and 25).</param> 
        /// <returns>InlineResponse20057</returns>            
        public InlineResponse20057 GetConversationSuggests (string query, decimal? number)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling GetConversationSuggests");
            
    
            var path = "/food/converse/suggest";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetConversationSuggests: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetConversationSuggests: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20057) ApiClient.Deserialize(response.Content, typeof(InlineResponse20057), response.Headers);
        }
    
        /// <summary>
        /// Random Food Trivia Returns random food trivia.
        /// </summary>
        /// <returns>InlineResponse20055</returns>            
        public InlineResponse20055 GetRandomFoodTrivia ()
        {
            
    
            var path = "/food/trivia/random";
            path = path.Replace("{format}", "json");
                
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetRandomFoodTrivia: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRandomFoodTrivia: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20055) ApiClient.Deserialize(response.Content, typeof(InlineResponse20055), response.Headers);
        }
    
        /// <summary>
        /// Image Analysis by URL Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.
        /// </summary>
        /// <param name="imageUrl">The URL of the image to be analyzed.</param> 
        /// <returns>InlineResponse20049</returns>            
        public InlineResponse20049 ImageAnalysisByURL (string imageUrl)
        {
            
            // verify the required parameter 'imageUrl' is set
            if (imageUrl == null) throw new ApiException(400, "Missing required parameter 'imageUrl' when calling ImageAnalysisByURL");
            
    
            var path = "/food/images/analyze";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (imageUrl != null) queryParams.Add("imageUrl", ApiClient.ParameterToString(imageUrl)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ImageAnalysisByURL: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ImageAnalysisByURL: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20049) ApiClient.Deserialize(response.Content, typeof(InlineResponse20049), response.Headers);
        }
    
        /// <summary>
        /// Image Classification by URL Classify a food image.
        /// </summary>
        /// <param name="imageUrl">The URL of the image to be classified.</param> 
        /// <returns>InlineResponse20048</returns>            
        public InlineResponse20048 ImageClassificationByURL (string imageUrl)
        {
            
            // verify the required parameter 'imageUrl' is set
            if (imageUrl == null) throw new ApiException(400, "Missing required parameter 'imageUrl' when calling ImageClassificationByURL");
            
    
            var path = "/food/images/classify";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (imageUrl != null) queryParams.Add("imageUrl", ApiClient.ParameterToString(imageUrl)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ImageClassificationByURL: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ImageClassificationByURL: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20048) ApiClient.Deserialize(response.Content, typeof(InlineResponse20048), response.Headers);
        }
    
        /// <summary>
        /// Search All Food Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.
        /// </summary>
        /// <param name="query">The search query.</param> 
        /// <param name="offset">The number of results to skip (between 0 and 900).</param> 
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param> 
        /// <returns>InlineResponse20053</returns>            
        public InlineResponse20053 SearchAllFood (string query, int? offset, int? number)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling SearchAllFood");
            
    
            var path = "/food/search";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchAllFood: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchAllFood: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20053) ApiClient.Deserialize(response.Content, typeof(InlineResponse20053), response.Headers);
        }
    
        /// <summary>
        /// Search Custom Foods Search custom foods in a user&#39;s account.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <param name="query">The (natural language) search query.</param> 
        /// <param name="offset">The number of results to skip (between 0 and 900).</param> 
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param> 
        /// <returns>InlineResponse20029</returns>            
        public InlineResponse20029 SearchCustomFoods (string username, string hash, string query, int? offset, int? number)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling SearchCustomFoods");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling SearchCustomFoods");
            
    
            var path = "/food/customFoods/search";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (username != null) queryParams.Add("username", ApiClient.ParameterToString(username)); // query parameter
 if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchCustomFoods: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchCustomFoods: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20029) ApiClient.Deserialize(response.Content, typeof(InlineResponse20029), response.Headers);
        }
    
        /// <summary>
        /// Search Food Videos Find recipe and other food related videos.
        /// </summary>
        /// <param name="query">The (natural language) search query.</param> 
        /// <param name="type">The type of the recipes. See a full list of supported meal types.</param> 
        /// <param name="cuisine">The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.</param> 
        /// <param name="diet">The diet for which the recipes must be suitable. See a full list of supported diets.</param> 
        /// <param name="includeIngredients">A comma-separated list of ingredients that the recipes should contain.</param> 
        /// <param name="excludeIngredients">A comma-separated list of ingredients or ingredient types that the recipes must not contain.</param> 
        /// <param name="minLength">Minimum video length in seconds.</param> 
        /// <param name="maxLength">Maximum video length in seconds.</param> 
        /// <param name="offset">The number of results to skip (between 0 and 900).</param> 
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param> 
        /// <returns>InlineResponse20054</returns>            
        public InlineResponse20054 SearchFoodVideos (string query, string type, string cuisine, string diet, string includeIngredients, string excludeIngredients, decimal? minLength, decimal? maxLength, int? offset, int? number)
        {
            
    
            var path = "/food/videos/search";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (type != null) queryParams.Add("type", ApiClient.ParameterToString(type)); // query parameter
 if (cuisine != null) queryParams.Add("cuisine", ApiClient.ParameterToString(cuisine)); // query parameter
 if (diet != null) queryParams.Add("diet", ApiClient.ParameterToString(diet)); // query parameter
 if (includeIngredients != null) queryParams.Add("includeIngredients", ApiClient.ParameterToString(includeIngredients)); // query parameter
 if (excludeIngredients != null) queryParams.Add("excludeIngredients", ApiClient.ParameterToString(excludeIngredients)); // query parameter
 if (minLength != null) queryParams.Add("minLength", ApiClient.ParameterToString(minLength)); // query parameter
 if (maxLength != null) queryParams.Add("maxLength", ApiClient.ParameterToString(maxLength)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchFoodVideos: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchFoodVideos: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20054) ApiClient.Deserialize(response.Content, typeof(InlineResponse20054), response.Headers);
        }
    
        /// <summary>
        /// Search Site Content Search spoonacular&#39;s site content. You&#39;ll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.
        /// </summary>
        /// <param name="query">The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content.</param> 
        /// <returns>InlineResponse20052</returns>            
        public InlineResponse20052 SearchSiteContent (string query)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling SearchSiteContent");
            
    
            var path = "/food/site/search";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchSiteContent: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchSiteContent: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20052) ApiClient.Deserialize(response.Content, typeof(InlineResponse20052), response.Headers);
        }
    
        /// <summary>
        /// Talk to Chatbot This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \&quot;Get Conversation Suggests\&quot; endpoint to show your user what he or she can say.
        /// </summary>
        /// <param name="text">The request / question / answer from the user to the chatbot.</param> 
        /// <param name="contextId">An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.</param> 
        /// <returns>InlineResponse20056</returns>            
        public InlineResponse20056 TalkToChatbot (string text, string contextId)
        {
            
            // verify the required parameter 'text' is set
            if (text == null) throw new ApiException(400, "Missing required parameter 'text' when calling TalkToChatbot");
            
    
            var path = "/food/converse";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (text != null) queryParams.Add("text", ApiClient.ParameterToString(text)); // query parameter
 if (contextId != null) queryParams.Add("contextId", ApiClient.ParameterToString(contextId)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling TalkToChatbot: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling TalkToChatbot: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20056) ApiClient.Deserialize(response.Content, typeof(InlineResponse20056), response.Headers);
        }
    
    }
}
