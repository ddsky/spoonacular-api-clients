# OAIDefaultApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeRecipe**](OAIDefaultApi.md#analyzerecipe) | **POST** /recipes/analyze | Analyze Recipe
[**searchRestaurants**](OAIDefaultApi.md#searchrestaurants) | **GET** /food/restaurants/search | Search Restaurants


# **analyzeRecipe**
```objc
-(NSURLSessionTask*) analyzeRecipeWithAnalyzeRecipeRequest: (OAIAnalyzeRecipeRequest*) analyzeRecipeRequest
    language: (NSString*) language
    includeNutrition: (NSNumber*) includeNutrition
    includeTaste: (NSNumber*) includeTaste
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Analyze Recipe

This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIAnalyzeRecipeRequest* analyzeRecipeRequest = [[OAIAnalyzeRecipeRequest alloc] init]; // Example request body.
NSString* language = en; // The input language, either \"en\" or \"de\". (optional)
NSNumber* includeNutrition = false; // Whether nutrition data should be added to correctly parsed ingredients. (optional)
NSNumber* includeTaste = false; // Whether taste data should be added to correctly parsed ingredients. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Analyze Recipe
[apiInstance analyzeRecipeWithAnalyzeRecipeRequest:analyzeRecipeRequest
              language:language
              includeNutrition:includeNutrition
              includeTaste:includeTaste
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->analyzeRecipe: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analyzeRecipeRequest** | [**OAIAnalyzeRecipeRequest***](OAIAnalyzeRecipeRequest.md)| Example request body. | 
 **language** | **NSString***| The input language, either \&quot;en\&quot; or \&quot;de\&quot;. | [optional] 
 **includeNutrition** | **NSNumber***| Whether nutrition data should be added to correctly parsed ingredients. | [optional] 
 **includeTaste** | **NSNumber***| Whether taste data should be added to correctly parsed ingredients. | [optional] 

### Return type

**NSObject***

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRestaurants**
```objc
-(NSURLSessionTask*) searchRestaurantsWithQuery: (NSString*) query
    lat: (NSNumber*) lat
    lng: (NSNumber*) lng
    distance: (NSNumber*) distance
    budget: (NSNumber*) budget
    cuisine: (NSString*) cuisine
    minRating: (NSNumber*) minRating
    isOpen: (NSNumber*) isOpen
    sort: (NSString*) sort
    page: (NSNumber*) page
        completionHandler: (void (^)(OAISearchRestaurants200Response* output, NSError* error)) handler;
```

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* query = beach cafe; // The search query. (optional)
NSNumber* lat = 37.7786357; // The latitude of the user's location. (optional)
NSNumber* lng = -122.3918135; // The longitude of the user's location.\". (optional)
NSNumber* distance = 2; // The distance around the location in miles. (optional)
NSNumber* budget = 20; // The user's budget for a meal in USD. (optional)
NSString* cuisine = italian; // The cuisine of the restaurant. (optional)
NSNumber* minRating = 4.4; // The minimum rating of the restaurant between 0 and 5. (optional)
NSNumber* isOpen = true; // Whether the restaurant must be open at the time of search. (optional)
NSString* sort = distance; // How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'. (optional)
NSNumber* page = 0; // The page number of results. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Search Restaurants
[apiInstance searchRestaurantsWithQuery:query
              lat:lat
              lng:lng
              distance:distance
              budget:budget
              cuisine:cuisine
              minRating:minRating
              isOpen:isOpen
              sort:sort
              page:page
          completionHandler: ^(OAISearchRestaurants200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->searchRestaurants: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The search query. | [optional] 
 **lat** | **NSNumber***| The latitude of the user&#39;s location. | [optional] 
 **lng** | **NSNumber***| The longitude of the user&#39;s location.\&quot;. | [optional] 
 **distance** | **NSNumber***| The distance around the location in miles. | [optional] 
 **budget** | **NSNumber***| The user&#39;s budget for a meal in USD. | [optional] 
 **cuisine** | **NSString***| The cuisine of the restaurant. | [optional] 
 **minRating** | **NSNumber***| The minimum rating of the restaurant between 0 and 5. | [optional] 
 **isOpen** | **NSNumber***| Whether the restaurant must be open at the time of search. | [optional] 
 **sort** | **NSString***| How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. | [optional] 
 **page** | **NSNumber***| The page number of results. | [optional] 

### Return type

[**OAISearchRestaurants200Response***](OAISearchRestaurants200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

