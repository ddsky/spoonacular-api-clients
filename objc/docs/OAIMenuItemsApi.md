# OAIMenuItemsApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocompleteMenuItemSearch**](OAIMenuItemsApi.md#autocompletemenuitemsearch) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search
[**getMenuItemInformation**](OAIMenuItemsApi.md#getmenuiteminformation) | **GET** /food/menuItems/{id} | Get Menu Item Information
[**menuItemNutritionByIDImage**](OAIMenuItemsApi.md#menuitemnutritionbyidimage) | **GET** /food/menuItems/{id}/nutritionWidget.png | Menu Item Nutrition by ID Image
[**menuItemNutritionLabelImage**](OAIMenuItemsApi.md#menuitemnutritionlabelimage) | **GET** /food/menuItems/{id}/nutritionLabel.png | Menu Item Nutrition Label Image
[**menuItemNutritionLabelWidget**](OAIMenuItemsApi.md#menuitemnutritionlabelwidget) | **GET** /food/menuItems/{id}/nutritionLabel | Menu Item Nutrition Label Widget
[**searchMenuItems**](OAIMenuItemsApi.md#searchmenuitems) | **GET** /food/menuItems/search | Search Menu Items
[**visualizeMenuItemNutritionByID**](OAIMenuItemsApi.md#visualizemenuitemnutritionbyid) | **GET** /food/menuItems/{id}/nutritionWidget | Menu Item Nutrition by ID Widget


# **autocompleteMenuItemSearch**
```objc
-(NSURLSessionTask*) autocompleteMenuItemSearchWithQuery: (NSString*) query
    number: (NSNumber*) number
        completionHandler: (void (^)(OAIInlineResponse20032* output, NSError* error)) handler;
```

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* query = chicke; // The (partial) search query.
NSNumber* number = 10; // The number of results to return (between 1 and 25). (optional)

OAIMenuItemsApi*apiInstance = [[OAIMenuItemsApi alloc] init];

// Autocomplete Menu Item Search
[apiInstance autocompleteMenuItemSearchWithQuery:query
              number:number
          completionHandler: ^(OAIInlineResponse20032* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMenuItemsApi->autocompleteMenuItemSearch: %@", error);
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

# **getMenuItemInformation**
```objc
-(NSURLSessionTask*) getMenuItemInformationWithId: (NSNumber*) _id
        completionHandler: (void (^)(OAIInlineResponse20036* output, NSError* error)) handler;
```

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSNumber* _id = 1; // The item's id.

OAIMenuItemsApi*apiInstance = [[OAIMenuItemsApi alloc] init];

// Get Menu Item Information
[apiInstance getMenuItemInformationWithId:_id
          completionHandler: ^(OAIInlineResponse20036* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMenuItemsApi->getMenuItemInformation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The item&#39;s id. | 

### Return type

[**OAIInlineResponse20036***](OAIInlineResponse20036.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **menuItemNutritionByIDImage**
```objc
-(NSURLSessionTask*) menuItemNutritionByIDImageWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Menu Item Nutrition by ID Image

Visualize a menu item's nutritional information as HTML including CSS.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSNumber* _id = 424571; // The menu item id.

OAIMenuItemsApi*apiInstance = [[OAIMenuItemsApi alloc] init];

// Menu Item Nutrition by ID Image
[apiInstance menuItemNutritionByIDImageWithId:_id
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMenuItemsApi->menuItemNutritionByIDImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The menu item id. | 

### Return type

**NSObject***

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **menuItemNutritionLabelImage**
```objc
-(NSURLSessionTask*) menuItemNutritionLabelImageWithId: (NSNumber*) _id
    showOptionalNutrients: (NSNumber*) showOptionalNutrients
    showZeroValues: (NSNumber*) showZeroValues
    showIngredients: (NSNumber*) showIngredients
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Menu Item Nutrition Label Image

Visualize a menu item's nutritional label information as an image.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSNumber* _id = 342313; // The menu item id.
NSNumber* showOptionalNutrients = false; // Whether to show optional nutrients. (optional)
NSNumber* showZeroValues = false; // Whether to show zero values. (optional)
NSNumber* showIngredients = false; // Whether to show a list of ingredients. (optional)

OAIMenuItemsApi*apiInstance = [[OAIMenuItemsApi alloc] init];

// Menu Item Nutrition Label Image
[apiInstance menuItemNutritionLabelImageWithId:_id
              showOptionalNutrients:showOptionalNutrients
              showZeroValues:showZeroValues
              showIngredients:showIngredients
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMenuItemsApi->menuItemNutritionLabelImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The menu item id. | 
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

# **menuItemNutritionLabelWidget**
```objc
-(NSURLSessionTask*) menuItemNutritionLabelWidgetWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    showOptionalNutrients: (NSNumber*) showOptionalNutrients
    showZeroValues: (NSNumber*) showZeroValues
    showIngredients: (NSNumber*) showIngredients
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Menu Item Nutrition Label Widget

Visualize a menu item's nutritional label information as HTML including CSS.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSNumber* _id = 342313; // The menu item id.
NSNumber* defaultCss = false; // Whether the default CSS should be added to the response. (optional) (default to @(YES))
NSNumber* showOptionalNutrients = false; // Whether to show optional nutrients. (optional)
NSNumber* showZeroValues = false; // Whether to show zero values. (optional)
NSNumber* showIngredients = false; // Whether to show a list of ingredients. (optional)

OAIMenuItemsApi*apiInstance = [[OAIMenuItemsApi alloc] init];

// Menu Item Nutrition Label Widget
[apiInstance menuItemNutritionLabelWidgetWithId:_id
              defaultCss:defaultCss
              showOptionalNutrients:showOptionalNutrients
              showZeroValues:showZeroValues
              showIngredients:showIngredients
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMenuItemsApi->menuItemNutritionLabelWidget: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The menu item id. | 
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

# **searchMenuItems**
```objc
-(NSURLSessionTask*) searchMenuItemsWithQuery: (NSString*) query
    minCalories: (NSNumber*) minCalories
    maxCalories: (NSNumber*) maxCalories
    minCarbs: (NSNumber*) minCarbs
    maxCarbs: (NSNumber*) maxCarbs
    minProtein: (NSNumber*) minProtein
    maxProtein: (NSNumber*) maxProtein
    minFat: (NSNumber*) minFat
    maxFat: (NSNumber*) maxFat
    addMenuItemInformation: (NSNumber*) addMenuItemInformation
    offset: (NSNumber*) offset
    number: (NSNumber*) number
        completionHandler: (void (^)(OAIInlineResponse20035* output, NSError* error)) handler;
```

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* query = burger; // The (natural language) search query. (optional)
NSNumber* minCalories = 50; // The minimum amount of calories the menu item must have. (optional)
NSNumber* maxCalories = 800; // The maximum amount of calories the menu item can have. (optional)
NSNumber* minCarbs = 10; // The minimum amount of carbohydrates in grams the menu item must have. (optional)
NSNumber* maxCarbs = 100; // The maximum amount of carbohydrates in grams the menu item can have. (optional)
NSNumber* minProtein = 10; // The minimum amount of protein in grams the menu item must have. (optional)
NSNumber* maxProtein = 100; // The maximum amount of protein in grams the menu item can have. (optional)
NSNumber* minFat = 1; // The minimum amount of fat in grams the menu item must have. (optional)
NSNumber* maxFat = 100; // The maximum amount of fat in grams the menu item can have. (optional)
NSNumber* addMenuItemInformation = true; // If set to true, you get more information about the menu items returned. (optional)
NSNumber* offset = @56; // The number of results to skip (between 0 and 900). (optional)
NSNumber* number = 10; // The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to @10)

OAIMenuItemsApi*apiInstance = [[OAIMenuItemsApi alloc] init];

// Search Menu Items
[apiInstance searchMenuItemsWithQuery:query
              minCalories:minCalories
              maxCalories:maxCalories
              minCarbs:minCarbs
              maxCarbs:maxCarbs
              minProtein:minProtein
              maxProtein:maxProtein
              minFat:minFat
              maxFat:maxFat
              addMenuItemInformation:addMenuItemInformation
              offset:offset
              number:number
          completionHandler: ^(OAIInlineResponse20035* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMenuItemsApi->searchMenuItems: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The (natural language) search query. | [optional] 
 **minCalories** | **NSNumber***| The minimum amount of calories the menu item must have. | [optional] 
 **maxCalories** | **NSNumber***| The maximum amount of calories the menu item can have. | [optional] 
 **minCarbs** | **NSNumber***| The minimum amount of carbohydrates in grams the menu item must have. | [optional] 
 **maxCarbs** | **NSNumber***| The maximum amount of carbohydrates in grams the menu item can have. | [optional] 
 **minProtein** | **NSNumber***| The minimum amount of protein in grams the menu item must have. | [optional] 
 **maxProtein** | **NSNumber***| The maximum amount of protein in grams the menu item can have. | [optional] 
 **minFat** | **NSNumber***| The minimum amount of fat in grams the menu item must have. | [optional] 
 **maxFat** | **NSNumber***| The maximum amount of fat in grams the menu item can have. | [optional] 
 **addMenuItemInformation** | **NSNumber***| If set to true, you get more information about the menu items returned. | [optional] 
 **offset** | **NSNumber***| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **NSNumber***| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to @10]

### Return type

[**OAIInlineResponse20035***](OAIInlineResponse20035.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeMenuItemNutritionByID**
```objc
-(NSURLSessionTask*) visualizeMenuItemNutritionByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    accept: (NSString*) accept
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Menu Item Nutrition by ID Widget

Visualize a menu item's nutritional information as HTML including CSS.

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

OAIMenuItemsApi*apiInstance = [[OAIMenuItemsApi alloc] init];

// Menu Item Nutrition by ID Widget
[apiInstance visualizeMenuItemNutritionByIDWithId:_id
              defaultCss:defaultCss
              accept:accept
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMenuItemsApi->visualizeMenuItemNutritionByID: %@", error);
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

