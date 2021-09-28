# OAIIngredientsApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocompleteIngredientSearch**](OAIIngredientsApi.md#autocompleteingredientsearch) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search
[**computeIngredientAmount**](OAIIngredientsApi.md#computeingredientamount) | **GET** /food/ingredients/{id}/amount | Compute Ingredient Amount
[**getIngredientInformation**](OAIIngredientsApi.md#getingredientinformation) | **GET** /food/ingredients/{id}/information | Get Ingredient Information
[**getIngredientSubstitutes**](OAIIngredientsApi.md#getingredientsubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
[**getIngredientSubstitutesByID**](OAIIngredientsApi.md#getingredientsubstitutesbyid) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**ingredientSearch**](OAIIngredientsApi.md#ingredientsearch) | **GET** /food/ingredients/search | Ingredient Search
[**ingredientsByIDImage**](OAIIngredientsApi.md#ingredientsbyidimage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
[**mapIngredientsToGroceryProducts**](OAIIngredientsApi.md#mapingredientstogroceryproducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
[**visualizeIngredients**](OAIIngredientsApi.md#visualizeingredients) | **POST** /recipes/visualizeIngredients | Ingredients Widget


# **autocompleteIngredientSearch**
```objc
-(NSURLSessionTask*) autocompleteIngredientSearchWithQuery: (NSString*) query
    number: (NSNumber*) number
    metaInformation: (NSNumber*) metaInformation
    intolerances: (NSString*) intolerances
        completionHandler: (void (^)(NSArray<OAIInlineResponse20024>* output, NSError* error)) handler;
```

Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* query = burger; // The (natural language) search query. (optional)
NSNumber* number = 10; // The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to @10)
NSNumber* metaInformation = false; // Whether to return more meta information about the ingredients. (optional)
NSString* intolerances = egg; // A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional)

OAIIngredientsApi*apiInstance = [[OAIIngredientsApi alloc] init];

// Autocomplete Ingredient Search
[apiInstance autocompleteIngredientSearchWithQuery:query
              number:number
              metaInformation:metaInformation
              intolerances:intolerances
          completionHandler: ^(NSArray<OAIInlineResponse20024>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIIngredientsApi->autocompleteIngredientSearch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The (natural language) search query. | [optional] 
 **number** | **NSNumber***| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to @10]
 **metaInformation** | **NSNumber***| Whether to return more meta information about the ingredients. | [optional] 
 **intolerances** | **NSString***| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 

### Return type

[**NSArray<OAIInlineResponse20024>***](OAIInlineResponse20024.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **computeIngredientAmount**
```objc
-(NSURLSessionTask*) computeIngredientAmountWithId: (NSNumber*) _id
    nutrient: (NSString*) nutrient
    target: (NSNumber*) target
    unit: (NSString*) unit
        completionHandler: (void (^)(OAIRecipesParseIngredientsNutritionWeightPerServing* output, NSError* error)) handler;
```

Compute Ingredient Amount

Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSNumber* _id = 9266; // The id of the ingredient you want the amount for.
NSString* nutrient = protein; // The target nutrient. See a list of supported nutrients.
NSNumber* target = 2; // The target number of the given nutrient.
NSString* unit = oz; // The target unit. (optional)

OAIIngredientsApi*apiInstance = [[OAIIngredientsApi alloc] init];

// Compute Ingredient Amount
[apiInstance computeIngredientAmountWithId:_id
              nutrient:nutrient
              target:target
              unit:unit
          completionHandler: ^(OAIRecipesParseIngredientsNutritionWeightPerServing* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIIngredientsApi->computeIngredientAmount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The id of the ingredient you want the amount for. | 
 **nutrient** | **NSString***| The target nutrient. See a list of supported nutrients. | 
 **target** | **NSNumber***| The target number of the given nutrient. | 
 **unit** | **NSString***| The target unit. | [optional] 

### Return type

[**OAIRecipesParseIngredientsNutritionWeightPerServing***](OAIRecipesParseIngredientsNutritionWeightPerServing.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientInformation**
```objc
-(NSURLSessionTask*) getIngredientInformationWithId: (NSNumber*) _id
    amount: (NSNumber*) amount
    unit: (NSString*) unit
        completionHandler: (void (^)(OAIInlineResponse20022* output, NSError* error)) handler;
```

Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSNumber* _id = 1; // The item's id.
NSNumber* amount = 150; // The amount of this ingredient. (optional)
NSString* unit = grams; // The unit for the given amount. (optional)

OAIIngredientsApi*apiInstance = [[OAIIngredientsApi alloc] init];

// Get Ingredient Information
[apiInstance getIngredientInformationWithId:_id
              amount:amount
              unit:unit
          completionHandler: ^(OAIInlineResponse20022* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIIngredientsApi->getIngredientInformation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The item&#39;s id. | 
 **amount** | **NSNumber***| The amount of this ingredient. | [optional] 
 **unit** | **NSString***| The unit for the given amount. | [optional] 

### Return type

[**OAIInlineResponse20022***](OAIInlineResponse20022.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientSubstitutes**
```objc
-(NSURLSessionTask*) getIngredientSubstitutesWithIngredientName: (NSString*) ingredientName
        completionHandler: (void (^)(OAIInlineResponse20026* output, NSError* error)) handler;
```

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* ingredientName = butter; // The name of the ingredient you want to replace.

OAIIngredientsApi*apiInstance = [[OAIIngredientsApi alloc] init];

// Get Ingredient Substitutes
[apiInstance getIngredientSubstitutesWithIngredientName:ingredientName
          completionHandler: ^(OAIInlineResponse20026* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIIngredientsApi->getIngredientSubstitutes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **NSString***| The name of the ingredient you want to replace. | 

### Return type

[**OAIInlineResponse20026***](OAIInlineResponse20026.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientSubstitutesByID**
```objc
-(NSURLSessionTask*) getIngredientSubstitutesByIDWithId: (NSNumber*) _id
        completionHandler: (void (^)(OAIInlineResponse20026* output, NSError* error)) handler;
```

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSNumber* _id = 1; // The item's id.

OAIIngredientsApi*apiInstance = [[OAIIngredientsApi alloc] init];

// Get Ingredient Substitutes by ID
[apiInstance getIngredientSubstitutesByIDWithId:_id
          completionHandler: ^(OAIInlineResponse20026* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIIngredientsApi->getIngredientSubstitutesByID: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The item&#39;s id. | 

### Return type

[**OAIInlineResponse20026***](OAIInlineResponse20026.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingredientSearch**
```objc
-(NSURLSessionTask*) ingredientSearchWithQuery: (NSString*) query
    addChildren: (NSNumber*) addChildren
    minProteinPercent: (NSNumber*) minProteinPercent
    maxProteinPercent: (NSNumber*) maxProteinPercent
    minFatPercent: (NSNumber*) minFatPercent
    maxFatPercent: (NSNumber*) maxFatPercent
    minCarbsPercent: (NSNumber*) minCarbsPercent
    maxCarbsPercent: (NSNumber*) maxCarbsPercent
    metaInformation: (NSNumber*) metaInformation
    intolerances: (NSString*) intolerances
    sort: (NSString*) sort
    sortDirection: (NSString*) sortDirection
    offset: (NSNumber*) offset
    number: (NSNumber*) number
        completionHandler: (void (^)(OAIInlineResponse20025* output, NSError* error)) handler;
```

Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* query = burger; // The (natural language) search query. (optional)
NSNumber* addChildren = true; // Whether to add children of found foods. (optional)
NSNumber* minProteinPercent = 10; // The minimum percentage of protein the food must have (between 0 and 100). (optional)
NSNumber* maxProteinPercent = 90; // The maximum percentage of protein the food can have (between 0 and 100). (optional)
NSNumber* minFatPercent = 10; // The minimum percentage of fat the food must have (between 0 and 100). (optional)
NSNumber* maxFatPercent = 90; // The maximum percentage of fat the food can have (between 0 and 100). (optional)
NSNumber* minCarbsPercent = 10; // The minimum percentage of carbs the food must have (between 0 and 100). (optional)
NSNumber* maxCarbsPercent = 90; // The maximum percentage of carbs the food can have (between 0 and 100). (optional)
NSNumber* metaInformation = false; // Whether to return more meta information about the ingredients. (optional)
NSString* intolerances = egg; // A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional)
NSString* sort = calories; // The strategy to sort recipes by. See a full list of supported sorting options. (optional)
NSString* sortDirection = asc; // The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). (optional)
NSNumber* offset = @56; // The number of results to skip (between 0 and 900). (optional)
NSNumber* number = 10; // The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to @10)

OAIIngredientsApi*apiInstance = [[OAIIngredientsApi alloc] init];

// Ingredient Search
[apiInstance ingredientSearchWithQuery:query
              addChildren:addChildren
              minProteinPercent:minProteinPercent
              maxProteinPercent:maxProteinPercent
              minFatPercent:minFatPercent
              maxFatPercent:maxFatPercent
              minCarbsPercent:minCarbsPercent
              maxCarbsPercent:maxCarbsPercent
              metaInformation:metaInformation
              intolerances:intolerances
              sort:sort
              sortDirection:sortDirection
              offset:offset
              number:number
          completionHandler: ^(OAIInlineResponse20025* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIIngredientsApi->ingredientSearch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The (natural language) search query. | [optional] 
 **addChildren** | **NSNumber***| Whether to add children of found foods. | [optional] 
 **minProteinPercent** | **NSNumber***| The minimum percentage of protein the food must have (between 0 and 100). | [optional] 
 **maxProteinPercent** | **NSNumber***| The maximum percentage of protein the food can have (between 0 and 100). | [optional] 
 **minFatPercent** | **NSNumber***| The minimum percentage of fat the food must have (between 0 and 100). | [optional] 
 **maxFatPercent** | **NSNumber***| The maximum percentage of fat the food can have (between 0 and 100). | [optional] 
 **minCarbsPercent** | **NSNumber***| The minimum percentage of carbs the food must have (between 0 and 100). | [optional] 
 **maxCarbsPercent** | **NSNumber***| The maximum percentage of carbs the food can have (between 0 and 100). | [optional] 
 **metaInformation** | **NSNumber***| Whether to return more meta information about the ingredients. | [optional] 
 **intolerances** | **NSString***| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 
 **sort** | **NSString***| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] 
 **sortDirection** | **NSString***| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] 
 **offset** | **NSNumber***| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **NSNumber***| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to @10]

### Return type

[**OAIInlineResponse20025***](OAIInlineResponse20025.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingredientsByIDImage**
```objc
-(NSURLSessionTask*) ingredientsByIDImageWithId: (NSNumber*) _id
    measure: (NSString*) measure
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Ingredients by ID Image

Visualize a recipe's ingredient list.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSNumber* _id = 1082038; // The recipe id.
NSString* measure = metric; // Whether the the measures should be 'us' or 'metric'. (optional)

OAIIngredientsApi*apiInstance = [[OAIIngredientsApi alloc] init];

// Ingredients by ID Image
[apiInstance ingredientsByIDImageWithId:_id
              measure:measure
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIIngredientsApi->ingredientsByIDImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The recipe id. | 
 **measure** | **NSString***| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] 

### Return type

**NSObject***

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mapIngredientsToGroceryProducts**
```objc
-(NSURLSessionTask*) mapIngredientsToGroceryProductsWithInlineObject2: (OAIInlineObject2*) inlineObject2
        completionHandler: (void (^)(NSArray<OAIInlineResponse20034>* output, NSError* error)) handler;
```

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


OAIInlineObject2* inlineObject2 = [[OAIInlineObject2 alloc] init]; // 

OAIIngredientsApi*apiInstance = [[OAIIngredientsApi alloc] init];

// Map Ingredients to Grocery Products
[apiInstance mapIngredientsToGroceryProductsWithInlineObject2:inlineObject2
          completionHandler: ^(NSArray<OAIInlineResponse20034>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIIngredientsApi->mapIngredientsToGroceryProducts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject2** | [**OAIInlineObject2***](OAIInlineObject2.md)|  | 

### Return type

[**NSArray<OAIInlineResponse20034>***](OAIInlineResponse20034.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeIngredients**
```objc
-(NSURLSessionTask*) visualizeIngredientsWithContentType: (NSString*) contentType
    language: (NSString*) language
    accept: (NSString*) accept
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Ingredients Widget

Visualize ingredients of a recipe. You can play around with that endpoint!

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* contentType = application/json; // The content type. (optional)
NSString* language = en; // The language of the input. Either 'en' or 'de'. (optional)
NSString* accept = application/json; // Accept header. (optional)

OAIIngredientsApi*apiInstance = [[OAIIngredientsApi alloc] init];

// Ingredients Widget
[apiInstance visualizeIngredientsWithContentType:contentType
              language:language
              accept:accept
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIIngredientsApi->visualizeIngredients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **NSString***| The content type. | [optional] 
 **language** | **NSString***| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 
 **accept** | **NSString***| Accept header. | [optional] 

### Return type

**NSString***

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

