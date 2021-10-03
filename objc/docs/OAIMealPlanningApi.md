# OAIMealPlanningApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMealPlanTemplate**](OAIMealPlanningApi.md#addmealplantemplate) | **POST** /mealplanner/{username}/templates | Add Meal Plan Template
[**addToMealPlan**](OAIMealPlanningApi.md#addtomealplan) | **POST** /mealplanner/{username}/items | Add to Meal Plan
[**addToShoppingList**](OAIMealPlanningApi.md#addtoshoppinglist) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List
[**clearMealPlanDay**](OAIMealPlanningApi.md#clearmealplanday) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
[**connectUser**](OAIMealPlanningApi.md#connectuser) | **POST** /users/connect | Connect User
[**deleteFromMealPlan**](OAIMealPlanningApi.md#deletefrommealplan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan
[**deleteFromShoppingList**](OAIMealPlanningApi.md#deletefromshoppinglist) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
[**deleteMealPlanTemplate**](OAIMealPlanningApi.md#deletemealplantemplate) | **DELETE** /mealplanner/{username}/templates/{id} | Delete Meal Plan Template
[**generateMealPlan**](OAIMealPlanningApi.md#generatemealplan) | **GET** /mealplanner/generate | Generate Meal Plan
[**generateShoppingList**](OAIMealPlanningApi.md#generateshoppinglist) | **POST** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
[**getMealPlanTemplate**](OAIMealPlanningApi.md#getmealplantemplate) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
[**getMealPlanTemplates**](OAIMealPlanningApi.md#getmealplantemplates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates
[**getMealPlanWeek**](OAIMealPlanningApi.md#getmealplanweek) | **GET** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
[**getShoppingList**](OAIMealPlanningApi.md#getshoppinglist) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List


# **addMealPlanTemplate**
```objc
-(NSURLSessionTask*) addMealPlanTemplateWithUsername: (NSString*) username
    hash: (NSString*) hash
    inlineObject6: (OAIInlineObject6*) inlineObject6
        completionHandler: (void (^)(OAIInlineResponse20040* output, NSError* error)) handler;
```

Add Meal Plan Template

Add a meal plan template for a user.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* username = dsky; // The username.
NSString* hash = 4b5v4398573406; // The private hash for the username.
OAIInlineObject6* inlineObject6 = [[OAIInlineObject6 alloc] init]; // 

OAIMealPlanningApi*apiInstance = [[OAIMealPlanningApi alloc] init];

// Add Meal Plan Template
[apiInstance addMealPlanTemplateWithUsername:username
              hash:hash
              inlineObject6:inlineObject6
          completionHandler: ^(OAIInlineResponse20040* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMealPlanningApi->addMealPlanTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| The username. | 
 **hash** | **NSString***| The private hash for the username. | 
 **inlineObject6** | [**OAIInlineObject6***](OAIInlineObject6.md)|  | 

### Return type

[**OAIInlineResponse20040***](OAIInlineResponse20040.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addToMealPlan**
```objc
-(NSURLSessionTask*) addToMealPlanWithUsername: (NSString*) username
    hash: (NSString*) hash
    inlineObject4: (OAIInlineObject4*) inlineObject4
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Add to Meal Plan

Add an item to the user's meal plan.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* username = dsky; // The username.
NSString* hash = @"hash_example"; // The private hash for the username.
OAIInlineObject4* inlineObject4 = [[OAIInlineObject4 alloc] init]; // 

OAIMealPlanningApi*apiInstance = [[OAIMealPlanningApi alloc] init];

// Add to Meal Plan
[apiInstance addToMealPlanWithUsername:username
              hash:hash
              inlineObject4:inlineObject4
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMealPlanningApi->addToMealPlan: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| The username. | 
 **hash** | **NSString***| The private hash for the username. | 
 **inlineObject4** | [**OAIInlineObject4***](OAIInlineObject4.md)|  | 

### Return type

**NSObject***

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addToShoppingList**
```objc
-(NSURLSessionTask*) addToShoppingListWithUsername: (NSString*) username
    hash: (NSString*) hash
    inlineObject9: (OAIInlineObject9*) inlineObject9
        completionHandler: (void (^)(OAIInlineResponse20042* output, NSError* error)) handler;
```

Add to Shopping List

Add an item to the current shopping list of a user.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* username = dsky; // The username.
NSString* hash = @"hash_example"; // The private hash for the username.
OAIInlineObject9* inlineObject9 = [[OAIInlineObject9 alloc] init]; // 

OAIMealPlanningApi*apiInstance = [[OAIMealPlanningApi alloc] init];

// Add to Shopping List
[apiInstance addToShoppingListWithUsername:username
              hash:hash
              inlineObject9:inlineObject9
          completionHandler: ^(OAIInlineResponse20042* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMealPlanningApi->addToShoppingList: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| The username. | 
 **hash** | **NSString***| The private hash for the username. | 
 **inlineObject9** | [**OAIInlineObject9***](OAIInlineObject9.md)|  | 

### Return type

[**OAIInlineResponse20042***](OAIInlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clearMealPlanDay**
```objc
-(NSURLSessionTask*) clearMealPlanDayWithUsername: (NSString*) username
    date: (NSString*) date
    hash: (NSString*) hash
    inlineObject3: (OAIInlineObject3*) inlineObject3
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* username = dsky; // The username.
NSString* date = 2020-06-01; // The date in the format yyyy-mm-dd.
NSString* hash = @"hash_example"; // The private hash for the username.
OAIInlineObject3* inlineObject3 = [[OAIInlineObject3 alloc] init]; // 

OAIMealPlanningApi*apiInstance = [[OAIMealPlanningApi alloc] init];

// Clear Meal Plan Day
[apiInstance clearMealPlanDayWithUsername:username
              date:date
              hash:hash
              inlineObject3:inlineObject3
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMealPlanningApi->clearMealPlanDay: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| The username. | 
 **date** | **NSString***| The date in the format yyyy-mm-dd. | 
 **hash** | **NSString***| The private hash for the username. | 
 **inlineObject3** | [**OAIInlineObject3***](OAIInlineObject3.md)|  | 

### Return type

**NSObject***

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connectUser**
```objc
-(NSURLSessionTask*) connectUserWithBody: (NSObject*) body
        completionHandler: (void (^)(OAIInlineResponse20043* output, NSError* error)) handler;
```

Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSObject* body = NULL; // 

OAIMealPlanningApi*apiInstance = [[OAIMealPlanningApi alloc] init];

// Connect User
[apiInstance connectUserWithBody:body
          completionHandler: ^(OAIInlineResponse20043* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMealPlanningApi->connectUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **NSObject***|  | 

### Return type

[**OAIInlineResponse20043***](OAIInlineResponse20043.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFromMealPlan**
```objc
-(NSURLSessionTask*) deleteFromMealPlanWithUsername: (NSString*) username
    _id: (NSNumber*) _id
    hash: (NSString*) hash
    inlineObject5: (OAIInlineObject5*) inlineObject5
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Delete from Meal Plan

Delete an item from the user's meal plan.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* username = dsky; // The username.
NSNumber* _id = 15678; // The shopping list item id.
NSString* hash = @"hash_example"; // The private hash for the username.
OAIInlineObject5* inlineObject5 = [[OAIInlineObject5 alloc] init]; // 

OAIMealPlanningApi*apiInstance = [[OAIMealPlanningApi alloc] init];

// Delete from Meal Plan
[apiInstance deleteFromMealPlanWithUsername:username
              _id:_id
              hash:hash
              inlineObject5:inlineObject5
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMealPlanningApi->deleteFromMealPlan: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| The username. | 
 **_id** | **NSNumber***| The shopping list item id. | 
 **hash** | **NSString***| The private hash for the username. | 
 **inlineObject5** | [**OAIInlineObject5***](OAIInlineObject5.md)|  | 

### Return type

**NSObject***

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFromShoppingList**
```objc
-(NSURLSessionTask*) deleteFromShoppingListWithUsername: (NSString*) username
    _id: (NSNumber*) _id
    hash: (NSString*) hash
    inlineObject10: (OAIInlineObject10*) inlineObject10
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* username = dsky; // The username.
NSNumber* _id = 1; // The item's id.
NSString* hash = @"hash_example"; // The private hash for the username.
OAIInlineObject10* inlineObject10 = [[OAIInlineObject10 alloc] init]; // 

OAIMealPlanningApi*apiInstance = [[OAIMealPlanningApi alloc] init];

// Delete from Shopping List
[apiInstance deleteFromShoppingListWithUsername:username
              _id:_id
              hash:hash
              inlineObject10:inlineObject10
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMealPlanningApi->deleteFromShoppingList: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| The username. | 
 **_id** | **NSNumber***| The item&#39;s id. | 
 **hash** | **NSString***| The private hash for the username. | 
 **inlineObject10** | [**OAIInlineObject10***](OAIInlineObject10.md)|  | 

### Return type

**NSObject***

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMealPlanTemplate**
```objc
-(NSURLSessionTask*) deleteMealPlanTemplateWithUsername: (NSString*) username
    _id: (NSNumber*) _id
    hash: (NSString*) hash
    inlineObject7: (OAIInlineObject7*) inlineObject7
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Delete Meal Plan Template

Delete a meal plan template for a user.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* username = dsky; // The username.
NSNumber* _id = 1; // The item's id.
NSString* hash = 4b5v4398573406; // The private hash for the username.
OAIInlineObject7* inlineObject7 = [[OAIInlineObject7 alloc] init]; // 

OAIMealPlanningApi*apiInstance = [[OAIMealPlanningApi alloc] init];

// Delete Meal Plan Template
[apiInstance deleteMealPlanTemplateWithUsername:username
              _id:_id
              hash:hash
              inlineObject7:inlineObject7
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMealPlanningApi->deleteMealPlanTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| The username. | 
 **_id** | **NSNumber***| The item&#39;s id. | 
 **hash** | **NSString***| The private hash for the username. | 
 **inlineObject7** | [**OAIInlineObject7***](OAIInlineObject7.md)|  | 

### Return type

**NSObject***

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateMealPlan**
```objc
-(NSURLSessionTask*) generateMealPlanWithTimeFrame: (NSString*) timeFrame
    targetCalories: (NSNumber*) targetCalories
    diet: (NSString*) diet
    exclude: (NSString*) exclude
        completionHandler: (void (^)(OAIInlineResponse20037* output, NSError* error)) handler;
```

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* timeFrame = day; // Either for one \"day\" or an entire \"week\". (optional)
NSNumber* targetCalories = 2000; // What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. (optional)
NSString* diet = vegetarian; // Enter a diet that the meal plan has to adhere to. See a full list of supported diets. (optional)
NSString* exclude = shellfish, olives; // A comma-separated list of allergens or ingredients that must be excluded. (optional)

OAIMealPlanningApi*apiInstance = [[OAIMealPlanningApi alloc] init];

// Generate Meal Plan
[apiInstance generateMealPlanWithTimeFrame:timeFrame
              targetCalories:targetCalories
              diet:diet
              exclude:exclude
          completionHandler: ^(OAIInlineResponse20037* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMealPlanningApi->generateMealPlan: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeFrame** | **NSString***| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional] 
 **targetCalories** | **NSNumber***| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional] 
 **diet** | **NSString***| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional] 
 **exclude** | **NSString***| A comma-separated list of allergens or ingredients that must be excluded. | [optional] 

### Return type

[**OAIInlineResponse20037***](OAIInlineResponse20037.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateShoppingList**
```objc
-(NSURLSessionTask*) generateShoppingListWithUsername: (NSString*) username
    startDate: (NSString*) startDate
    endDate: (NSString*) endDate
    hash: (NSString*) hash
    inlineObject8: (OAIInlineObject8*) inlineObject8
        completionHandler: (void (^)(OAIInlineResponse20042* output, NSError* error)) handler;
```

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* username = dsky; // The username.
NSString* startDate = 2020-06-01; // The start date in the format yyyy-mm-dd.
NSString* endDate = 2020-06-07; // The end date in the format yyyy-mm-dd.
NSString* hash = @"hash_example"; // The private hash for the username.
OAIInlineObject8* inlineObject8 = [[OAIInlineObject8 alloc] init]; // 

OAIMealPlanningApi*apiInstance = [[OAIMealPlanningApi alloc] init];

// Generate Shopping List
[apiInstance generateShoppingListWithUsername:username
              startDate:startDate
              endDate:endDate
              hash:hash
              inlineObject8:inlineObject8
          completionHandler: ^(OAIInlineResponse20042* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMealPlanningApi->generateShoppingList: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| The username. | 
 **startDate** | **NSString***| The start date in the format yyyy-mm-dd. | 
 **endDate** | **NSString***| The end date in the format yyyy-mm-dd. | 
 **hash** | **NSString***| The private hash for the username. | 
 **inlineObject8** | [**OAIInlineObject8***](OAIInlineObject8.md)|  | 

### Return type

[**OAIInlineResponse20042***](OAIInlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMealPlanTemplate**
```objc
-(NSURLSessionTask*) getMealPlanTemplateWithUsername: (NSString*) username
    _id: (NSNumber*) _id
    hash: (NSString*) hash
        completionHandler: (void (^)(OAIInlineResponse20041* output, NSError* error)) handler;
```

Get Meal Plan Template

Get information about a meal plan template.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* username = dsky; // The username.
NSNumber* _id = 1; // The item's id.
NSString* hash = @"hash_example"; // The private hash for the username.

OAIMealPlanningApi*apiInstance = [[OAIMealPlanningApi alloc] init];

// Get Meal Plan Template
[apiInstance getMealPlanTemplateWithUsername:username
              _id:_id
              hash:hash
          completionHandler: ^(OAIInlineResponse20041* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMealPlanningApi->getMealPlanTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| The username. | 
 **_id** | **NSNumber***| The item&#39;s id. | 
 **hash** | **NSString***| The private hash for the username. | 

### Return type

[**OAIInlineResponse20041***](OAIInlineResponse20041.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMealPlanTemplates**
```objc
-(NSURLSessionTask*) getMealPlanTemplatesWithUsername: (NSString*) username
    hash: (NSString*) hash
        completionHandler: (void (^)(OAIInlineResponse20039* output, NSError* error)) handler;
```

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* username = dsky; // The username.
NSString* hash = @"hash_example"; // The private hash for the username.

OAIMealPlanningApi*apiInstance = [[OAIMealPlanningApi alloc] init];

// Get Meal Plan Templates
[apiInstance getMealPlanTemplatesWithUsername:username
              hash:hash
          completionHandler: ^(OAIInlineResponse20039* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMealPlanningApi->getMealPlanTemplates: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| The username. | 
 **hash** | **NSString***| The private hash for the username. | 

### Return type

[**OAIInlineResponse20039***](OAIInlineResponse20039.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMealPlanWeek**
```objc
-(NSURLSessionTask*) getMealPlanWeekWithUsername: (NSString*) username
    startDate: (NSString*) startDate
    hash: (NSString*) hash
        completionHandler: (void (^)(OAIInlineResponse20038* output, NSError* error)) handler;
```

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* username = dsky; // The username.
NSString* startDate = 2020-06-01; // The start date of the meal planned week in the format yyyy-mm-dd.
NSString* hash = @"hash_example"; // The private hash for the username.

OAIMealPlanningApi*apiInstance = [[OAIMealPlanningApi alloc] init];

// Get Meal Plan Week
[apiInstance getMealPlanWeekWithUsername:username
              startDate:startDate
              hash:hash
          completionHandler: ^(OAIInlineResponse20038* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMealPlanningApi->getMealPlanWeek: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| The username. | 
 **startDate** | **NSString***| The start date of the meal planned week in the format yyyy-mm-dd. | 
 **hash** | **NSString***| The private hash for the username. | 

### Return type

[**OAIInlineResponse20038***](OAIInlineResponse20038.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShoppingList**
```objc
-(NSURLSessionTask*) getShoppingListWithUsername: (NSString*) username
    hash: (NSString*) hash
        completionHandler: (void (^)(OAIInlineResponse20042* output, NSError* error)) handler;
```

Get Shopping List

Get the current shopping list for the given user.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* username = dsky; // The username.
NSString* hash = @"hash_example"; // The private hash for the username.

OAIMealPlanningApi*apiInstance = [[OAIMealPlanningApi alloc] init];

// Get Shopping List
[apiInstance getShoppingListWithUsername:username
              hash:hash
          completionHandler: ^(OAIInlineResponse20042* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMealPlanningApi->getShoppingList: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| The username. | 
 **hash** | **NSString***| The private hash for the username. | 

### Return type

[**OAIInlineResponse20042***](OAIInlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

