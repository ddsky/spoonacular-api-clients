# OAIWineApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDishPairingForWine**](OAIWineApi.md#getdishpairingforwine) | **GET** /food/wine/dishes | Dish Pairing for Wine
[**getWineDescription**](OAIWineApi.md#getwinedescription) | **GET** /food/wine/description | Wine Description
[**getWinePairing**](OAIWineApi.md#getwinepairing) | **GET** /food/wine/pairing | Wine Pairing
[**getWineRecommendation**](OAIWineApi.md#getwinerecommendation) | **GET** /food/wine/recommendation | Wine Recommendation


# **getDishPairingForWine**
```objc
-(NSURLSessionTask*) getDishPairingForWineWithWine: (NSString*) wine
        completionHandler: (void (^)(OAIInlineResponse20044* output, NSError* error)) handler;
```

Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* wine = malbec; // The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

OAIWineApi*apiInstance = [[OAIWineApi alloc] init];

// Dish Pairing for Wine
[apiInstance getDishPairingForWineWithWine:wine
          completionHandler: ^(OAIInlineResponse20044* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWineApi->getDishPairingForWine: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **NSString***| The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

[**OAIInlineResponse20044***](OAIInlineResponse20044.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWineDescription**
```objc
-(NSURLSessionTask*) getWineDescriptionWithWine: (NSString*) wine
        completionHandler: (void (^)(OAIInlineResponse20046* output, NSError* error)) handler;
```

Wine Description

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* wine = merlot; // The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

OAIWineApi*apiInstance = [[OAIWineApi alloc] init];

// Wine Description
[apiInstance getWineDescriptionWithWine:wine
          completionHandler: ^(OAIInlineResponse20046* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWineApi->getWineDescription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **NSString***| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

[**OAIInlineResponse20046***](OAIInlineResponse20046.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWinePairing**
```objc
-(NSURLSessionTask*) getWinePairingWithFood: (NSString*) food
    maxPrice: (NSNumber*) maxPrice
        completionHandler: (void (^)(OAIInlineResponse20045* output, NSError* error)) handler;
```

Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* food = steak; // The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
NSNumber* maxPrice = 50; // The maximum price for the specific wine recommendation in USD. (optional)

OAIWineApi*apiInstance = [[OAIWineApi alloc] init];

// Wine Pairing
[apiInstance getWinePairingWithFood:food
              maxPrice:maxPrice
          completionHandler: ^(OAIInlineResponse20045* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWineApi->getWinePairing: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **NSString***| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). | 
 **maxPrice** | **NSNumber***| The maximum price for the specific wine recommendation in USD. | [optional] 

### Return type

[**OAIInlineResponse20045***](OAIInlineResponse20045.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWineRecommendation**
```objc
-(NSURLSessionTask*) getWineRecommendationWithWine: (NSString*) wine
    maxPrice: (NSNumber*) maxPrice
    minRating: (NSNumber*) minRating
    number: (NSNumber*) number
        completionHandler: (void (^)(OAIInlineResponse20047* output, NSError* error)) handler;
```

Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* wine = merlot; // The type of wine to get a specific product recommendation for.
NSNumber* maxPrice = 50; // The maximum price for the specific wine recommendation in USD. (optional)
NSNumber* minRating = 0.7; // The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. (optional)
NSNumber* number = 3; // The number of wine recommendations expected (between 1 and 100). (optional) (default to @10)

OAIWineApi*apiInstance = [[OAIWineApi alloc] init];

// Wine Recommendation
[apiInstance getWineRecommendationWithWine:wine
              maxPrice:maxPrice
              minRating:minRating
              number:number
          completionHandler: ^(OAIInlineResponse20047* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWineApi->getWineRecommendation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **NSString***| The type of wine to get a specific product recommendation for. | 
 **maxPrice** | **NSNumber***| The maximum price for the specific wine recommendation in USD. | [optional] 
 **minRating** | **NSNumber***| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional] 
 **number** | **NSNumber***| The number of wine recommendations expected (between 1 and 100). | [optional] [default to @10]

### Return type

[**OAIInlineResponse20047***](OAIInlineResponse20047.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

