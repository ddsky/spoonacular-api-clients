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
    public interface IProductsApi
    {
        /// <summary>
        /// Autocomplete Product Search Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.
        /// </summary>
        /// <param name="query">The (partial) search query.</param>
        /// <param name="number">The number of results to return (between 1 and 25).</param>
        /// <returns>InlineResponse20032</returns>
        InlineResponse20032 AutocompleteProductSearch (string query, int? number);
        /// <summary>
        /// Classify Grocery Product This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.
        /// </summary>
        /// <param name="inlineObject1"></param>
        /// <param name="locale">The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).</param>
        /// <returns>InlineResponse20033</returns>
        InlineResponse20033 ClassifyGroceryProduct (InlineObject1 inlineObject1, string locale);
        /// <summary>
        /// Classify Grocery Product Bulk Provide a set of product jsons, get back classified products.
        /// </summary>
        /// <param name="inlineObject"></param>
        /// <param name="locale">The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).</param>
        /// <returns>List&lt;InlineResponse20033&gt;</returns>
        List<InlineResponse20033> ClassifyGroceryProductBulk (List<InlineObject> inlineObject, string locale);
        /// <summary>
        /// Get Comparable Products Find comparable products to the given one.
        /// </summary>
        /// <param name="upc">The UPC of the product for which you want to find comparable products.</param>
        /// <returns>InlineResponse20031</returns>
        InlineResponse20031 GetComparableProducts (decimal? upc);
        /// <summary>
        /// Get Product Information Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <returns>InlineResponse20030</returns>
        InlineResponse20030 GetProductInformation (int? id);
        /// <summary>
        /// Product Nutrition by ID Image Visualize a product&#39;s nutritional information as an image.
        /// </summary>
        /// <param name="id">The id of the product.</param>
        /// <returns>Object</returns>
        Object ProductNutritionByIDImage (decimal? id);
        /// <summary>
        /// Product Nutrition Label Image Get a product&#39;s nutrition label as an image.
        /// </summary>
        /// <param name="id">The product id.</param>
        /// <param name="showOptionalNutrients">Whether to show optional nutrients.</param>
        /// <param name="showZeroValues">Whether to show zero values.</param>
        /// <param name="showIngredients">Whether to show a list of ingredients.</param>
        /// <returns>Object</returns>
        Object ProductNutritionLabelImage (decimal? id, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients);
        /// <summary>
        /// Product Nutrition Label Widget Get a product&#39;s nutrition label as an HTML widget.
        /// </summary>
        /// <param name="id">The product id.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <param name="showOptionalNutrients">Whether to show optional nutrients.</param>
        /// <param name="showZeroValues">Whether to show zero values.</param>
        /// <param name="showIngredients">Whether to show a list of ingredients.</param>
        /// <returns>string</returns>
        string ProductNutritionLabelWidget (decimal? id, bool? defaultCss, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients);
        /// <summary>
        /// Search Grocery Products Search packaged food products, such as frozen pizza or Greek yogurt.
        /// </summary>
        /// <param name="query">The (natural language) search query.</param>
        /// <param name="minCalories">The minimum amount of calories the product must have.</param>
        /// <param name="maxCalories">The maximum amount of calories the product can have.</param>
        /// <param name="minCarbs">The minimum amount of carbohydrates in grams the product must have.</param>
        /// <param name="maxCarbs">The maximum amount of carbohydrates in grams the product can have.</param>
        /// <param name="minProtein">The minimum amount of protein in grams the product must have.</param>
        /// <param name="maxProtein">The maximum amount of protein in grams the product can have.</param>
        /// <param name="minFat">The minimum amount of fat in grams the product must have.</param>
        /// <param name="maxFat">The maximum amount of fat in grams the product can have.</param>
        /// <param name="addProductInformation">If set to true, you get more information about the products returned.</param>
        /// <param name="offset">The number of results to skip (between 0 and 900).</param>
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param>
        /// <returns>InlineResponse20027</returns>
        InlineResponse20027 SearchGroceryProducts (string query, decimal? minCalories, decimal? maxCalories, decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minFat, decimal? maxFat, bool? addProductInformation, int? offset, int? number);
        /// <summary>
        /// Search Grocery Products by UPC Get information about a packaged food using its UPC.
        /// </summary>
        /// <param name="upc">The product&#39;s UPC.</param>
        /// <returns>InlineResponse20028</returns>
        InlineResponse20028 SearchGroceryProductsByUPC (decimal? upc);
        /// <summary>
        /// Product Nutrition by ID Widget Visualize a product&#39;s nutritional information as HTML including CSS.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <param name="accept">Accept header.</param>
        /// <returns>string</returns>
        string VisualizeProductNutritionByID (int? id, bool? defaultCss, string accept);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class ProductsApi : IProductsApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ProductsApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public ProductsApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="ProductsApi"/> class.
        /// </summary>
        /// <returns></returns>
        public ProductsApi(String basePath)
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
        /// Autocomplete Product Search Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.
        /// </summary>
        /// <param name="query">The (partial) search query.</param> 
        /// <param name="number">The number of results to return (between 1 and 25).</param> 
        /// <returns>InlineResponse20032</returns>            
        public InlineResponse20032 AutocompleteProductSearch (string query, int? number)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling AutocompleteProductSearch");
            
    
            var path = "/food/products/suggest";
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
                throw new ApiException ((int)response.StatusCode, "Error calling AutocompleteProductSearch: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AutocompleteProductSearch: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20032) ApiClient.Deserialize(response.Content, typeof(InlineResponse20032), response.Headers);
        }
    
        /// <summary>
        /// Classify Grocery Product This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.
        /// </summary>
        /// <param name="inlineObject1"></param> 
        /// <param name="locale">The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).</param> 
        /// <returns>InlineResponse20033</returns>            
        public InlineResponse20033 ClassifyGroceryProduct (InlineObject1 inlineObject1, string locale)
        {
            
            // verify the required parameter 'inlineObject1' is set
            if (inlineObject1 == null) throw new ApiException(400, "Missing required parameter 'inlineObject1' when calling ClassifyGroceryProduct");
            
    
            var path = "/food/products/classify";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (locale != null) queryParams.Add("locale", ApiClient.ParameterToString(locale)); // query parameter
                                    postBody = ApiClient.Serialize(inlineObject1); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ClassifyGroceryProduct: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ClassifyGroceryProduct: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20033) ApiClient.Deserialize(response.Content, typeof(InlineResponse20033), response.Headers);
        }
    
        /// <summary>
        /// Classify Grocery Product Bulk Provide a set of product jsons, get back classified products.
        /// </summary>
        /// <param name="inlineObject"></param> 
        /// <param name="locale">The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).</param> 
        /// <returns>List&lt;InlineResponse20033&gt;</returns>            
        public List<InlineResponse20033> ClassifyGroceryProductBulk (List<InlineObject> inlineObject, string locale)
        {
            
            // verify the required parameter 'inlineObject' is set
            if (inlineObject == null) throw new ApiException(400, "Missing required parameter 'inlineObject' when calling ClassifyGroceryProductBulk");
            
    
            var path = "/food/products/classifyBatch";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (locale != null) queryParams.Add("locale", ApiClient.ParameterToString(locale)); // query parameter
                                    postBody = ApiClient.Serialize(inlineObject); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ClassifyGroceryProductBulk: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ClassifyGroceryProductBulk: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<InlineResponse20033>) ApiClient.Deserialize(response.Content, typeof(List<InlineResponse20033>), response.Headers);
        }
    
        /// <summary>
        /// Get Comparable Products Find comparable products to the given one.
        /// </summary>
        /// <param name="upc">The UPC of the product for which you want to find comparable products.</param> 
        /// <returns>InlineResponse20031</returns>            
        public InlineResponse20031 GetComparableProducts (decimal? upc)
        {
            
            // verify the required parameter 'upc' is set
            if (upc == null) throw new ApiException(400, "Missing required parameter 'upc' when calling GetComparableProducts");
            
    
            var path = "/food/products/upc/{upc}/comparable";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "upc" + "}", ApiClient.ParameterToString(upc));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetComparableProducts: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetComparableProducts: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20031) ApiClient.Deserialize(response.Content, typeof(InlineResponse20031), response.Headers);
        }
    
        /// <summary>
        /// Get Product Information Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <returns>InlineResponse20030</returns>            
        public InlineResponse20030 GetProductInformation (int? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetProductInformation");
            
    
            var path = "/food/products/{id}";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetProductInformation: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetProductInformation: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20030) ApiClient.Deserialize(response.Content, typeof(InlineResponse20030), response.Headers);
        }
    
        /// <summary>
        /// Product Nutrition by ID Image Visualize a product&#39;s nutritional information as an image.
        /// </summary>
        /// <param name="id">The id of the product.</param> 
        /// <returns>Object</returns>            
        public Object ProductNutritionByIDImage (decimal? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling ProductNutritionByIDImage");
            
    
            var path = "/food/products/{id}/nutritionWidget.png";
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
                throw new ApiException ((int)response.StatusCode, "Error calling ProductNutritionByIDImage: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ProductNutritionByIDImage: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Product Nutrition Label Image Get a product&#39;s nutrition label as an image.
        /// </summary>
        /// <param name="id">The product id.</param> 
        /// <param name="showOptionalNutrients">Whether to show optional nutrients.</param> 
        /// <param name="showZeroValues">Whether to show zero values.</param> 
        /// <param name="showIngredients">Whether to show a list of ingredients.</param> 
        /// <returns>Object</returns>            
        public Object ProductNutritionLabelImage (decimal? id, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling ProductNutritionLabelImage");
            
    
            var path = "/food/products/{id}/nutritionLabel.png";
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
                throw new ApiException ((int)response.StatusCode, "Error calling ProductNutritionLabelImage: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ProductNutritionLabelImage: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Product Nutrition Label Widget Get a product&#39;s nutrition label as an HTML widget.
        /// </summary>
        /// <param name="id">The product id.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <param name="showOptionalNutrients">Whether to show optional nutrients.</param> 
        /// <param name="showZeroValues">Whether to show zero values.</param> 
        /// <param name="showIngredients">Whether to show a list of ingredients.</param> 
        /// <returns>string</returns>            
        public string ProductNutritionLabelWidget (decimal? id, bool? defaultCss, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling ProductNutritionLabelWidget");
            
    
            var path = "/food/products/{id}/nutritionLabel";
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
                throw new ApiException ((int)response.StatusCode, "Error calling ProductNutritionLabelWidget: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ProductNutritionLabelWidget: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Search Grocery Products Search packaged food products, such as frozen pizza or Greek yogurt.
        /// </summary>
        /// <param name="query">The (natural language) search query.</param> 
        /// <param name="minCalories">The minimum amount of calories the product must have.</param> 
        /// <param name="maxCalories">The maximum amount of calories the product can have.</param> 
        /// <param name="minCarbs">The minimum amount of carbohydrates in grams the product must have.</param> 
        /// <param name="maxCarbs">The maximum amount of carbohydrates in grams the product can have.</param> 
        /// <param name="minProtein">The minimum amount of protein in grams the product must have.</param> 
        /// <param name="maxProtein">The maximum amount of protein in grams the product can have.</param> 
        /// <param name="minFat">The minimum amount of fat in grams the product must have.</param> 
        /// <param name="maxFat">The maximum amount of fat in grams the product can have.</param> 
        /// <param name="addProductInformation">If set to true, you get more information about the products returned.</param> 
        /// <param name="offset">The number of results to skip (between 0 and 900).</param> 
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param> 
        /// <returns>InlineResponse20027</returns>            
        public InlineResponse20027 SearchGroceryProducts (string query, decimal? minCalories, decimal? maxCalories, decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minFat, decimal? maxFat, bool? addProductInformation, int? offset, int? number)
        {
            
    
            var path = "/food/products/search";
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
 if (addProductInformation != null) queryParams.Add("addProductInformation", ApiClient.ParameterToString(addProductInformation)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchGroceryProducts: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchGroceryProducts: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20027) ApiClient.Deserialize(response.Content, typeof(InlineResponse20027), response.Headers);
        }
    
        /// <summary>
        /// Search Grocery Products by UPC Get information about a packaged food using its UPC.
        /// </summary>
        /// <param name="upc">The product&#39;s UPC.</param> 
        /// <returns>InlineResponse20028</returns>            
        public InlineResponse20028 SearchGroceryProductsByUPC (decimal? upc)
        {
            
            // verify the required parameter 'upc' is set
            if (upc == null) throw new ApiException(400, "Missing required parameter 'upc' when calling SearchGroceryProductsByUPC");
            
    
            var path = "/food/products/upc/{upc}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "upc" + "}", ApiClient.ParameterToString(upc));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling SearchGroceryProductsByUPC: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchGroceryProductsByUPC: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20028) ApiClient.Deserialize(response.Content, typeof(InlineResponse20028), response.Headers);
        }
    
        /// <summary>
        /// Product Nutrition by ID Widget Visualize a product&#39;s nutritional information as HTML including CSS.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <param name="accept">Accept header.</param> 
        /// <returns>string</returns>            
        public string VisualizeProductNutritionByID (int? id, bool? defaultCss, string accept)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling VisualizeProductNutritionByID");
            
    
            var path = "/food/products/{id}/nutritionWidget";
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
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeProductNutritionByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeProductNutritionByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
    }
}
