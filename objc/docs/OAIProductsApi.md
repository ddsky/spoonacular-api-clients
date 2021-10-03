# OAIProductsApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocompleteProductSearch**](OAIProductsApi.md#autocompleteproductsearch) | **GET** /food/products/suggest | Autocomplete Product Search
[**classifyGroceryProduct**](OAIProductsApi.md#classifygroceryproduct) | **POST** /food/products/classify | Classify Grocery Product
[**classifyGroceryProductBulk**](OAIProductsApi.md#classifygroceryproductbulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
[**getComparableProducts**](OAIProductsApi.md#getcomparableproducts) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
[**getProductInformation**](OAIProductsApi.md#getproductinformation) | **GET** /food/products/{id} | Get Product Information
[**productNutritionByIDImage**](OAIProductsApi.md#productnutritionbyidimage) | **GET** /food/products/{id}/nutritionWidget.png | Product Nutrition by ID Image
[**productNutritionLabelImage**](OAIProductsApi.md#productnutritionlabelimage) | **GET** /food/products/{id}/nutritionLabel.png | Product Nutrition Label Image
[**productNutritionLabelWidget**](OAIProductsApi.md#productnutritionlabelwidget) | **GET** /food/products/{id}/nutritionLabel | Product Nutrition Label Widget
[**searchGroceryProducts**](OAIProductsApi.md#searchgroceryproducts) | **GET** /food/products/search | Search Grocery Products
[**searchGroceryProductsByUPC**](OAIProductsApi.md#searchgroceryproductsbyupc) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
[**visualizeProductNutritionByID**](OAIProductsApi.md#visualizeproductnutritionbyid) | **GET** /food/products/{id}/nutritionWidget | Product Nutrition by ID Widget


# **autocompleteProductSearch**
```objc
-(NSURLSessionTask*) autocompleteProductSearchWithQuery: (NSString*) query
    number: (NSNumber*) number
        completionHandler: (void (^)(OAIInlineResponse20032* output, NSError* error)) handler;
```

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* query = chicke; // The (partial) search query.
NSNumber* number = 10; // The number of results to return (between 1 and 25). (optional)

OAIProductsApi*apiInstance = [[OAIProductsApi alloc] init];

// Autocomplete Product Search
[apiInstance autocompleteProductSearchWithQuery:query
              number:number
          completionHandler: ^(OAIInlineResponse20032* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductsApi->autocompleteProductSearch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The (partial) search query. | 
 **number** | **NSNumber***| The number of results to return (between 1 and 25). | [optional] 

### Return type

[**OAIInlineResponse20032***](OAIInlineResponse20032.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classifyGroceryProduct**
```objc
-(NSURLSessionTask*) classifyGroceryProductWithInlineObject1: (OAIInlineObject1*) inlineObject1
    locale: (NSString*) locale
        completionHandler: (void (^)(OAIInlineResponse20033* output, NSError* error)) handler;
```

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


OAIInlineObject1* inlineObject1 = [[OAIInlineObject1 alloc] init]; // 
NSString* locale = en_US; // The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional)

OAIProductsApi*apiInstance = [[OAIProductsApi alloc] init];

// Classify Grocery Product
[apiInstance classifyGroceryProductWithInlineObject1:inlineObject1
              locale:locale
          completionHandler: ^(OAIInlineResponse20033* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductsApi->classifyGroceryProduct: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject1** | [**OAIInlineObject1***](OAIInlineObject1.md)|  | 
 **locale** | **NSString***| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

[**OAIInlineResponse20033***](OAIInlineResponse20033.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classifyGroceryProductBulk**
```objc
-(NSURLSessionTask*) classifyGroceryProductBulkWithInlineObject: (NSArray<OAIInlineObject>*) inlineObject
    locale: (NSString*) locale
        completionHandler: (void (^)(NSArray<OAIInlineResponse20033>* output, NSError* error)) handler;
```

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSArray<OAIInlineObject>* inlineObject = [{"title":"Kroger Vitamin A & D Reduced Fat 2% Milk","upc":"","plu_code":""}]; // 
NSString* locale = en_US; // The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional)

OAIProductsApi*apiInstance = [[OAIProductsApi alloc] init];

// Classify Grocery Product Bulk
[apiInstance classifyGroceryProductBulkWithInlineObject:inlineObject
              locale:locale
          completionHandler: ^(NSArray<OAIInlineResponse20033>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductsApi->classifyGroceryProductBulk: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject** | [**NSArray&lt;OAIInlineObject&gt;***](NSArray.md)|  | 
 **locale** | **NSString***| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

[**NSArray<OAIInlineResponse20033>***](OAIInlineResponse20033.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComparableProducts**
```objc
-(NSURLSessionTask*) getComparableProductsWithUpc: (NSNumber*) upc
        completionHandler: (void (^)(OAIInlineResponse20031* output, NSError* error)) handler;
```

Get Comparable Products

Find comparable products to the given one.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSNumber* upc = 33698816271; // The UPC of the product for which you want to find comparable products.

OAIProductsApi*apiInstance = [[OAIProductsApi alloc] init];

// Get Comparable Products
[apiInstance getComparableProductsWithUpc:upc
          completionHandler: ^(OAIInlineResponse20031* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductsApi->getComparableProducts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **NSNumber***| The UPC of the product for which you want to find comparable products. | 

### Return type

[**OAIInlineResponse20031***](OAIInlineResponse20031.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductInformation**
```objc
-(NSURLSessionTask*) getProductInformationWithId: (NSNumber*) _id
        completionHandler: (void (^)(OAIInlineResponse20030* output, NSError* error)) handler;
```

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSNumber* _id = 1; // The item's id.

OAIProductsApi*apiInstance = [[OAIProductsApi alloc] init];

// Get Product Information
[apiInstance getProductInformationWithId:_id
          completionHandler: ^(OAIInlineResponse20030* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductsApi->getProductInformation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The item&#39;s id. | 

### Return type

[**OAIInlineResponse20030***](OAIInlineResponse20030.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productNutritionByIDImage**
```objc
-(NSURLSessionTask*) productNutritionByIDImageWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Product Nutrition by ID Image

Visualize a product's nutritional information as an image.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSNumber* _id = 7657; // The id of the product.

OAIProductsApi*apiInstance = [[OAIProductsApi alloc] init];

// Product Nutrition by ID Image
[apiInstance productNutritionByIDImageWithId:_id
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductsApi->productNutritionByIDImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The id of the product. | 

### Return type

**NSObject***

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productNutritionLabelImage**
```objc
-(NSURLSessionTask*) productNutritionLabelImageWithId: (NSNumber*) _id
    showOptionalNutrients: (NSNumber*) showOptionalNutrients
    showZeroValues: (NSNumber*) showZeroValues
    showIngredients: (NSNumber*) showIngredients
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Product Nutrition Label Image

Get a product's nutrition label as an image.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSNumber* _id = 22347; // The product id.
NSNumber* showOptionalNutrients = false; // Whether to show optional nutrients. (optional)
NSNumber* showZeroValues = false; // Whether to show zero values. (optional)
NSNumber* showIngredients = false; // Whether to show a list of ingredients. (optional)

OAIProductsApi*apiInstance = [[OAIProductsApi alloc] init];

// Product Nutrition Label Image
[apiInstance productNutritionLabelImageWithId:_id
              showOptionalNutrients:showOptionalNutrients
              showZeroValues:showZeroValues
              showIngredients:showIngredients
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductsApi->productNutritionLabelImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The product id. | 
 **showOptionalNutrients** | **NSNumber***| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **NSNumber***| Whether to show zero values. | [optional] 
 **showIngredients** | **NSNumber***| Whether to show a list of ingredients. | [optional] 

### Return type

**NSObject***

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productNutritionLabelWidget**
```objc
-(NSURLSessionTask*) productNutritionLabelWidgetWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    showOptionalNutrients: (NSNumber*) showOptionalNutrients
    showZeroValues: (NSNumber*) showZeroValues
    showIngredients: (NSNumber*) showIngredients
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Product Nutrition Label Widget

Get a product's nutrition label as an HTML widget.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSNumber* _id = 22347; // The product id.
NSNumber* defaultCss = false; // Whether the default CSS should be added to the response. (optional) (default to @(YES))
NSNumber* showOptionalNutrients = false; // Whether to show optional nutrients. (optional)
NSNumber* showZeroValues = false; // Whether to show zero values. (optional)
NSNumber* showIngredients = false; // Whether to show a list of ingredients. (optional)

OAIProductsApi*apiInstance = [[OAIProductsApi alloc] init];

// Product Nutrition Label Widget
[apiInstance productNutritionLabelWidgetWithId:_id
              defaultCss:defaultCss
              showOptionalNutrients:showOptionalNutrients
              showZeroValues:showZeroValues
              showIngredients:showIngredients
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductsApi->productNutritionLabelWidget: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The product id. | 
 **defaultCss** | **NSNumber***| Whether the default CSS should be added to the response. | [optional] [default to @(YES)]
 **showOptionalNutrients** | **NSNumber***| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **NSNumber***| Whether to show zero values. | [optional] 
 **showIngredients** | **NSNumber***| Whether to show a list of ingredients. | [optional] 

### Return type

**NSString***

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGroceryProducts**
```objc
-(NSURLSessionTask*) searchGroceryProductsWithQuery: (NSString*) query
    minCalories: (NSNumber*) minCalories
    maxCalories: (NSNumber*) maxCalories
    minCarbs: (NSNumber*) minCarbs
    maxCarbs: (NSNumber*) maxCarbs
    minProtein: (NSNumber*) minProtein
    maxProtein: (NSNumber*) maxProtein
    minFat: (NSNumber*) minFat
    maxFat: (NSNumber*) maxFat
    addProductInformation: (NSNumber*) addProductInformation
    offset: (NSNumber*) offset
    number: (NSNumber*) number
        completionHandler: (void (^)(OAIInlineResponse20027* output, NSError* error)) handler;
```

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* query = burger; // The (natural language) search query. (optional)
NSNumber* minCalories = 50; // The minimum amount of calories the product must have. (optional)
NSNumber* maxCalories = 800; // The maximum amount of calories the product can have. (optional)
NSNumber* minCarbs = 10; // The minimum amount of carbohydrates in grams the product must have. (optional)
NSNumber* maxCarbs = 100; // The maximum amount of carbohydrates in grams the product can have. (optional)
NSNumber* minProtein = 10; // The minimum amount of protein in grams the product must have. (optional)
NSNumber* maxProtein = 100; // The maximum amount of protein in grams the product can have. (optional)
NSNumber* minFat = 1; // The minimum amount of fat in grams the product must have. (optional)
NSNumber* maxFat = 100; // The maximum amount of fat in grams the product can have. (optional)
NSNumber* addProductInformation = true; // If set to true, you get more information about the products returned. (optional)
NSNumber* offset = @56; // The number of results to skip (between 0 and 900). (optional)
NSNumber* number = 10; // The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to @10)

OAIProductsApi*apiInstance = [[OAIProductsApi alloc] init];

// Search Grocery Products
[apiInstance searchGroceryProductsWithQuery:query
              minCalories:minCalories
              maxCalories:maxCalories
              minCarbs:minCarbs
              maxCarbs:maxCarbs
              minProtein:minProtein
              maxProtein:maxProtein
              minFat:minFat
              maxFat:maxFat
              addProductInformation:addProductInformation
              offset:offset
              number:number
          completionHandler: ^(OAIInlineResponse20027* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductsApi->searchGroceryProducts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The (natural language) search query. | [optional] 
 **minCalories** | **NSNumber***| The minimum amount of calories the product must have. | [optional] 
 **maxCalories** | **NSNumber***| The maximum amount of calories the product can have. | [optional] 
 **minCarbs** | **NSNumber***| The minimum amount of carbohydrates in grams the product must have. | [optional] 
 **maxCarbs** | **NSNumber***| The maximum amount of carbohydrates in grams the product can have. | [optional] 
 **minProtein** | **NSNumber***| The minimum amount of protein in grams the product must have. | [optional] 
 **maxProtein** | **NSNumber***| The maximum amount of protein in grams the product can have. | [optional] 
 **minFat** | **NSNumber***| The minimum amount of fat in grams the product must have. | [optional] 
 **maxFat** | **NSNumber***| The maximum amount of fat in grams the product can have. | [optional] 
 **addProductInformation** | **NSNumber***| If set to true, you get more information about the products returned. | [optional] 
 **offset** | **NSNumber***| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **NSNumber***| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to @10]

### Return type

[**OAIInlineResponse20027***](OAIInlineResponse20027.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGroceryProductsByUPC**
```objc
-(NSURLSessionTask*) searchGroceryProductsByUPCWithUpc: (NSNumber*) upc
        completionHandler: (void (^)(OAIInlineResponse20028* output, NSError* error)) handler;
```

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSNumber* upc = 41631000564; // The product's UPC.

OAIProductsApi*apiInstance = [[OAIProductsApi alloc] init];

// Search Grocery Products by UPC
[apiInstance searchGroceryProductsByUPCWithUpc:upc
          completionHandler: ^(OAIInlineResponse20028* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductsApi->searchGroceryProductsByUPC: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **NSNumber***| The product&#39;s UPC. | 

### Return type

[**OAIInlineResponse20028***](OAIInlineResponse20028.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeProductNutritionByID**
```objc
-(NSURLSessionTask*) visualizeProductNutritionByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    accept: (NSString*) accept
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Product Nutrition by ID Widget

Visualize a product's nutritional information as HTML including CSS.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSNumber* _id = 1; // The item's id.
NSNumber* defaultCss = false; // Whether the default CSS should be added to the response. (optional) (default to @(YES))
NSString* accept = application/json; // Accept header. (optional)

OAIProductsApi*apiInstance = [[OAIProductsApi alloc] init];

// Product Nutrition by ID Widget
[apiInstance visualizeProductNutritionByIDWithId:_id
              defaultCss:defaultCss
              accept:accept
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductsApi->visualizeProductNutritionByID: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The item&#39;s id. | 
 **defaultCss** | **NSNumber***| Whether the default CSS should be added to the response. | [optional] [default to @(YES)]
 **accept** | **NSString***| Accept header. | [optional] 

### Return type

**NSString***

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

