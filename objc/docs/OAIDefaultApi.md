# OAIDefaultApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeARecipeSearchQuery**](OAIDefaultApi.md#analyzearecipesearchquery) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query
[**analyzeRecipeInstructions**](OAIDefaultApi.md#analyzerecipeinstructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions
[**autocompleteIngredientSearch**](OAIDefaultApi.md#autocompleteingredientsearch) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search
[**autocompleteMenuItemSearch**](OAIDefaultApi.md#autocompletemenuitemsearch) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search
[**autocompleteProductSearch**](OAIDefaultApi.md#autocompleteproductsearch) | **GET** /food/products/suggest | Autocomplete Product Search
[**autocompleteRecipeSearch**](OAIDefaultApi.md#autocompleterecipesearch) | **GET** /recipes/autocomplete | Autocomplete Recipe Search
[**classifyCuisine**](OAIDefaultApi.md#classifycuisine) | **POST** /recipes/cuisine | Classify Cuisine
[**classifyGroceryProduct**](OAIDefaultApi.md#classifygroceryproduct) | **POST** /food/products/classify | Classify Grocery Product
[**classifyGroceryProductBulk**](OAIDefaultApi.md#classifygroceryproductbulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
[**convertAmounts**](OAIDefaultApi.md#convertamounts) | **GET** /recipes/convert | Convert Amounts
[**createRecipeCard**](OAIDefaultApi.md#createrecipecard) | **POST** /recipes/visualizeRecipe | Create Recipe Card
[**detectFoodInText**](OAIDefaultApi.md#detectfoodintext) | **POST** /food/detect | Detect Food in Text
[**extractRecipeFromWebsite**](OAIDefaultApi.md#extractrecipefromwebsite) | **GET** /recipes/extract | Extract Recipe from Website
[**generateMealPlan**](OAIDefaultApi.md#generatemealplan) | **GET** /recipes/mealplans/generate | Generate Meal Plan
[**getARandomFoodJoke**](OAIDefaultApi.md#getarandomfoodjoke) | **GET** /food/jokes/random | Get a Random Food Joke
[**getAnalyzedRecipeInstructions**](OAIDefaultApi.md#getanalyzedrecipeinstructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
[**getComparableProducts**](OAIDefaultApi.md#getcomparableproducts) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
[**getConversationSuggests**](OAIDefaultApi.md#getconversationsuggests) | **GET** /food/converse/suggest | Get Conversation Suggests
[**getDishPairingForWine**](OAIDefaultApi.md#getdishpairingforwine) | **GET** /food/wine/dishes | Get Dish Pairing for Wine
[**getFoodInformation**](OAIDefaultApi.md#getfoodinformation) | **GET** /food/ingredients/{id}/information | Get Food Information
[**getIngredientSubstitutes**](OAIDefaultApi.md#getingredientsubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
[**getIngredientSubstitutesByID**](OAIDefaultApi.md#getingredientsubstitutesbyid) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**getMenuItemInformation**](OAIDefaultApi.md#getmenuiteminformation) | **GET** /food/menuItems/{id} | Get Menu Item Information
[**getProductInformation**](OAIDefaultApi.md#getproductinformation) | **GET** /food/products/{id} | Get Product Information
[**getRandomFoodTrivia**](OAIDefaultApi.md#getrandomfoodtrivia) | **GET** /food/trivia/random | Get Random Food Trivia
[**getRandomRecipes**](OAIDefaultApi.md#getrandomrecipes) | **GET** /recipes/random | Get Random Recipes
[**getRecipeEquipmentByID**](OAIDefaultApi.md#getrecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget.json | Get Recipe Equipment by ID
[**getRecipeInformation**](OAIDefaultApi.md#getrecipeinformation) | **GET** /recipes/{id}/information | Get Recipe Information
[**getRecipeInformationBulk**](OAIDefaultApi.md#getrecipeinformationbulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk
[**getRecipeIngredientsByID**](OAIDefaultApi.md#getrecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget.json | Get Recipe Ingredients by ID
[**getRecipeNutritionByID**](OAIDefaultApi.md#getrecipenutritionbyid) | **GET** /recipes/{id}/nutritionWidget.json | Get Recipe Nutrition by ID
[**getRecipePriceBreakdownByID**](OAIDefaultApi.md#getrecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget.json | Get Recipe Price Breakdown by ID
[**getSimilarRecipes**](OAIDefaultApi.md#getsimilarrecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
[**getWineDescription**](OAIDefaultApi.md#getwinedescription) | **GET** /food/wine/description | Get Wine Description
[**getWinePairing**](OAIDefaultApi.md#getwinepairing) | **GET** /food/wine/pairing | Get Wine Pairing
[**getWineRecommendation**](OAIDefaultApi.md#getwinerecommendation) | **GET** /food/wine/recommendation | Get Wine Recommendation
[**guessNutritionByDishName**](OAIDefaultApi.md#guessnutritionbydishname) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**mapIngredientsToGroceryProducts**](OAIDefaultApi.md#mapingredientstogroceryproducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
[**parseIngredients**](OAIDefaultApi.md#parseingredients) | **POST** /recipes/parseIngredients | Parse Ingredients
[**quickAnswer**](OAIDefaultApi.md#quickanswer) | **GET** /recipes/quickAnswer | Quick Answer
[**searchFoodVideos**](OAIDefaultApi.md#searchfoodvideos) | **GET** /food/videos/search | Search Food Videos
[**searchGroceryProducts**](OAIDefaultApi.md#searchgroceryproducts) | **GET** /food/products/search | Search Grocery Products
[**searchGroceryProductsByUPC**](OAIDefaultApi.md#searchgroceryproductsbyupc) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
[**searchMenuItems**](OAIDefaultApi.md#searchmenuitems) | **GET** /food/menuItems/search | Search Menu Items
[**searchRecipes**](OAIDefaultApi.md#searchrecipes) | **GET** /recipes/search | Search Recipes
[**searchRecipesByIngredients**](OAIDefaultApi.md#searchrecipesbyingredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients
[**searchRecipesByNutrients**](OAIDefaultApi.md#searchrecipesbynutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients
[**searchRecipesComplex**](OAIDefaultApi.md#searchrecipescomplex) | **GET** /recipes/complexSearch | Search Recipes Complex
[**searchSiteContent**](OAIDefaultApi.md#searchsitecontent) | **GET** /food/site/search | Search Site Content
[**summarizeRecipe**](OAIDefaultApi.md#summarizerecipe) | **GET** /recipes/{id}/summary | Summarize Recipe
[**talkToChatbot**](OAIDefaultApi.md#talktochatbot) | **GET** /food/converse | Talk to Chatbot
[**visualizeEquipment**](OAIDefaultApi.md#visualizeequipment) | **POST** /recipes/visualizeEquipment | Visualize Equipment
[**visualizeIngredients**](OAIDefaultApi.md#visualizeingredients) | **POST** /recipes/visualizeIngredients | Visualize Ingredients
[**visualizeMenuItemNutritionByID**](OAIDefaultApi.md#visualizemenuitemnutritionbyid) | **GET** /food/menuItems/{id}/nutritionWidget | Visualize Menu Item Nutrition by ID
[**visualizePriceBreakdown**](OAIDefaultApi.md#visualizepricebreakdown) | **POST** /recipes/visualizePriceEstimator | Visualize Price Breakdown
[**visualizeProductNutritionByID**](OAIDefaultApi.md#visualizeproductnutritionbyid) | **GET** /food/products/{id}/nutritionWidget | Visualize Product Nutrition by ID
[**visualizeRecipeEquipmentByID**](OAIDefaultApi.md#visualizerecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget | Visualize Recipe Equipment by ID
[**visualizeRecipeIngredientsByID**](OAIDefaultApi.md#visualizerecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget | Visualize Recipe Ingredients by ID
[**visualizeRecipeNutrition**](OAIDefaultApi.md#visualizerecipenutrition) | **POST** /recipes/visualizeNutrition | Visualize Recipe Nutrition
[**visualizeRecipeNutritionByID**](OAIDefaultApi.md#visualizerecipenutritionbyid) | **GET** /recipes/{id}/nutritionWidget | Visualize Recipe Nutrition by ID
[**visualizeRecipePriceBreakdownByID**](OAIDefaultApi.md#visualizerecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget | Visualize Recipe Price Breakdown by ID


# **analyzeARecipeSearchQuery**
```objc
-(NSURLSessionTask*) analyzeARecipeSearchQueryWithQ: (NSString*) q
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example 
```objc

NSString* q = salmon with fusilli and no nuts; // The recipe search query.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Analyze a Recipe Search Query
[apiInstance analyzeARecipeSearchQueryWithQ:q
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->analyzeARecipeSearchQuery: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **NSString***| The recipe search query. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **analyzeRecipeInstructions**
```objc
-(NSURLSessionTask*) analyzeRecipeInstructionsWithInstructions: (NSString*) instructions
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Analyze Recipe Instructions

Extract ingredients and equipment from the recipe instruction steps.

### Example 
```objc

NSString* instructions = @"instructions_example"; // The instructions text.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Analyze Recipe Instructions
[apiInstance analyzeRecipeInstructionsWithInstructions:instructions
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->analyzeRecipeInstructions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instructions** | **NSString***| The instructions text. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocompleteIngredientSearch**
```objc
-(NSURLSessionTask*) autocompleteIngredientSearchWithQuery: (NSString*) query
    number: (NSNumber*) number
    metaInformation: (NSNumber*) metaInformation
    intolerances: (NSNumber*) intolerances
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Autocomplete Ingredient Search

Autocomplete a search for an ingredient.

### Example 
```objc

NSString* query = appl; // The query - a partial or full ingredient name.
NSNumber* number = 10; // The number of results to return (between 1 and 100). (optional)
NSNumber* metaInformation = false; // Whether to return more meta information about the ingredients. (optional)
NSNumber* intolerances = false; // A comma-separated list of intolerances. All found ingredients must not cause problems for people with one of the given tolerances. See a full list of supported intolerances. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Autocomplete Ingredient Search
[apiInstance autocompleteIngredientSearchWithQuery:query
              number:number
              metaInformation:metaInformation
              intolerances:intolerances
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->autocompleteIngredientSearch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The query - a partial or full ingredient name. | 
 **number** | **NSNumber***| The number of results to return (between 1 and 100). | [optional] 
 **metaInformation** | **NSNumber***| Whether to return more meta information about the ingredients. | [optional] 
 **intolerances** | **NSNumber***| A comma-separated list of intolerances. All found ingredients must not cause problems for people with one of the given tolerances. See a full list of supported intolerances. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocompleteMenuItemSearch**
```objc
-(NSURLSessionTask*) autocompleteMenuItemSearchWithQuery: (NSString*) query
    number: (NSNumber*) number
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example 
```objc

NSString* query = chicke; // The (partial) search query.
NSNumber* number = 10; // The number of results to return (between 1 and 25). (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Autocomplete Menu Item Search
[apiInstance autocompleteMenuItemSearchWithQuery:query
              number:number
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->autocompleteMenuItemSearch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The (partial) search query. | 
 **number** | **NSNumber***| The number of results to return (between 1 and 25). | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocompleteProductSearch**
```objc
-(NSURLSessionTask*) autocompleteProductSearchWithQuery: (NSString*) query
    number: (NSNumber*) number
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example 
```objc

NSString* query = chicke; // The (partial) search query.
NSNumber* number = 10; // The number of results to return (between 1 and 25). (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Autocomplete Product Search
[apiInstance autocompleteProductSearchWithQuery:query
              number:number
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->autocompleteProductSearch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The (partial) search query. | 
 **number** | **NSNumber***| The number of results to return (between 1 and 25). | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocompleteRecipeSearch**
```objc
-(NSURLSessionTask*) autocompleteRecipeSearchWithQuery: (NSString*) query
    number: (NSNumber*) number
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Autocomplete Recipe Search

Autocomplete a partial input to possible recipe names.

### Example 
```objc

NSString* query = burger; // The query to be autocompleted.
NSNumber* number = 10; // The number of results to return (between 1 and 25). (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Autocomplete Recipe Search
[apiInstance autocompleteRecipeSearchWithQuery:query
              number:number
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->autocompleteRecipeSearch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The query to be autocompleted. | 
 **number** | **NSNumber***| The number of results to return (between 1 and 25). | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classifyCuisine**
```objc
-(NSURLSessionTask*) classifyCuisineWithTitle: (NSString*) title
    ingredientList: (NSString*) ingredientList
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Classify Cuisine

Classify the recipe's cuisine.

### Example 
```objc

NSString* title = @"title_example"; // The title of the recipe.
NSString* ingredientList = @"ingredientList_example"; // The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Classify Cuisine
[apiInstance classifyCuisineWithTitle:title
              ingredientList:ingredientList
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->classifyCuisine: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **NSString***| The title of the recipe. | 
 **ingredientList** | **NSString***| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classifyGroceryProduct**
```objc
-(NSURLSessionTask*) classifyGroceryProductWithInlineObject8: (OAIInlineObject8*) inlineObject8
    locale: (NSString*) locale
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Classify Grocery Product

Given a grocery product title, this endpoint allows you to detect what basic ingredient it is.

### Example 
```objc

OAIInlineObject8* inlineObject8 = [[OAIInlineObject8 alloc] init]; // 
NSString* locale = en_US; // The locale of the returned category, supported is en_US and en_GB. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Classify Grocery Product
[apiInstance classifyGroceryProductWithInlineObject8:inlineObject8
              locale:locale
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->classifyGroceryProduct: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject8** | [**OAIInlineObject8***](OAIInlineObject8.md)|  | 
 **locale** | **NSString***| The locale of the returned category, supported is en_US and en_GB. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classifyGroceryProductBulk**
```objc
-(NSURLSessionTask*) classifyGroceryProductBulkWithBody: (NSObject*) body
    locale: (NSString*) locale
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Classify Grocery Product Bulk

Given a set of product jsons, get back classified products.

### Example 
```objc

NSObject* body = NULL; // 
NSString* locale = en_US; // The locale of the returned category, supported is en_US and en_GB. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Classify Grocery Product Bulk
[apiInstance classifyGroceryProductBulkWithBody:body
              locale:locale
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->classifyGroceryProductBulk: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **NSObject***|  | 
 **locale** | **NSString***| The locale of the returned category, supported is en_US and en_GB. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertAmounts**
```objc
-(NSURLSessionTask*) convertAmountsWithIngredientName: (NSString*) ingredientName
    sourceAmount: (NSNumber*) sourceAmount
    sourceUnit: (NSString*) sourceUnit
    targetUnit: (NSString*) targetUnit
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Convert Amounts

Convert amounts like \"2 cups of flour to grams\".

### Example 
```objc

NSString* ingredientName = flour; // The ingredient which you want to convert.
NSNumber* sourceAmount = 2.5; // The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
NSString* sourceUnit = cups; // The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
NSString* targetUnit = grams; // The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Convert Amounts
[apiInstance convertAmountsWithIngredientName:ingredientName
              sourceAmount:sourceAmount
              sourceUnit:sourceUnit
              targetUnit:targetUnit
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->convertAmounts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **NSString***| The ingredient which you want to convert. | 
 **sourceAmount** | **NSNumber***| The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;. | 
 **sourceUnit** | **NSString***| The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 
 **targetUnit** | **NSString***| The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRecipeCard**
```objc
-(NSURLSessionTask*) createRecipeCardWithTitle: (NSString*) title
    image: (NSURL*) image
    ingredients: (NSString*) ingredients
    instructions: (NSString*) instructions
    readyInMinutes: (NSNumber*) readyInMinutes
    servings: (NSNumber*) servings
    mask: (NSString*) mask
    backgroundImage: (NSString*) backgroundImage
    author: (NSString*) author
    backgroundColor: (NSString*) backgroundColor
    fontColor: (NSString*) fontColor
    source: (NSString*) source
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Create Recipe Card

Create Recipe Card.

### Example 
```objc

NSString* title = @"title_example"; // The title of the recipe.
NSURL* image = [NSURL fileURLWithPath:@"/path/to/file"]; // The binary image of the recipe as jpg.
NSString* ingredients = @"ingredients_example"; // The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
NSString* instructions = @"instructions_example"; // The instructions to make the recipe. One step per line (separate lines with \\\\n).
NSNumber* readyInMinutes = @56; // The number of minutes it takes to get the recipe on the table.
NSNumber* servings = @56; // The number of servings that you can make from the ingredients.
NSString* mask = @"mask_example"; // The mask to put over the recipe image (\\\"ellipseMask\\\", \\\"diamondMask\\\", \\\"diamondMask\\\", \\\"starMask\\\", \\\"heartMask\\\", \\\"potMask\\\", \\\"fishMask\\\").
NSString* backgroundImage = @"backgroundImage_example"; // The background image (\\\"none\\\",\\\"background1\\\", or \\\"background2\\\").
NSString* author = @"author_example"; // The author of the recipe. (optional)
NSString* backgroundColor = @"backgroundColor_example"; // The background color on the recipe card as a hex-string. (optional)
NSString* fontColor = @"fontColor_example"; // The font color on the recipe card as a hex-string. (optional)
NSString* source = @"source_example"; // The source of the recipe. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Create Recipe Card
[apiInstance createRecipeCardWithTitle:title
              image:image
              ingredients:ingredients
              instructions:instructions
              readyInMinutes:readyInMinutes
              servings:servings
              mask:mask
              backgroundImage:backgroundImage
              author:author
              backgroundColor:backgroundColor
              fontColor:fontColor
              source:source
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->createRecipeCard: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **NSString***| The title of the recipe. | 
 **image** | **NSURL*****NSURL***| The binary image of the recipe as jpg. | 
 **ingredients** | **NSString***| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 
 **instructions** | **NSString***| The instructions to make the recipe. One step per line (separate lines with \\\\n). | 
 **readyInMinutes** | **NSNumber***| The number of minutes it takes to get the recipe on the table. | 
 **servings** | **NSNumber***| The number of servings that you can make from the ingredients. | 
 **mask** | **NSString***| The mask to put over the recipe image (\\\&quot;ellipseMask\\\&quot;, \\\&quot;diamondMask\\\&quot;, \\\&quot;diamondMask\\\&quot;, \\\&quot;starMask\\\&quot;, \\\&quot;heartMask\\\&quot;, \\\&quot;potMask\\\&quot;, \\\&quot;fishMask\\\&quot;). | 
 **backgroundImage** | **NSString***| The background image (\\\&quot;none\\\&quot;,\\\&quot;background1\\\&quot;, or \\\&quot;background2\\\&quot;). | 
 **author** | **NSString***| The author of the recipe. | [optional] 
 **backgroundColor** | **NSString***| The background color on the recipe card as a hex-string. | [optional] 
 **fontColor** | **NSString***| The font color on the recipe card as a hex-string. | [optional] 
 **source** | **NSString***| The source of the recipe. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **detectFoodInText**
```objc
-(NSURLSessionTask*) detectFoodInTextWithText: (NSString*) text
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Detect Food in Text

Detect ingredients and dishes in texts. This task is also called Named Entity Recognition (NER). In our case the entities are foods. Either dishes, such as pizza and cheeseburger or ingredients, such as cucumber and almonds.

### Example 
```objc

NSString* text = @"text_example"; // The text in which food items such as dish names and ingredients should be detected in.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Detect Food in Text
[apiInstance detectFoodInTextWithText:text
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->detectFoodInText: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **NSString***| The text in which food items such as dish names and ingredients should be detected in. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extractRecipeFromWebsite**
```objc
-(NSURLSessionTask*) extractRecipeFromWebsiteWithUrl: (NSString*) url
    forceExtraction: (NSNumber*) forceExtraction
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Extract Recipe from Website

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and the equipment that is used.

### Example 
```objc

NSString* url = https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies; // The URL of the recipe page.
NSNumber* forceExtraction = true; // If true, the extraction will be triggered no matter whether we know the recipe already. Use that only if information is missing as this operation is slower. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Extract Recipe from Website
[apiInstance extractRecipeFromWebsiteWithUrl:url
              forceExtraction:forceExtraction
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->extractRecipeFromWebsite: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **NSString***| The URL of the recipe page. | 
 **forceExtraction** | **NSNumber***| If true, the extraction will be triggered no matter whether we know the recipe already. Use that only if information is missing as this operation is slower. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateMealPlan**
```objc
-(NSURLSessionTask*) generateMealPlanWithTimeFrame: (NSString*) timeFrame
    targetCalories: (NSNumber*) targetCalories
    diet: (NSString*) diet
    exclude: (NSString*) exclude
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example 
```objc

NSString* timeFrame = day; // Either for one \"day\" or an entire \"week\". (optional)
NSNumber* targetCalories = 2000; // What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. (optional)
NSString* diet = vegetarian; // Enter a diet that the meal plan has to adhere to. See a full list of supported diets. (optional)
NSString* exclude = shellfish, olives; // A comma-separated list of allergens or ingredients that must be excluded. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Generate Meal Plan
[apiInstance generateMealPlanWithTimeFrame:timeFrame
              targetCalories:targetCalories
              diet:diet
              exclude:exclude
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->generateMealPlan: %@", error);
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

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getARandomFoodJoke**
```objc
-(NSURLSessionTask*) getARandomFoodJokeWithCompletionHandler: 
        (void (^)(NSObject* output, NSError* error)) handler;
```

Get a Random Food Joke

Get a random joke that includes or is about food.

### Example 
```objc


OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get a Random Food Joke
[apiInstance getARandomFoodJokeWithCompletionHandler: 
          ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getARandomFoodJoke: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAnalyzedRecipeInstructions**
```objc
-(NSURLSessionTask*) getAnalyzedRecipeInstructionsWithId: (NSNumber*) _id
    stepBreakdown: (NSNumber*) stepBreakdown
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and the equipment that is used.

### Example 
```objc

NSNumber* _id = 324694; // The recipe id.
NSNumber* stepBreakdown = true; // Whether to break down the recipe steps even more. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Analyzed Recipe Instructions
[apiInstance getAnalyzedRecipeInstructionsWithId:_id
              stepBreakdown:stepBreakdown
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getAnalyzedRecipeInstructions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The recipe id. | 
 **stepBreakdown** | **NSNumber***| Whether to break down the recipe steps even more. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComparableProducts**
```objc
-(NSURLSessionTask*) getComparableProductsWithUpc: (NSNumber*) upc
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Comparable Products

Find comparable products to the given one.

### Example 
```objc

NSNumber* upc = 33698816271; // The UPC of the product for that you want to find comparable products.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Comparable Products
[apiInstance getComparableProductsWithUpc:upc
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getComparableProducts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **NSNumber***| The UPC of the product for that you want to find comparable products. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConversationSuggests**
```objc
-(NSURLSessionTask*) getConversationSuggestsWithQuery: (NSString*) query
    number: (NSNumber*) number
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chat bot.

### Example 
```objc

NSString* query = tell; // A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
NSNumber* number = 5; // The number of suggestions to return (between 1 and 25). (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Conversation Suggests
[apiInstance getConversationSuggestsWithQuery:query
              number:number
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getConversationSuggests: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | 
 **number** | **NSNumber***| The number of suggestions to return (between 1 and 25). | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDishPairingForWine**
```objc
-(NSURLSessionTask*) getDishPairingForWineWithWine: (NSString*) wine
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Dish Pairing for Wine

Get a dish that goes well with a given wine.

### Example 
```objc

NSString* wine = malbec; // The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Dish Pairing for Wine
[apiInstance getDishPairingForWineWithWine:wine
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getDishPairingForWine: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **NSString***| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFoodInformation**
```objc
-(NSURLSessionTask*) getFoodInformationWithId: (NSNumber*) _id
    amount: (NSNumber*) amount
    unit: (NSString*) unit
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Food Information

Get information about a certain food (ingredient).

### Example 
```objc

NSNumber* _id = 9266; // The id of the food / ingredient.
NSNumber* amount = 150; // The amount of that food. (optional)
NSString* unit = grams; // The unit for the given amount. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Food Information
[apiInstance getFoodInformationWithId:_id
              amount:amount
              unit:unit
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getFoodInformation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The id of the food / ingredient. | 
 **amount** | **NSNumber***| The amount of that food. | [optional] 
 **unit** | **NSString***| The unit for the given amount. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientSubstitutes**
```objc
-(NSURLSessionTask*) getIngredientSubstitutesWithIngredientName: (NSString*) ingredientName
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example 
```objc

NSString* ingredientName = butter; // The name of the ingredient you want to replace.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Ingredient Substitutes
[apiInstance getIngredientSubstitutesWithIngredientName:ingredientName
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getIngredientSubstitutes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **NSString***| The name of the ingredient you want to replace. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientSubstitutesByID**
```objc
-(NSURLSessionTask*) getIngredientSubstitutesByIDWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example 
```objc

NSNumber* _id = 1001; // The id of the ingredient you want substitutes for.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Ingredient Substitutes by ID
[apiInstance getIngredientSubstitutesByIDWithId:_id
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getIngredientSubstitutesByID: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The id of the ingredient you want substitutes for. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMenuItemInformation**
```objc
-(NSURLSessionTask*) getMenuItemInformationWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Menu Item Information

Get information about a certain menu item.

### Example 
```objc

NSNumber* _id = 424571; // The menu item id.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Menu Item Information
[apiInstance getMenuItemInformationWithId:_id
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getMenuItemInformation: %@", error);
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductInformation**
```objc
-(NSURLSessionTask*) getProductInformationWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Product Information

Get information about a packaged food product.

### Example 
```objc

NSNumber* _id = 22347; // The id of the packaged food product.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Product Information
[apiInstance getProductInformationWithId:_id
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getProductInformation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The id of the packaged food product. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRandomFoodTrivia**
```objc
-(NSURLSessionTask*) getRandomFoodTriviaWithCompletionHandler: 
        (void (^)(NSObject* output, NSError* error)) handler;
```

Get Random Food Trivia

Returns random food trivia.

### Example 
```objc


OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Random Food Trivia
[apiInstance getRandomFoodTriviaWithCompletionHandler: 
          ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getRandomFoodTrivia: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRandomRecipes**
```objc
-(NSURLSessionTask*) getRandomRecipesWithLimitLicense: (NSNumber*) limitLicense
    tags: (NSString*) tags
    number: (NSNumber*) number
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Random Recipes

Find random (popular) recipes.

### Example 
```objc

NSNumber* limitLicense = true; // Whether the recipes should have an open license that allows for displaying with proper attribution. (optional)
NSString* tags = vegetarian, dessert; // The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must adhere to. (optional)
NSNumber* number = 1; // The number of random recipes to be returned (between 1 and 100). (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Random Recipes
[apiInstance getRandomRecipesWithLimitLicense:limitLicense
              tags:tags
              number:number
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getRandomRecipes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limitLicense** | **NSNumber***| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional] 
 **tags** | **NSString***| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must adhere to. | [optional] 
 **number** | **NSNumber***| The number of random recipes to be returned (between 1 and 100). | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeEquipmentByID**
```objc
-(NSURLSessionTask*) getRecipeEquipmentByIDWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Recipe Equipment by ID

Get a recipe's equipment list.

### Example 
```objc

NSNumber* _id = 1003464; // The recipe id.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Recipe Equipment by ID
[apiInstance getRecipeEquipmentByIDWithId:_id
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getRecipeEquipmentByID: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The recipe id. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeInformation**
```objc
-(NSURLSessionTask*) getRecipeInformationWithId: (NSNumber*) _id
    includeNutrition: (NSNumber*) includeNutrition
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Recipe Information

Get information about a recipe.

### Example 
```objc

NSNumber* _id = 716429; // The id of the recipe.
NSNumber* includeNutrition = false; // Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Recipe Information
[apiInstance getRecipeInformationWithId:_id
              includeNutrition:includeNutrition
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getRecipeInformation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The id of the recipe. | 
 **includeNutrition** | **NSNumber***| Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeInformationBulk**
```objc
-(NSURLSessionTask*) getRecipeInformationBulkWithIds: (NSString*) ids
    includeNutrition: (NSNumber*) includeNutrition
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Recipe Information Bulk

Get information about multiple recipes at once. That is equivalent of calling the Get Recipe Information endpoint multiple times but is faster.

### Example 
```objc

NSString* ids = 715538,716429; // A comma-separated list of recipe ids.
NSNumber* includeNutrition = false; // Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Recipe Information Bulk
[apiInstance getRecipeInformationBulkWithIds:ids
              includeNutrition:includeNutrition
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getRecipeInformationBulk: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **NSString***| A comma-separated list of recipe ids. | 
 **includeNutrition** | **NSNumber***| Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeIngredientsByID**
```objc
-(NSURLSessionTask*) getRecipeIngredientsByIDWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Recipe Ingredients by ID

Get a recipe's ingredient list.

### Example 
```objc

NSNumber* _id = 1003464; // The recipe id.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Recipe Ingredients by ID
[apiInstance getRecipeIngredientsByIDWithId:_id
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getRecipeIngredientsByID: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The recipe id. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeNutritionByID**
```objc
-(NSURLSessionTask*) getRecipeNutritionByIDWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Recipe Nutrition by ID

Get a recipe's nutrition widget data.

### Example 
```objc

NSNumber* _id = 1003464; // The recipe id.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Recipe Nutrition by ID
[apiInstance getRecipeNutritionByIDWithId:_id
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getRecipeNutritionByID: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The recipe id. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipePriceBreakdownByID**
```objc
-(NSURLSessionTask*) getRecipePriceBreakdownByIDWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Recipe Price Breakdown by ID

Get a recipe's price breakdown data.

### Example 
```objc

NSNumber* _id = 1003464; // The recipe id.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Recipe Price Breakdown by ID
[apiInstance getRecipePriceBreakdownByIDWithId:_id
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getRecipePriceBreakdownByID: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The recipe id. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSimilarRecipes**
```objc
-(NSURLSessionTask*) getSimilarRecipesWithId: (NSNumber*) _id
    number: (NSNumber*) number
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Similar Recipes

Find recipes which are similar to the given one.

### Example 
```objc

NSNumber* _id = 715538; // The id of the source recipe to which similar recipes should be found.
NSNumber* number = 1; // The number of random recipes to be returned (between 1 and 100). (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Similar Recipes
[apiInstance getSimilarRecipesWithId:_id
              number:number
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getSimilarRecipes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The id of the source recipe to which similar recipes should be found. | 
 **number** | **NSNumber***| The number of random recipes to be returned (between 1 and 100). | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWineDescription**
```objc
-(NSURLSessionTask*) getWineDescriptionWithWine: (NSString*) wine
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Wine Description

Get the description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Example 
```objc

NSString* wine = merlot; // The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Wine Description
[apiInstance getWineDescriptionWithWine:wine
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getWineDescription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **NSString***| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWinePairing**
```objc
-(NSURLSessionTask*) getWinePairingWithFood: (NSString*) food
    maxPrice: (NSNumber*) maxPrice
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Example 
```objc

NSString* food = steak; // The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
NSNumber* maxPrice = 50; // The maximum price for the specific wine recommendation in USD. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Wine Pairing
[apiInstance getWinePairingWithFood:food
              maxPrice:maxPrice
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getWinePairing: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **NSString***| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). | 
 **maxPrice** | **NSNumber***| The maximum price for the specific wine recommendation in USD. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

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
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine, e.g. \"merlot\".

### Example 
```objc

NSString* wine = merlot; // The name of the wine to get a specific product recommendation for.
NSNumber* maxPrice = 50; // The maximum price for the specific wine recommendation in USD. (optional)
NSNumber* minRating = 0.7; // The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. (optional)
NSNumber* number = 3; // The number of wine recommendations expected (between 1 and 100). (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Wine Recommendation
[apiInstance getWineRecommendationWithWine:wine
              maxPrice:maxPrice
              minRating:minRating
              number:number
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getWineRecommendation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **NSString***| The name of the wine to get a specific product recommendation for. | 
 **maxPrice** | **NSNumber***| The maximum price for the specific wine recommendation in USD. | [optional] 
 **minRating** | **NSNumber***| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional] 
 **number** | **NSNumber***| The number of wine recommendations expected (between 1 and 100). | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **guessNutritionByDishName**
```objc
-(NSURLSessionTask*) guessNutritionByDishNameWithTitle: (NSString*) title
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Guess Nutrition by Dish Name

Guess the macro nutrients of a dish given its title.

### Example 
```objc

NSString* title = Spaghetti Aglio et Olio; // The title of the dish.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Guess Nutrition by Dish Name
[apiInstance guessNutritionByDishNameWithTitle:title
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->guessNutritionByDishName: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **NSString***| The title of the dish. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mapIngredientsToGroceryProducts**
```objc
-(NSURLSessionTask*) mapIngredientsToGroceryProductsWithBody: (NSObject*) body
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example 
```objc

NSObject* body = NULL; // 

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Map Ingredients to Grocery Products
[apiInstance mapIngredientsToGroceryProductsWithBody:body
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->mapIngredientsToGroceryProducts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **NSObject***|  | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **parseIngredients**
```objc
-(NSURLSessionTask*) parseIngredientsWithIngredientList: (NSString*) ingredientList
    servings: (NSNumber*) servings
    includeNutrition: (NSNumber*) includeNutrition
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Parse Ingredients

Extract an ingredient from plain text.

### Example 
```objc

NSString* ingredientList = @"ingredientList_example"; // The ingredient list of the recipe, one ingredient per line.
NSNumber* servings = @56; // The number of servings that you can make from the ingredients.
NSNumber* includeNutrition = @56; // Whether nutrition data should be added to correctly parsed ingredients. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Parse Ingredients
[apiInstance parseIngredientsWithIngredientList:ingredientList
              servings:servings
              includeNutrition:includeNutrition
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->parseIngredients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **NSString***| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **NSNumber***| The number of servings that you can make from the ingredients. | 
 **includeNutrition** | **NSNumber***| Whether nutrition data should be added to correctly parsed ingredients. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **quickAnswer**
```objc
-(NSURLSessionTask*) quickAnswerWithQ: (NSString*) q
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Quick Answer

Answer a nutrition related natural language question.

### Example 
```objc

NSString* q = How much vitamin c is in 2 apples?; // The nutrition-related question.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Quick Answer
[apiInstance quickAnswerWithQ:q
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->quickAnswer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **NSString***| The nutrition-related question. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchFoodVideos**
```objc
-(NSURLSessionTask*) searchFoodVideosWithQuery: (NSString*) query
    type: (NSString*) type
    cuisine: (NSString*) cuisine
    diet: (NSString*) diet
    includeIngredients: (NSString*) includeIngredients
    excludeIngredients: (NSString*) excludeIngredients
    minLength: (NSNumber*) minLength
    maxLength: (NSNumber*) maxLength
    offset: (NSNumber*) offset
    number: (NSNumber*) number
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Search Food Videos

Find recipe and other food related videos.

### Example 
```objc

NSString* query = chicken soup; // The search query.
NSString* type = main course; // The type of the recipes. See a full list of supported meal types. (optional)
NSString* cuisine = italian; // The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. (optional)
NSString* diet = vegetarian; // The diet to which the recipes must be compliant. See a full list of supported diets. (optional)
NSString* includeIngredients = tomato,cheese; // A comma-separated list of ingredients that should/must be contained in the recipe. (optional)
NSString* excludeIngredients = eggs; // A comma-separated list of ingredients or ingredient types that must not be contained in the recipes. (optional)
NSNumber* minLength = 0; // Minimum video length in seconds. (optional)
NSNumber* maxLength = 999; // Maximum video length in seconds. (optional)
NSNumber* offset = 0; // The number of results to skip (between 0 and 900). (optional)
NSNumber* number = 10; // The number of results to return (between 1 and 100). (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Search Food Videos
[apiInstance searchFoodVideosWithQuery:query
              type:type
              cuisine:cuisine
              diet:diet
              includeIngredients:includeIngredients
              excludeIngredients:excludeIngredients
              minLength:minLength
              maxLength:maxLength
              offset:offset
              number:number
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->searchFoodVideos: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The search query. | 
 **type** | **NSString***| The type of the recipes. See a full list of supported meal types. | [optional] 
 **cuisine** | **NSString***| The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. | [optional] 
 **diet** | **NSString***| The diet to which the recipes must be compliant. See a full list of supported diets. | [optional] 
 **includeIngredients** | **NSString***| A comma-separated list of ingredients that should/must be contained in the recipe. | [optional] 
 **excludeIngredients** | **NSString***| A comma-separated list of ingredients or ingredient types that must not be contained in the recipes. | [optional] 
 **minLength** | **NSNumber***| Minimum video length in seconds. | [optional] 
 **maxLength** | **NSNumber***| Maximum video length in seconds. | [optional] 
 **offset** | **NSNumber***| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **NSNumber***| The number of results to return (between 1 and 100). | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
    offset: (NSNumber*) offset
    number: (NSNumber*) number
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Search Grocery Products

Search packaged food products such as frozen pizza and snickers bars.

### Example 
```objc

NSString* query = snickers; // The search query.
NSNumber* minCalories = 50; // The minimum number of calories the product must have. (optional)
NSNumber* maxCalories = 800; // The maximum number of calories the product can have. (optional)
NSNumber* minCarbs = 10; // The minimum number of carbohydrates in grams the product must have. (optional)
NSNumber* maxCarbs = 100; // The maximum number of carbohydrates in grams the product can have. (optional)
NSNumber* minProtein = 10; // The minimum number of protein in grams the product must have. (optional)
NSNumber* maxProtein = 100; // The maximum number of protein in grams the product can have. (optional)
NSNumber* minFat = 1; // The minimum number of fat in grams the product must have. (optional)
NSNumber* maxFat = 100; // The maximum number of fat in grams the product can have. (optional)
NSNumber* offset = 0; // The offset number for paging (between 0 and 990). (optional)
NSNumber* number = 10; // The number of expected results (between 1 and 100). (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

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
              offset:offset
              number:number
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->searchGroceryProducts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The search query. | 
 **minCalories** | **NSNumber***| The minimum number of calories the product must have. | [optional] 
 **maxCalories** | **NSNumber***| The maximum number of calories the product can have. | [optional] 
 **minCarbs** | **NSNumber***| The minimum number of carbohydrates in grams the product must have. | [optional] 
 **maxCarbs** | **NSNumber***| The maximum number of carbohydrates in grams the product can have. | [optional] 
 **minProtein** | **NSNumber***| The minimum number of protein in grams the product must have. | [optional] 
 **maxProtein** | **NSNumber***| The maximum number of protein in grams the product can have. | [optional] 
 **minFat** | **NSNumber***| The minimum number of fat in grams the product must have. | [optional] 
 **maxFat** | **NSNumber***| The maximum number of fat in grams the product can have. | [optional] 
 **offset** | **NSNumber***| The offset number for paging (between 0 and 990). | [optional] 
 **number** | **NSNumber***| The number of expected results (between 1 and 100). | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGroceryProductsByUPC**
```objc
-(NSURLSessionTask*) searchGroceryProductsByUPCWithUpc: (NSNumber*) upc
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Search Grocery Products by UPC

Get information about a food product given its UPC.

### Example 
```objc

NSNumber* upc = 41631000564; // The product's UPC.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Search Grocery Products by UPC
[apiInstance searchGroceryProductsByUPCWithUpc:upc
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->searchGroceryProductsByUPC: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **NSNumber***| The product&#39;s UPC. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
    offset: (NSNumber*) offset
    number: (NSNumber*) number
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants such as McDonalds Big Mac or Starbucks Mocha.

### Example 
```objc

NSString* query = snickers; // The search query.
NSNumber* minCalories = 50; // The minimum number of calories the menu item must have. (optional)
NSNumber* maxCalories = 800; // The maximum number of calories the menu item can have. (optional)
NSNumber* minCarbs = 10; // The minimum number of carbohydrates in grams the menu item must have. (optional)
NSNumber* maxCarbs = 100; // The maximum number of carbohydrates in grams the menu item can have. (optional)
NSNumber* minProtein = 10; // The minimum number of protein in grams the menu item must have. (optional)
NSNumber* maxProtein = 100; // The maximum number of protein in grams the menu item can have. (optional)
NSNumber* minFat = 1; // The minimum number of fat in grams the menu item must have. (optional)
NSNumber* maxFat = 100; // The maximum number of fat in grams the menu item can have. (optional)
NSNumber* offset = 0; // The offset number for paging (between 0 and 990). (optional)
NSNumber* number = 100; // The number of expected results (between 1 and 10). (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

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
              offset:offset
              number:number
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->searchMenuItems: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The search query. | 
 **minCalories** | **NSNumber***| The minimum number of calories the menu item must have. | [optional] 
 **maxCalories** | **NSNumber***| The maximum number of calories the menu item can have. | [optional] 
 **minCarbs** | **NSNumber***| The minimum number of carbohydrates in grams the menu item must have. | [optional] 
 **maxCarbs** | **NSNumber***| The maximum number of carbohydrates in grams the menu item can have. | [optional] 
 **minProtein** | **NSNumber***| The minimum number of protein in grams the menu item must have. | [optional] 
 **maxProtein** | **NSNumber***| The maximum number of protein in grams the menu item can have. | [optional] 
 **minFat** | **NSNumber***| The minimum number of fat in grams the menu item must have. | [optional] 
 **maxFat** | **NSNumber***| The maximum number of fat in grams the menu item can have. | [optional] 
 **offset** | **NSNumber***| The offset number for paging (between 0 and 990). | [optional] 
 **number** | **NSNumber***| The number of expected results (between 1 and 10). | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipes**
```objc
-(NSURLSessionTask*) searchRecipesWithQuery: (NSString*) query
    cuisine: (NSString*) cuisine
    diet: (NSString*) diet
    excludeIngredients: (NSString*) excludeIngredients
    intolerances: (NSString*) intolerances
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    limitLicense: (NSNumber*) limitLicense
    instructionsRequired: (NSNumber*) instructionsRequired
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Search Recipes

Our recipe API includes over 360,000 recipes as well as an open source recipe database. Consider using the \"Search Recipes Complex\" endpoint for much more flexibility.

### Example 
```objc

NSString* query = burger; // The (natural language) recipe search query.
NSString* cuisine = italian; // The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. (optional)
NSString* diet = vegetarian; // The diet to which the recipes must be compliant. See a full list of supported diets. (optional)
NSString* excludeIngredients = eggs; // An comma-separated list of ingredients or ingredient types that must not be contained in the recipes. (optional)
NSString* intolerances = gluten; // A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances. (optional)
NSNumber* offset = 0; // The number of results to skip (between 0 and 900). (optional)
NSNumber* number = 10; // The number of results to return (between 1 and 100). (optional)
NSNumber* limitLicense = true; // Whether the recipes should have an open license that allows for displaying with proper attribution. (optional)
NSNumber* instructionsRequired = true; // Whether the recipes must have instructions. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Search Recipes
[apiInstance searchRecipesWithQuery:query
              cuisine:cuisine
              diet:diet
              excludeIngredients:excludeIngredients
              intolerances:intolerances
              offset:offset
              number:number
              limitLicense:limitLicense
              instructionsRequired:instructionsRequired
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->searchRecipes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The (natural language) recipe search query. | 
 **cuisine** | **NSString***| The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. | [optional] 
 **diet** | **NSString***| The diet to which the recipes must be compliant. See a full list of supported diets. | [optional] 
 **excludeIngredients** | **NSString***| An comma-separated list of ingredients or ingredient types that must not be contained in the recipes. | [optional] 
 **intolerances** | **NSString***| A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances. | [optional] 
 **offset** | **NSNumber***| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **NSNumber***| The number of results to return (between 1 and 100). | [optional] 
 **limitLicense** | **NSNumber***| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional] 
 **instructionsRequired** | **NSNumber***| Whether the recipes must have instructions. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipesByIngredients**
```objc
-(NSURLSessionTask*) searchRecipesByIngredientsWithIngredients: (NSString*) ingredients
    number: (NSNumber*) number
    limitLicense: (NSNumber*) limitLicense
    ranking: (NSNumber*) ranking
    ignorePantry: (NSNumber*) ignorePantry
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Search Recipes by Ingredients

Find recipes that use as many of the given ingredients as possible and have as little as possible missing ingredients. This is a \"what's in your fridge\" API endpoint.

### Example 
```objc

NSString* ingredients = apples,flour,sugar; // A comma-separated list of ingredients that the recipes should contain.
NSNumber* number = 10; // The maximal number of recipes to return (between 1 and 100). Defaults to 10. (optional)
NSNumber* limitLicense = true; // Whether the recipes should have an open license that allows for displaying with proper attribution. (optional)
NSNumber* ranking = 1; // Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. (optional)
NSNumber* ignorePantry = true; // Whether to ignore pantry ingredients such as water, salt, flour etc. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Search Recipes by Ingredients
[apiInstance searchRecipesByIngredientsWithIngredients:ingredients
              number:number
              limitLicense:limitLicense
              ranking:ranking
              ignorePantry:ignorePantry
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->searchRecipesByIngredients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **NSString***| A comma-separated list of ingredients that the recipes should contain. | 
 **number** | **NSNumber***| The maximal number of recipes to return (between 1 and 100). Defaults to 10. | [optional] 
 **limitLicense** | **NSNumber***| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional] 
 **ranking** | **NSNumber***| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional] 
 **ignorePantry** | **NSNumber***| Whether to ignore pantry ingredients such as water, salt, flour etc. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipesByNutrients**
```objc
-(NSURLSessionTask*) searchRecipesByNutrientsWithMinCarbs: (NSNumber*) minCarbs
    maxCarbs: (NSNumber*) maxCarbs
    minProtein: (NSNumber*) minProtein
    maxProtein: (NSNumber*) maxProtein
    minCalories: (NSNumber*) minCalories
    maxCalories: (NSNumber*) maxCalories
    minFat: (NSNumber*) minFat
    maxFat: (NSNumber*) maxFat
    minAlcohol: (NSNumber*) minAlcohol
    maxAlcohol: (NSNumber*) maxAlcohol
    minCaffeine: (NSNumber*) minCaffeine
    maxCaffeine: (NSNumber*) maxCaffeine
    minCopper: (NSNumber*) minCopper
    maxCopper: (NSNumber*) maxCopper
    minCalcium: (NSNumber*) minCalcium
    maxCalcium: (NSNumber*) maxCalcium
    minCholine: (NSNumber*) minCholine
    maxCholine: (NSNumber*) maxCholine
    minCholesterol: (NSNumber*) minCholesterol
    maxCholesterol: (NSNumber*) maxCholesterol
    minFluoride: (NSNumber*) minFluoride
    maxFluoride: (NSNumber*) maxFluoride
    minSaturatedFat: (NSNumber*) minSaturatedFat
    maxSaturatedFat: (NSNumber*) maxSaturatedFat
    minVitaminA: (NSNumber*) minVitaminA
    maxVitaminA: (NSNumber*) maxVitaminA
    minVitaminC: (NSNumber*) minVitaminC
    maxVitaminC: (NSNumber*) maxVitaminC
    minVitaminD: (NSNumber*) minVitaminD
    maxVitaminD: (NSNumber*) maxVitaminD
    minVitaminE: (NSNumber*) minVitaminE
    maxVitaminE: (NSNumber*) maxVitaminE
    minVitaminK: (NSNumber*) minVitaminK
    maxVitaminK: (NSNumber*) maxVitaminK
    minVitaminB1: (NSNumber*) minVitaminB1
    maxVitaminB1: (NSNumber*) maxVitaminB1
    minVitaminB2: (NSNumber*) minVitaminB2
    maxVitaminB2: (NSNumber*) maxVitaminB2
    minVitaminB5: (NSNumber*) minVitaminB5
    maxVitaminB5: (NSNumber*) maxVitaminB5
    minVitaminB3: (NSNumber*) minVitaminB3
    maxVitaminB3: (NSNumber*) maxVitaminB3
    minVitaminB6: (NSNumber*) minVitaminB6
    maxVitaminB6: (NSNumber*) maxVitaminB6
    minVitaminB12: (NSNumber*) minVitaminB12
    maxVitaminB12: (NSNumber*) maxVitaminB12
    minFiber: (NSNumber*) minFiber
    maxFiber: (NSNumber*) maxFiber
    minFolate: (NSNumber*) minFolate
    maxFolate: (NSNumber*) maxFolate
    minFolicAcid: (NSNumber*) minFolicAcid
    maxFolicAcid: (NSNumber*) maxFolicAcid
    minIodine: (NSNumber*) minIodine
    maxIodine: (NSNumber*) maxIodine
    minIron: (NSNumber*) minIron
    maxIron: (NSNumber*) maxIron
    minMagnesium: (NSNumber*) minMagnesium
    maxMagnesium: (NSNumber*) maxMagnesium
    minManganese: (NSNumber*) minManganese
    maxManganese: (NSNumber*) maxManganese
    minPhosphorus: (NSNumber*) minPhosphorus
    maxPhosphorus: (NSNumber*) maxPhosphorus
    minPotassium: (NSNumber*) minPotassium
    maxPotassium: (NSNumber*) maxPotassium
    minSelenium: (NSNumber*) minSelenium
    maxSelenium: (NSNumber*) maxSelenium
    minSodium: (NSNumber*) minSodium
    maxSodium: (NSNumber*) maxSodium
    minSugar: (NSNumber*) minSugar
    maxSugar: (NSNumber*) maxSugar
    minZinc: (NSNumber*) minZinc
    maxZinc: (NSNumber*) maxZinc
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    random: (NSNumber*) random
    limitLicense: (NSNumber*) limitLicense
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. All the returned recipes will have macro nutrients within the calories, protein, fat, and carbohydrate limits.

### Example 
```objc

NSNumber* minCarbs = 10; // The minimum number of carbohydrates in grams the recipe must have. (optional)
NSNumber* maxCarbs = 100; // The maximum number of carbohydrates in grams the recipe can have. (optional)
NSNumber* minProtein = 10; // The minimum number of protein in grams the recipe must have. (optional)
NSNumber* maxProtein = 100; // The maximum number of protein in grams the recipe can have. (optional)
NSNumber* minCalories = 50; // The minimum number of calories the recipe must have. (optional)
NSNumber* maxCalories = 800; // The maximum number of calories the recipe can have. (optional)
NSNumber* minFat = 1; // The minimum number of fat in grams the recipe must have. (optional)
NSNumber* maxFat = 100; // The maximum number of fat in grams the recipe can have. (optional)
NSNumber* minAlcohol = 0; // The minimum number of alcohol in grams the recipe must have. (optional)
NSNumber* maxAlcohol = 100; // The maximum number of alcohol in grams the recipe must have. (optional)
NSNumber* minCaffeine = 0; // The minimum number of milligrams of caffeine the recipe must have. (optional)
NSNumber* maxCaffeine = 100; // The maximum number of alcohol in grams the recipe must have. (optional)
NSNumber* minCopper = 0; // The minimum number of copper in milligrams the recipe must have. (optional)
NSNumber* maxCopper = 100; // The maximum number of copper in milligrams the recipe must have. (optional)
NSNumber* minCalcium = 0; // The minimum number of calcium in milligrams the recipe must have. (optional)
NSNumber* maxCalcium = 100; // The maximum number of calcium in milligrams the recipe must have. (optional)
NSNumber* minCholine = 0; // The minimum number of choline in milligrams the recipe must have. (optional)
NSNumber* maxCholine = 100; // The maximum number of choline in milligrams the recipe can have. (optional)
NSNumber* minCholesterol = 0; // The minimum number of cholesterol in milligrams the recipe must have. (optional)
NSNumber* maxCholesterol = 100; // The maximum number of cholesterol in milligrams the recipe must have. (optional)
NSNumber* minFluoride = 0; // The minimum number of fluoride in milligrams the recipe must have. (optional)
NSNumber* maxFluoride = 100; // The maximum number of fluoride in milligrams the recipe can have. (optional)
NSNumber* minSaturatedFat = 0; // The minimum number of saturated fat in grams the recipe must have. (optional)
NSNumber* maxSaturatedFat = 100; // The maximum number of saturated fat in grams the recipe must have. (optional)
NSNumber* minVitaminA = 0; // The minimum number of Vitamin A in IU the recipe must have. (optional)
NSNumber* maxVitaminA = 100; // The maximum number of Vitamin A in IU the recipe must have. (optional)
NSNumber* minVitaminC = 0; // The minimum number of Vitamin C milligrams the recipe must have. (optional)
NSNumber* maxVitaminC = 100; // The maximum number of Vitamin C in milligrams the recipe can have. (optional)
NSNumber* minVitaminD = 0; // The minimum number of Vitamin D in micrograms the recipe must have. (optional)
NSNumber* maxVitaminD = 100; // The maximum number of Vitamin D in micrograms the recipe must have. (optional)
NSNumber* minVitaminE = 0; // The minimum number of Vitamin E in milligrams the recipe must have. (optional)
NSNumber* maxVitaminE = 100; // The maximum number of Vitamin E in milligrams the recipe must have. (optional)
NSNumber* minVitaminK = 0; // The minimum number of Vitamin K in micrograms the recipe must have. (optional)
NSNumber* maxVitaminK = 100; // The maximum number of Vitamin K in micrograms the recipe must have. (optional)
NSNumber* minVitaminB1 = 0; // The minimum number of Vitamin B1 in milligrams the recipe must have. (optional)
NSNumber* maxVitaminB1 = 100; // The maximum number of Vitamin B1 in milligrams the recipe must have. (optional)
NSNumber* minVitaminB2 = 0; // The minimum number of Vitamin B2 in milligrams the recipe must have. (optional)
NSNumber* maxVitaminB2 = 100; // The maximum number of Vitamin B2 in milligrams the recipe must have. (optional)
NSNumber* minVitaminB5 = 0; // The minimum number of Vitamin B5 in milligrams the recipe must have. (optional)
NSNumber* maxVitaminB5 = 100; // The maximum number of Vitamin B5 in milligrams the recipe can have. (optional)
NSNumber* minVitaminB3 = 0; // The minimum number of Vitamin B3 in milligrams the recipe must have. (optional)
NSNumber* maxVitaminB3 = 100; // The maximum number of Vitamin B3 in milligrams the recipe can have. (optional)
NSNumber* minVitaminB6 = 0; // The minimum number of Vitamin B6 in milligrams the recipe must have. (optional)
NSNumber* maxVitaminB6 = 100; // The maximum number of Vitamin B6 in milligrams the recipe can have. (optional)
NSNumber* minVitaminB12 = 0; // The minimum number of Vitamin B12 in micrograms the recipe must have. (optional)
NSNumber* maxVitaminB12 = 100; // The maximum number of Vitamin B12 in micrograms the recipe must have. (optional)
NSNumber* minFiber = 0; // The minimum number of fiber in grams the recipe must have. (optional)
NSNumber* maxFiber = 100; // The maximum number of fiber in grams the recipe must have. (optional)
NSNumber* minFolate = 0; // The minimum number of folate in grams the recipe must have. (optional)
NSNumber* maxFolate = 100; // The maximum number of folate in grams the recipe must have. (optional)
NSNumber* minFolicAcid = 0; // The minimum number of folic acid in grams the recipe must have. (optional)
NSNumber* maxFolicAcid = 100; // The maximum number of folic acid in grams the recipe must have. (optional)
NSNumber* minIodine = 0; // The minimum number of Iodine in grams the recipe must have. (optional)
NSNumber* maxIodine = 100; // The maximum number of iodine in grams the recipe must have. (optional)
NSNumber* minIron = 0; // The minimum number of iron in milligrams the recipe must have. (optional)
NSNumber* maxIron = 100; // The maximum number of iron in milligrams the recipe can have. (optional)
NSNumber* minMagnesium = 0; // The minimum number of magnesium in milligrams the recipe must have. (optional)
NSNumber* maxMagnesium = 100; // The maximum number of magnesium in milligrams the recipe can have. (optional)
NSNumber* minManganese = 0; // The minimum number of manganese in milligrams the recipe must have. (optional)
NSNumber* maxManganese = 100; // The maximum number of manganese in milligrams the recipe can have. (optional)
NSNumber* minPhosphorus = 0; // The minimum number of phosphorus in milligrams the recipe must have. (optional)
NSNumber* maxPhosphorus = 100; // The maximum number of phosphorus in milligrams the recipe can have. (optional)
NSNumber* minPotassium = 0; // The minimum number of potassium in milligrams the recipe must have. (optional)
NSNumber* maxPotassium = 100; // The maximum number of potassium in milligrams the recipe can have. (optional)
NSNumber* minSelenium = 0; // The minimum number of selenium in grams the recipe must have. (optional)
NSNumber* maxSelenium = 100; // The maximum number of selenium in grams the recipe must have. (optional)
NSNumber* minSodium = 0; // The minimum number of sodium in milligrams the recipe must have. (optional)
NSNumber* maxSodium = 100; // The maximum number of sodium in milligrams the recipe must have. (optional)
NSNumber* minSugar = 0; // The minimum number of sugar in grams the recipe must have. (optional)
NSNumber* maxSugar = 100; // The maximum number of sugar in grams the recipe must have. (optional)
NSNumber* minZinc = 0; // The minimum number of zinc in milligrams the recipe must have. (optional)
NSNumber* maxZinc = 100; // The maximum number of zinc in milligrams the recipe can have. (optional)
NSNumber* offset = 0; // The offset number for paging (between 0 and 990). (optional)
NSNumber* number = 10; // The number of expected results (between 1 and 100). (optional)
NSNumber* random = false; // If true, every request will give you a random set of recipes within the requested limits. (optional)
NSNumber* limitLicense = true; // Whether the recipes should have an open license that allows for displaying with proper attribution. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Search Recipes by Nutrients
[apiInstance searchRecipesByNutrientsWithMinCarbs:minCarbs
              maxCarbs:maxCarbs
              minProtein:minProtein
              maxProtein:maxProtein
              minCalories:minCalories
              maxCalories:maxCalories
              minFat:minFat
              maxFat:maxFat
              minAlcohol:minAlcohol
              maxAlcohol:maxAlcohol
              minCaffeine:minCaffeine
              maxCaffeine:maxCaffeine
              minCopper:minCopper
              maxCopper:maxCopper
              minCalcium:minCalcium
              maxCalcium:maxCalcium
              minCholine:minCholine
              maxCholine:maxCholine
              minCholesterol:minCholesterol
              maxCholesterol:maxCholesterol
              minFluoride:minFluoride
              maxFluoride:maxFluoride
              minSaturatedFat:minSaturatedFat
              maxSaturatedFat:maxSaturatedFat
              minVitaminA:minVitaminA
              maxVitaminA:maxVitaminA
              minVitaminC:minVitaminC
              maxVitaminC:maxVitaminC
              minVitaminD:minVitaminD
              maxVitaminD:maxVitaminD
              minVitaminE:minVitaminE
              maxVitaminE:maxVitaminE
              minVitaminK:minVitaminK
              maxVitaminK:maxVitaminK
              minVitaminB1:minVitaminB1
              maxVitaminB1:maxVitaminB1
              minVitaminB2:minVitaminB2
              maxVitaminB2:maxVitaminB2
              minVitaminB5:minVitaminB5
              maxVitaminB5:maxVitaminB5
              minVitaminB3:minVitaminB3
              maxVitaminB3:maxVitaminB3
              minVitaminB6:minVitaminB6
              maxVitaminB6:maxVitaminB6
              minVitaminB12:minVitaminB12
              maxVitaminB12:maxVitaminB12
              minFiber:minFiber
              maxFiber:maxFiber
              minFolate:minFolate
              maxFolate:maxFolate
              minFolicAcid:minFolicAcid
              maxFolicAcid:maxFolicAcid
              minIodine:minIodine
              maxIodine:maxIodine
              minIron:minIron
              maxIron:maxIron
              minMagnesium:minMagnesium
              maxMagnesium:maxMagnesium
              minManganese:minManganese
              maxManganese:maxManganese
              minPhosphorus:minPhosphorus
              maxPhosphorus:maxPhosphorus
              minPotassium:minPotassium
              maxPotassium:maxPotassium
              minSelenium:minSelenium
              maxSelenium:maxSelenium
              minSodium:minSodium
              maxSodium:maxSodium
              minSugar:minSugar
              maxSugar:maxSugar
              minZinc:minZinc
              maxZinc:maxZinc
              offset:offset
              number:number
              random:random
              limitLicense:limitLicense
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->searchRecipesByNutrients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minCarbs** | **NSNumber***| The minimum number of carbohydrates in grams the recipe must have. | [optional] 
 **maxCarbs** | **NSNumber***| The maximum number of carbohydrates in grams the recipe can have. | [optional] 
 **minProtein** | **NSNumber***| The minimum number of protein in grams the recipe must have. | [optional] 
 **maxProtein** | **NSNumber***| The maximum number of protein in grams the recipe can have. | [optional] 
 **minCalories** | **NSNumber***| The minimum number of calories the recipe must have. | [optional] 
 **maxCalories** | **NSNumber***| The maximum number of calories the recipe can have. | [optional] 
 **minFat** | **NSNumber***| The minimum number of fat in grams the recipe must have. | [optional] 
 **maxFat** | **NSNumber***| The maximum number of fat in grams the recipe can have. | [optional] 
 **minAlcohol** | **NSNumber***| The minimum number of alcohol in grams the recipe must have. | [optional] 
 **maxAlcohol** | **NSNumber***| The maximum number of alcohol in grams the recipe must have. | [optional] 
 **minCaffeine** | **NSNumber***| The minimum number of milligrams of caffeine the recipe must have. | [optional] 
 **maxCaffeine** | **NSNumber***| The maximum number of alcohol in grams the recipe must have. | [optional] 
 **minCopper** | **NSNumber***| The minimum number of copper in milligrams the recipe must have. | [optional] 
 **maxCopper** | **NSNumber***| The maximum number of copper in milligrams the recipe must have. | [optional] 
 **minCalcium** | **NSNumber***| The minimum number of calcium in milligrams the recipe must have. | [optional] 
 **maxCalcium** | **NSNumber***| The maximum number of calcium in milligrams the recipe must have. | [optional] 
 **minCholine** | **NSNumber***| The minimum number of choline in milligrams the recipe must have. | [optional] 
 **maxCholine** | **NSNumber***| The maximum number of choline in milligrams the recipe can have. | [optional] 
 **minCholesterol** | **NSNumber***| The minimum number of cholesterol in milligrams the recipe must have. | [optional] 
 **maxCholesterol** | **NSNumber***| The maximum number of cholesterol in milligrams the recipe must have. | [optional] 
 **minFluoride** | **NSNumber***| The minimum number of fluoride in milligrams the recipe must have. | [optional] 
 **maxFluoride** | **NSNumber***| The maximum number of fluoride in milligrams the recipe can have. | [optional] 
 **minSaturatedFat** | **NSNumber***| The minimum number of saturated fat in grams the recipe must have. | [optional] 
 **maxSaturatedFat** | **NSNumber***| The maximum number of saturated fat in grams the recipe must have. | [optional] 
 **minVitaminA** | **NSNumber***| The minimum number of Vitamin A in IU the recipe must have. | [optional] 
 **maxVitaminA** | **NSNumber***| The maximum number of Vitamin A in IU the recipe must have. | [optional] 
 **minVitaminC** | **NSNumber***| The minimum number of Vitamin C milligrams the recipe must have. | [optional] 
 **maxVitaminC** | **NSNumber***| The maximum number of Vitamin C in milligrams the recipe can have. | [optional] 
 **minVitaminD** | **NSNumber***| The minimum number of Vitamin D in micrograms the recipe must have. | [optional] 
 **maxVitaminD** | **NSNumber***| The maximum number of Vitamin D in micrograms the recipe must have. | [optional] 
 **minVitaminE** | **NSNumber***| The minimum number of Vitamin E in milligrams the recipe must have. | [optional] 
 **maxVitaminE** | **NSNumber***| The maximum number of Vitamin E in milligrams the recipe must have. | [optional] 
 **minVitaminK** | **NSNumber***| The minimum number of Vitamin K in micrograms the recipe must have. | [optional] 
 **maxVitaminK** | **NSNumber***| The maximum number of Vitamin K in micrograms the recipe must have. | [optional] 
 **minVitaminB1** | **NSNumber***| The minimum number of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **maxVitaminB1** | **NSNumber***| The maximum number of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **minVitaminB2** | **NSNumber***| The minimum number of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **maxVitaminB2** | **NSNumber***| The maximum number of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **minVitaminB5** | **NSNumber***| The minimum number of Vitamin B5 in milligrams the recipe must have. | [optional] 
 **maxVitaminB5** | **NSNumber***| The maximum number of Vitamin B5 in milligrams the recipe can have. | [optional] 
 **minVitaminB3** | **NSNumber***| The minimum number of Vitamin B3 in milligrams the recipe must have. | [optional] 
 **maxVitaminB3** | **NSNumber***| The maximum number of Vitamin B3 in milligrams the recipe can have. | [optional] 
 **minVitaminB6** | **NSNumber***| The minimum number of Vitamin B6 in milligrams the recipe must have. | [optional] 
 **maxVitaminB6** | **NSNumber***| The maximum number of Vitamin B6 in milligrams the recipe can have. | [optional] 
 **minVitaminB12** | **NSNumber***| The minimum number of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **maxVitaminB12** | **NSNumber***| The maximum number of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **minFiber** | **NSNumber***| The minimum number of fiber in grams the recipe must have. | [optional] 
 **maxFiber** | **NSNumber***| The maximum number of fiber in grams the recipe must have. | [optional] 
 **minFolate** | **NSNumber***| The minimum number of folate in grams the recipe must have. | [optional] 
 **maxFolate** | **NSNumber***| The maximum number of folate in grams the recipe must have. | [optional] 
 **minFolicAcid** | **NSNumber***| The minimum number of folic acid in grams the recipe must have. | [optional] 
 **maxFolicAcid** | **NSNumber***| The maximum number of folic acid in grams the recipe must have. | [optional] 
 **minIodine** | **NSNumber***| The minimum number of Iodine in grams the recipe must have. | [optional] 
 **maxIodine** | **NSNumber***| The maximum number of iodine in grams the recipe must have. | [optional] 
 **minIron** | **NSNumber***| The minimum number of iron in milligrams the recipe must have. | [optional] 
 **maxIron** | **NSNumber***| The maximum number of iron in milligrams the recipe can have. | [optional] 
 **minMagnesium** | **NSNumber***| The minimum number of magnesium in milligrams the recipe must have. | [optional] 
 **maxMagnesium** | **NSNumber***| The maximum number of magnesium in milligrams the recipe can have. | [optional] 
 **minManganese** | **NSNumber***| The minimum number of manganese in milligrams the recipe must have. | [optional] 
 **maxManganese** | **NSNumber***| The maximum number of manganese in milligrams the recipe can have. | [optional] 
 **minPhosphorus** | **NSNumber***| The minimum number of phosphorus in milligrams the recipe must have. | [optional] 
 **maxPhosphorus** | **NSNumber***| The maximum number of phosphorus in milligrams the recipe can have. | [optional] 
 **minPotassium** | **NSNumber***| The minimum number of potassium in milligrams the recipe must have. | [optional] 
 **maxPotassium** | **NSNumber***| The maximum number of potassium in milligrams the recipe can have. | [optional] 
 **minSelenium** | **NSNumber***| The minimum number of selenium in grams the recipe must have. | [optional] 
 **maxSelenium** | **NSNumber***| The maximum number of selenium in grams the recipe must have. | [optional] 
 **minSodium** | **NSNumber***| The minimum number of sodium in milligrams the recipe must have. | [optional] 
 **maxSodium** | **NSNumber***| The maximum number of sodium in milligrams the recipe must have. | [optional] 
 **minSugar** | **NSNumber***| The minimum number of sugar in grams the recipe must have. | [optional] 
 **maxSugar** | **NSNumber***| The maximum number of sugar in grams the recipe must have. | [optional] 
 **minZinc** | **NSNumber***| The minimum number of zinc in milligrams the recipe must have. | [optional] 
 **maxZinc** | **NSNumber***| The maximum number of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **NSNumber***| The offset number for paging (between 0 and 990). | [optional] 
 **number** | **NSNumber***| The number of expected results (between 1 and 100). | [optional] 
 **random** | **NSNumber***| If true, every request will give you a random set of recipes within the requested limits. | [optional] 
 **limitLicense** | **NSNumber***| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipesComplex**
```objc
-(NSURLSessionTask*) searchRecipesComplexWithQuery: (NSString*) query
    cuisine: (NSString*) cuisine
    excludeCuisine: (NSString*) excludeCuisine
    diet: (NSString*) diet
    intolerances: (NSString*) intolerances
    equipment: (NSString*) equipment
    includeIngredients: (NSString*) includeIngredients
    excludeIngredients: (NSString*) excludeIngredients
    type: (NSString*) type
    instructionsRequired: (NSNumber*) instructionsRequired
    fillIngredients: (NSNumber*) fillIngredients
    addRecipeInformation: (NSNumber*) addRecipeInformation
    author: (NSString*) author
    tags: (NSString*) tags
    titleMatch: (NSString*) titleMatch
    sort: (NSString*) sort
    sortDirection: (NSString*) sortDirection
    minCarbs: (NSNumber*) minCarbs
    maxCarbs: (NSNumber*) maxCarbs
    minProtein: (NSNumber*) minProtein
    maxProtein: (NSNumber*) maxProtein
    minCalories: (NSNumber*) minCalories
    maxCalories: (NSNumber*) maxCalories
    minFat: (NSNumber*) minFat
    maxFat: (NSNumber*) maxFat
    minAlcohol: (NSNumber*) minAlcohol
    maxAlcohol: (NSNumber*) maxAlcohol
    minCaffeine: (NSNumber*) minCaffeine
    maxCaffeine: (NSNumber*) maxCaffeine
    minCopper: (NSNumber*) minCopper
    maxCopper: (NSNumber*) maxCopper
    minCalcium: (NSNumber*) minCalcium
    maxCalcium: (NSNumber*) maxCalcium
    minCholine: (NSNumber*) minCholine
    maxCholine: (NSNumber*) maxCholine
    minCholesterol: (NSNumber*) minCholesterol
    maxCholesterol: (NSNumber*) maxCholesterol
    minFluoride: (NSNumber*) minFluoride
    maxFluoride: (NSNumber*) maxFluoride
    minSaturatedFat: (NSNumber*) minSaturatedFat
    maxSaturatedFat: (NSNumber*) maxSaturatedFat
    minVitaminA: (NSNumber*) minVitaminA
    maxVitaminA: (NSNumber*) maxVitaminA
    minVitaminC: (NSNumber*) minVitaminC
    maxVitaminC: (NSNumber*) maxVitaminC
    minVitaminD: (NSNumber*) minVitaminD
    maxVitaminD: (NSNumber*) maxVitaminD
    minVitaminE: (NSNumber*) minVitaminE
    maxVitaminE: (NSNumber*) maxVitaminE
    minVitaminK: (NSNumber*) minVitaminK
    maxVitaminK: (NSNumber*) maxVitaminK
    minVitaminB1: (NSNumber*) minVitaminB1
    maxVitaminB1: (NSNumber*) maxVitaminB1
    minVitaminB2: (NSNumber*) minVitaminB2
    maxVitaminB2: (NSNumber*) maxVitaminB2
    minVitaminB5: (NSNumber*) minVitaminB5
    maxVitaminB5: (NSNumber*) maxVitaminB5
    minVitaminB3: (NSNumber*) minVitaminB3
    maxVitaminB3: (NSNumber*) maxVitaminB3
    minVitaminB6: (NSNumber*) minVitaminB6
    maxVitaminB6: (NSNumber*) maxVitaminB6
    minVitaminB12: (NSNumber*) minVitaminB12
    maxVitaminB12: (NSNumber*) maxVitaminB12
    minFiber: (NSNumber*) minFiber
    maxFiber: (NSNumber*) maxFiber
    minFolate: (NSNumber*) minFolate
    maxFolate: (NSNumber*) maxFolate
    minFolicAcid: (NSNumber*) minFolicAcid
    maxFolicAcid: (NSNumber*) maxFolicAcid
    minIodine: (NSNumber*) minIodine
    maxIodine: (NSNumber*) maxIodine
    minIron: (NSNumber*) minIron
    maxIron: (NSNumber*) maxIron
    minMagnesium: (NSNumber*) minMagnesium
    maxMagnesium: (NSNumber*) maxMagnesium
    minManganese: (NSNumber*) minManganese
    maxManganese: (NSNumber*) maxManganese
    minPhosphorus: (NSNumber*) minPhosphorus
    maxPhosphorus: (NSNumber*) maxPhosphorus
    minPotassium: (NSNumber*) minPotassium
    maxPotassium: (NSNumber*) maxPotassium
    minSelenium: (NSNumber*) minSelenium
    maxSelenium: (NSNumber*) maxSelenium
    minSodium: (NSNumber*) minSodium
    maxSodium: (NSNumber*) maxSodium
    minSugar: (NSNumber*) minSugar
    maxSugar: (NSNumber*) maxSugar
    minZinc: (NSNumber*) minZinc
    maxZinc: (NSNumber*) maxZinc
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    limitLicense: (NSNumber*) limitLicense
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Search Recipes Complex

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: Since this method combines searching by query, by ingredients, and by nutrients in one endpoint.

### Example 
```objc

NSString* query = pasta; // The (natural language) recipe search query.
NSString* cuisine = italian; // The cuisine(s) of the recipes. One or more comma separated (will be iterpreted as 'OR'). See a full list of supported cuisines. (optional)
NSString* excludeCuisine = greek; // The cuisine(s) the recipes must not match. One or more comma separated (will be iterpreted as 'AND'). See a full list of supported cuisines. (optional)
NSString* diet = vegetarian; // The diet to which the recipes must be compliant. See a full list of supported diets. (optional)
NSString* intolerances = gluten; // A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances. (optional)
NSString* equipment = pan; // The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\". (optional)
NSString* includeIngredients = tomato,cheese; // A comma-separated list of ingredients that should/must be contained in the recipe. (optional)
NSString* excludeIngredients = eggs; // A comma-separated list of ingredients or ingredient types that must not be contained in the recipes. (optional)
NSString* type = main course; // The type of the recipes. See a full list of supported meal types. (optional)
NSNumber* instructionsRequired = true; // Whether the recipes must have instructions. (optional)
NSNumber* fillIngredients = false; // Add information about the used and missing ingredients in each recipe. (optional)
NSNumber* addRecipeInformation = false; // If set to true, you get more information about the recipes returned. This saves the calls to get recipe information. (optional)
NSString* author = coffeebean; // The username of the recipe author. (optional)
NSString* tags = myCustomTag; // User defined tags that have to match. (optional)
NSString* titleMatch = Crock Pot; // A text that has to match in the title of the recipes. (optional)
NSString* sort = calories; // The strategy to sort recipes by. See a full list of supported sorting options. (optional)
NSString* sortDirection = asc; // The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). (optional)
NSNumber* minCarbs = 10; // The minimum number of carbohydrates in grams the recipe must have. (optional)
NSNumber* maxCarbs = 100; // The maximum number of carbohydrates in grams the recipe can have. (optional)
NSNumber* minProtein = 10; // The minimum number of protein in grams the recipe must have. (optional)
NSNumber* maxProtein = 100; // The maximum number of protein in grams the recipe can have. (optional)
NSNumber* minCalories = 50; // The minimum number of calories the recipe must have. (optional)
NSNumber* maxCalories = 800; // The maximum number of calories the recipe can have. (optional)
NSNumber* minFat = 1; // The minimum number of fat in grams the recipe must have. (optional)
NSNumber* maxFat = 100; // The maximum number of fat in grams the recipe can have. (optional)
NSNumber* minAlcohol = 0; // The minimum number of alcohol in grams the recipe must have. (optional)
NSNumber* maxAlcohol = 100; // The maximum number of alcohol in grams the recipe must have. (optional)
NSNumber* minCaffeine = 0; // The minimum number of milligrams of caffeine the recipe must have. (optional)
NSNumber* maxCaffeine = 100; // The maximum number of alcohol in grams the recipe must have. (optional)
NSNumber* minCopper = 0; // The minimum number of copper in milligrams the recipe must have. (optional)
NSNumber* maxCopper = 100; // The maximum number of copper in milligrams the recipe must have. (optional)
NSNumber* minCalcium = 0; // The minimum number of calcium in milligrams the recipe must have. (optional)
NSNumber* maxCalcium = 100; // The maximum number of calcium in milligrams the recipe must have. (optional)
NSNumber* minCholine = 0; // The minimum number of choline in milligrams the recipe must have. (optional)
NSNumber* maxCholine = 100; // The maximum number of choline in milligrams the recipe can have. (optional)
NSNumber* minCholesterol = 0; // The minimum number of cholesterol in milligrams the recipe must have. (optional)
NSNumber* maxCholesterol = 100; // The maximum number of cholesterol in milligrams the recipe must have. (optional)
NSNumber* minFluoride = 0; // The minimum number of fluoride in milligrams the recipe must have. (optional)
NSNumber* maxFluoride = 100; // The maximum number of fluoride in milligrams the recipe can have. (optional)
NSNumber* minSaturatedFat = 0; // The minimum number of saturated fat in grams the recipe must have. (optional)
NSNumber* maxSaturatedFat = 100; // The maximum number of saturated fat in grams the recipe must have. (optional)
NSNumber* minVitaminA = 0; // The minimum number of Vitamin A in IU the recipe must have. (optional)
NSNumber* maxVitaminA = 100; // The maximum number of Vitamin A in IU the recipe must have. (optional)
NSNumber* minVitaminC = 0; // The minimum number of Vitamin C milligrams the recipe must have. (optional)
NSNumber* maxVitaminC = 100; // The maximum number of Vitamin C in milligrams the recipe can have. (optional)
NSNumber* minVitaminD = 0; // The minimum number of Vitamin D in micrograms the recipe must have. (optional)
NSNumber* maxVitaminD = 100; // The maximum number of Vitamin D in micrograms the recipe must have. (optional)
NSNumber* minVitaminE = 0; // The minimum number of Vitamin E in milligrams the recipe must have. (optional)
NSNumber* maxVitaminE = 100; // The maximum number of Vitamin E in milligrams the recipe must have. (optional)
NSNumber* minVitaminK = 0; // The minimum number of Vitamin K in micrograms the recipe must have. (optional)
NSNumber* maxVitaminK = 100; // The maximum number of Vitamin K in micrograms the recipe must have. (optional)
NSNumber* minVitaminB1 = 0; // The minimum number of Vitamin B1 in milligrams the recipe must have. (optional)
NSNumber* maxVitaminB1 = 100; // The maximum number of Vitamin B1 in milligrams the recipe must have. (optional)
NSNumber* minVitaminB2 = 0; // The minimum number of Vitamin B2 in milligrams the recipe must have. (optional)
NSNumber* maxVitaminB2 = 100; // The maximum number of Vitamin B2 in milligrams the recipe must have. (optional)
NSNumber* minVitaminB5 = 0; // The minimum number of Vitamin B5 in milligrams the recipe must have. (optional)
NSNumber* maxVitaminB5 = 100; // The maximum number of Vitamin B5 in milligrams the recipe can have. (optional)
NSNumber* minVitaminB3 = 0; // The minimum number of Vitamin B3 in milligrams the recipe must have. (optional)
NSNumber* maxVitaminB3 = 100; // The maximum number of Vitamin B3 in milligrams the recipe can have. (optional)
NSNumber* minVitaminB6 = 0; // The minimum number of Vitamin B6 in milligrams the recipe must have. (optional)
NSNumber* maxVitaminB6 = 100; // The maximum number of Vitamin B6 in milligrams the recipe can have. (optional)
NSNumber* minVitaminB12 = 0; // The minimum number of Vitamin B12 in micrograms the recipe must have. (optional)
NSNumber* maxVitaminB12 = 100; // The maximum number of Vitamin B12 in micrograms the recipe must have. (optional)
NSNumber* minFiber = 0; // The minimum number of fiber in grams the recipe must have. (optional)
NSNumber* maxFiber = 100; // The maximum number of fiber in grams the recipe must have. (optional)
NSNumber* minFolate = 0; // The minimum number of folate in grams the recipe must have. (optional)
NSNumber* maxFolate = 100; // The maximum number of folate in grams the recipe must have. (optional)
NSNumber* minFolicAcid = 0; // The minimum number of folic acid in grams the recipe must have. (optional)
NSNumber* maxFolicAcid = 100; // The maximum number of folic acid in grams the recipe must have. (optional)
NSNumber* minIodine = 0; // The minimum number of Iodine in grams the recipe must have. (optional)
NSNumber* maxIodine = 100; // The maximum number of iodine in grams the recipe must have. (optional)
NSNumber* minIron = 0; // The minimum number of iron in milligrams the recipe must have. (optional)
NSNumber* maxIron = 100; // The maximum number of iron in milligrams the recipe can have. (optional)
NSNumber* minMagnesium = 0; // The minimum number of magnesium in milligrams the recipe must have. (optional)
NSNumber* maxMagnesium = 100; // The maximum number of magnesium in milligrams the recipe can have. (optional)
NSNumber* minManganese = 0; // The minimum number of manganese in milligrams the recipe must have. (optional)
NSNumber* maxManganese = 100; // The maximum number of manganese in milligrams the recipe can have. (optional)
NSNumber* minPhosphorus = 0; // The minimum number of phosphorus in milligrams the recipe must have. (optional)
NSNumber* maxPhosphorus = 100; // The maximum number of phosphorus in milligrams the recipe can have. (optional)
NSNumber* minPotassium = 0; // The minimum number of potassium in milligrams the recipe must have. (optional)
NSNumber* maxPotassium = 100; // The maximum number of potassium in milligrams the recipe can have. (optional)
NSNumber* minSelenium = 0; // The minimum number of selenium in grams the recipe must have. (optional)
NSNumber* maxSelenium = 100; // The maximum number of selenium in grams the recipe must have. (optional)
NSNumber* minSodium = 0; // The minimum number of sodium in milligrams the recipe must have. (optional)
NSNumber* maxSodium = 100; // The maximum number of sodium in milligrams the recipe must have. (optional)
NSNumber* minSugar = 0; // The minimum number of sugar in grams the recipe must have. (optional)
NSNumber* maxSugar = 100; // The maximum number of sugar in grams the recipe must have. (optional)
NSNumber* minZinc = 0; // The minimum number of zinc in milligrams the recipe must have. (optional)
NSNumber* maxZinc = 100; // The maximum number of zinc in milligrams the recipe can have. (optional)
NSNumber* offset = 0; // The offset number for paging (between 0 and 990). (optional)
NSNumber* number = 5; // The number of expected results (between 1 and 10). (optional)
NSNumber* limitLicense = true; // Whether the recipes should have an open license that allows for displaying with proper attribution. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Search Recipes Complex
[apiInstance searchRecipesComplexWithQuery:query
              cuisine:cuisine
              excludeCuisine:excludeCuisine
              diet:diet
              intolerances:intolerances
              equipment:equipment
              includeIngredients:includeIngredients
              excludeIngredients:excludeIngredients
              type:type
              instructionsRequired:instructionsRequired
              fillIngredients:fillIngredients
              addRecipeInformation:addRecipeInformation
              author:author
              tags:tags
              titleMatch:titleMatch
              sort:sort
              sortDirection:sortDirection
              minCarbs:minCarbs
              maxCarbs:maxCarbs
              minProtein:minProtein
              maxProtein:maxProtein
              minCalories:minCalories
              maxCalories:maxCalories
              minFat:minFat
              maxFat:maxFat
              minAlcohol:minAlcohol
              maxAlcohol:maxAlcohol
              minCaffeine:minCaffeine
              maxCaffeine:maxCaffeine
              minCopper:minCopper
              maxCopper:maxCopper
              minCalcium:minCalcium
              maxCalcium:maxCalcium
              minCholine:minCholine
              maxCholine:maxCholine
              minCholesterol:minCholesterol
              maxCholesterol:maxCholesterol
              minFluoride:minFluoride
              maxFluoride:maxFluoride
              minSaturatedFat:minSaturatedFat
              maxSaturatedFat:maxSaturatedFat
              minVitaminA:minVitaminA
              maxVitaminA:maxVitaminA
              minVitaminC:minVitaminC
              maxVitaminC:maxVitaminC
              minVitaminD:minVitaminD
              maxVitaminD:maxVitaminD
              minVitaminE:minVitaminE
              maxVitaminE:maxVitaminE
              minVitaminK:minVitaminK
              maxVitaminK:maxVitaminK
              minVitaminB1:minVitaminB1
              maxVitaminB1:maxVitaminB1
              minVitaminB2:minVitaminB2
              maxVitaminB2:maxVitaminB2
              minVitaminB5:minVitaminB5
              maxVitaminB5:maxVitaminB5
              minVitaminB3:minVitaminB3
              maxVitaminB3:maxVitaminB3
              minVitaminB6:minVitaminB6
              maxVitaminB6:maxVitaminB6
              minVitaminB12:minVitaminB12
              maxVitaminB12:maxVitaminB12
              minFiber:minFiber
              maxFiber:maxFiber
              minFolate:minFolate
              maxFolate:maxFolate
              minFolicAcid:minFolicAcid
              maxFolicAcid:maxFolicAcid
              minIodine:minIodine
              maxIodine:maxIodine
              minIron:minIron
              maxIron:maxIron
              minMagnesium:minMagnesium
              maxMagnesium:maxMagnesium
              minManganese:minManganese
              maxManganese:maxManganese
              minPhosphorus:minPhosphorus
              maxPhosphorus:maxPhosphorus
              minPotassium:minPotassium
              maxPotassium:maxPotassium
              minSelenium:minSelenium
              maxSelenium:maxSelenium
              minSodium:minSodium
              maxSodium:maxSodium
              minSugar:minSugar
              maxSugar:maxSugar
              minZinc:minZinc
              maxZinc:maxZinc
              offset:offset
              number:number
              limitLicense:limitLicense
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->searchRecipesComplex: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The (natural language) recipe search query. | 
 **cuisine** | **NSString***| The cuisine(s) of the recipes. One or more comma separated (will be iterpreted as &#39;OR&#39;). See a full list of supported cuisines. | [optional] 
 **excludeCuisine** | **NSString***| The cuisine(s) the recipes must not match. One or more comma separated (will be iterpreted as &#39;AND&#39;). See a full list of supported cuisines. | [optional] 
 **diet** | **NSString***| The diet to which the recipes must be compliant. See a full list of supported diets. | [optional] 
 **intolerances** | **NSString***| A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances. | [optional] 
 **equipment** | **NSString***| The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | [optional] 
 **includeIngredients** | **NSString***| A comma-separated list of ingredients that should/must be contained in the recipe. | [optional] 
 **excludeIngredients** | **NSString***| A comma-separated list of ingredients or ingredient types that must not be contained in the recipes. | [optional] 
 **type** | **NSString***| The type of the recipes. See a full list of supported meal types. | [optional] 
 **instructionsRequired** | **NSNumber***| Whether the recipes must have instructions. | [optional] 
 **fillIngredients** | **NSNumber***| Add information about the used and missing ingredients in each recipe. | [optional] 
 **addRecipeInformation** | **NSNumber***| If set to true, you get more information about the recipes returned. This saves the calls to get recipe information. | [optional] 
 **author** | **NSString***| The username of the recipe author. | [optional] 
 **tags** | **NSString***| User defined tags that have to match. | [optional] 
 **titleMatch** | **NSString***| A text that has to match in the title of the recipes. | [optional] 
 **sort** | **NSString***| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] 
 **sortDirection** | **NSString***| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] 
 **minCarbs** | **NSNumber***| The minimum number of carbohydrates in grams the recipe must have. | [optional] 
 **maxCarbs** | **NSNumber***| The maximum number of carbohydrates in grams the recipe can have. | [optional] 
 **minProtein** | **NSNumber***| The minimum number of protein in grams the recipe must have. | [optional] 
 **maxProtein** | **NSNumber***| The maximum number of protein in grams the recipe can have. | [optional] 
 **minCalories** | **NSNumber***| The minimum number of calories the recipe must have. | [optional] 
 **maxCalories** | **NSNumber***| The maximum number of calories the recipe can have. | [optional] 
 **minFat** | **NSNumber***| The minimum number of fat in grams the recipe must have. | [optional] 
 **maxFat** | **NSNumber***| The maximum number of fat in grams the recipe can have. | [optional] 
 **minAlcohol** | **NSNumber***| The minimum number of alcohol in grams the recipe must have. | [optional] 
 **maxAlcohol** | **NSNumber***| The maximum number of alcohol in grams the recipe must have. | [optional] 
 **minCaffeine** | **NSNumber***| The minimum number of milligrams of caffeine the recipe must have. | [optional] 
 **maxCaffeine** | **NSNumber***| The maximum number of alcohol in grams the recipe must have. | [optional] 
 **minCopper** | **NSNumber***| The minimum number of copper in milligrams the recipe must have. | [optional] 
 **maxCopper** | **NSNumber***| The maximum number of copper in milligrams the recipe must have. | [optional] 
 **minCalcium** | **NSNumber***| The minimum number of calcium in milligrams the recipe must have. | [optional] 
 **maxCalcium** | **NSNumber***| The maximum number of calcium in milligrams the recipe must have. | [optional] 
 **minCholine** | **NSNumber***| The minimum number of choline in milligrams the recipe must have. | [optional] 
 **maxCholine** | **NSNumber***| The maximum number of choline in milligrams the recipe can have. | [optional] 
 **minCholesterol** | **NSNumber***| The minimum number of cholesterol in milligrams the recipe must have. | [optional] 
 **maxCholesterol** | **NSNumber***| The maximum number of cholesterol in milligrams the recipe must have. | [optional] 
 **minFluoride** | **NSNumber***| The minimum number of fluoride in milligrams the recipe must have. | [optional] 
 **maxFluoride** | **NSNumber***| The maximum number of fluoride in milligrams the recipe can have. | [optional] 
 **minSaturatedFat** | **NSNumber***| The minimum number of saturated fat in grams the recipe must have. | [optional] 
 **maxSaturatedFat** | **NSNumber***| The maximum number of saturated fat in grams the recipe must have. | [optional] 
 **minVitaminA** | **NSNumber***| The minimum number of Vitamin A in IU the recipe must have. | [optional] 
 **maxVitaminA** | **NSNumber***| The maximum number of Vitamin A in IU the recipe must have. | [optional] 
 **minVitaminC** | **NSNumber***| The minimum number of Vitamin C milligrams the recipe must have. | [optional] 
 **maxVitaminC** | **NSNumber***| The maximum number of Vitamin C in milligrams the recipe can have. | [optional] 
 **minVitaminD** | **NSNumber***| The minimum number of Vitamin D in micrograms the recipe must have. | [optional] 
 **maxVitaminD** | **NSNumber***| The maximum number of Vitamin D in micrograms the recipe must have. | [optional] 
 **minVitaminE** | **NSNumber***| The minimum number of Vitamin E in milligrams the recipe must have. | [optional] 
 **maxVitaminE** | **NSNumber***| The maximum number of Vitamin E in milligrams the recipe must have. | [optional] 
 **minVitaminK** | **NSNumber***| The minimum number of Vitamin K in micrograms the recipe must have. | [optional] 
 **maxVitaminK** | **NSNumber***| The maximum number of Vitamin K in micrograms the recipe must have. | [optional] 
 **minVitaminB1** | **NSNumber***| The minimum number of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **maxVitaminB1** | **NSNumber***| The maximum number of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **minVitaminB2** | **NSNumber***| The minimum number of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **maxVitaminB2** | **NSNumber***| The maximum number of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **minVitaminB5** | **NSNumber***| The minimum number of Vitamin B5 in milligrams the recipe must have. | [optional] 
 **maxVitaminB5** | **NSNumber***| The maximum number of Vitamin B5 in milligrams the recipe can have. | [optional] 
 **minVitaminB3** | **NSNumber***| The minimum number of Vitamin B3 in milligrams the recipe must have. | [optional] 
 **maxVitaminB3** | **NSNumber***| The maximum number of Vitamin B3 in milligrams the recipe can have. | [optional] 
 **minVitaminB6** | **NSNumber***| The minimum number of Vitamin B6 in milligrams the recipe must have. | [optional] 
 **maxVitaminB6** | **NSNumber***| The maximum number of Vitamin B6 in milligrams the recipe can have. | [optional] 
 **minVitaminB12** | **NSNumber***| The minimum number of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **maxVitaminB12** | **NSNumber***| The maximum number of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **minFiber** | **NSNumber***| The minimum number of fiber in grams the recipe must have. | [optional] 
 **maxFiber** | **NSNumber***| The maximum number of fiber in grams the recipe must have. | [optional] 
 **minFolate** | **NSNumber***| The minimum number of folate in grams the recipe must have. | [optional] 
 **maxFolate** | **NSNumber***| The maximum number of folate in grams the recipe must have. | [optional] 
 **minFolicAcid** | **NSNumber***| The minimum number of folic acid in grams the recipe must have. | [optional] 
 **maxFolicAcid** | **NSNumber***| The maximum number of folic acid in grams the recipe must have. | [optional] 
 **minIodine** | **NSNumber***| The minimum number of Iodine in grams the recipe must have. | [optional] 
 **maxIodine** | **NSNumber***| The maximum number of iodine in grams the recipe must have. | [optional] 
 **minIron** | **NSNumber***| The minimum number of iron in milligrams the recipe must have. | [optional] 
 **maxIron** | **NSNumber***| The maximum number of iron in milligrams the recipe can have. | [optional] 
 **minMagnesium** | **NSNumber***| The minimum number of magnesium in milligrams the recipe must have. | [optional] 
 **maxMagnesium** | **NSNumber***| The maximum number of magnesium in milligrams the recipe can have. | [optional] 
 **minManganese** | **NSNumber***| The minimum number of manganese in milligrams the recipe must have. | [optional] 
 **maxManganese** | **NSNumber***| The maximum number of manganese in milligrams the recipe can have. | [optional] 
 **minPhosphorus** | **NSNumber***| The minimum number of phosphorus in milligrams the recipe must have. | [optional] 
 **maxPhosphorus** | **NSNumber***| The maximum number of phosphorus in milligrams the recipe can have. | [optional] 
 **minPotassium** | **NSNumber***| The minimum number of potassium in milligrams the recipe must have. | [optional] 
 **maxPotassium** | **NSNumber***| The maximum number of potassium in milligrams the recipe can have. | [optional] 
 **minSelenium** | **NSNumber***| The minimum number of selenium in grams the recipe must have. | [optional] 
 **maxSelenium** | **NSNumber***| The maximum number of selenium in grams the recipe must have. | [optional] 
 **minSodium** | **NSNumber***| The minimum number of sodium in milligrams the recipe must have. | [optional] 
 **maxSodium** | **NSNumber***| The maximum number of sodium in milligrams the recipe must have. | [optional] 
 **minSugar** | **NSNumber***| The minimum number of sugar in grams the recipe must have. | [optional] 
 **maxSugar** | **NSNumber***| The maximum number of sugar in grams the recipe must have. | [optional] 
 **minZinc** | **NSNumber***| The minimum number of zinc in milligrams the recipe must have. | [optional] 
 **maxZinc** | **NSNumber***| The maximum number of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **NSNumber***| The offset number for paging (between 0 and 990). | [optional] 
 **number** | **NSNumber***| The number of expected results (between 1 and 10). | [optional] 
 **limitLicense** | **NSNumber***| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchSiteContent**
```objc
-(NSURLSessionTask*) searchSiteContentWithQuery: (NSString*) query
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Search Site Content

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggests on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Example 
```objc

NSString* query = past; // The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Search Site Content
[apiInstance searchSiteContentWithQuery:query
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->searchSiteContent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **summarizeRecipe**
```objc
-(NSURLSessionTask*) summarizeRecipeWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Summarize Recipe

Summarize the recipe in a short text.

### Example 
```objc

NSNumber* _id = 4632; // The recipe id.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Summarize Recipe
[apiInstance summarizeRecipeWithId:_id
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->summarizeRecipe: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The recipe id. | 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **talkToChatbot**
```objc
-(NSURLSessionTask*) talkToChatbotWithText: (NSString*) text
    contextId: (NSString*) contextId
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chat bot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Example 
```objc

NSString* text = donut recipes; // The request / question / answer from the user to the chat bot.
NSString* contextId = 342938; // An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Talk to Chatbot
[apiInstance talkToChatbotWithText:text
              contextId:contextId
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->talkToChatbot: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **NSString***| The request / question / answer from the user to the chat bot. | 
 **contextId** | **NSString***| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeEquipment**
```objc
-(NSURLSessionTask*) visualizeEquipmentWithIngredientList: (NSString*) ingredientList
    servings: (NSNumber*) servings
    view: (NSString*) view
    defaultCss: (NSNumber*) defaultCss
    showBacklink: (NSNumber*) showBacklink
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Visualize Equipment

Visualize the equipment used to make a recipe.

### Example 
```objc

NSString* ingredientList = @"ingredientList_example"; // The ingredient list of the recipe, one ingredient per line.
NSNumber* servings = @56; // The number of servings.
NSString* view = @"view_example"; // Either \\\"grid\\\" or \\\"list\\\" as visualization of the equipment. (optional)
NSNumber* defaultCss = @56; // Whether the default CSS should be added to the response. (optional)
NSNumber* showBacklink = @56; // Whether to show a backlink to spoonacular. If set false, this call counts against your quota. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Visualize Equipment
[apiInstance visualizeEquipmentWithIngredientList:ingredientList
              servings:servings
              view:view
              defaultCss:defaultCss
              showBacklink:showBacklink
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->visualizeEquipment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **NSString***| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **NSNumber***| The number of servings. | 
 **view** | **NSString***| Either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot; as visualization of the equipment. | [optional] 
 **defaultCss** | **NSNumber***| Whether the default CSS should be added to the response. | [optional] 
 **showBacklink** | **NSNumber***| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeIngredients**
```objc
-(NSURLSessionTask*) visualizeIngredientsWithIngredientList: (NSString*) ingredientList
    servings: (NSNumber*) servings
    measure: (NSString*) measure
    view: (NSString*) view
    defaultCss: (NSNumber*) defaultCss
    showBacklink: (NSNumber*) showBacklink
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Visualize Ingredients

Visualize ingredients of a recipe.

### Example 
```objc

NSString* ingredientList = @"ingredientList_example"; // The ingredient list of the recipe, one ingredient per line.
NSNumber* servings = @56; // The number of servings.
NSString* measure = @"measure_example"; // The initial measure, either \\\"metric\\\" or \\\"us\\\". (optional)
NSString* view = @"view_example"; // Either \\\"grid\\\" or \\\"list\\\" as visualization of the equipment. (optional)
NSNumber* defaultCss = @56; // Whether the default CSS should be added to the response. (optional)
NSNumber* showBacklink = @56; // Whether to show a backlink to spoonacular. If set false, this call counts against your quota. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Visualize Ingredients
[apiInstance visualizeIngredientsWithIngredientList:ingredientList
              servings:servings
              measure:measure
              view:view
              defaultCss:defaultCss
              showBacklink:showBacklink
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->visualizeIngredients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **NSString***| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **NSNumber***| The number of servings. | 
 **measure** | **NSString***| The initial measure, either \\\&quot;metric\\\&quot; or \\\&quot;us\\\&quot;. | [optional] 
 **view** | **NSString***| Either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot; as visualization of the equipment. | [optional] 
 **defaultCss** | **NSNumber***| Whether the default CSS should be added to the response. | [optional] 
 **showBacklink** | **NSNumber***| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeMenuItemNutritionByID**
```objc
-(NSURLSessionTask*) visualizeMenuItemNutritionByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Visualize Menu Item Nutrition by ID

Visualize a menu items' nutrition data.

### Example 
```objc

NSNumber* _id = 1003464; // The menu item id.
NSNumber* defaultCss = true; // Whether the default CSS should be added to the response. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Visualize Menu Item Nutrition by ID
[apiInstance visualizeMenuItemNutritionByIDWithId:_id
              defaultCss:defaultCss
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->visualizeMenuItemNutritionByID: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The menu item id. | 
 **defaultCss** | **NSNumber***| Whether the default CSS should be added to the response. | [optional] 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizePriceBreakdown**
```objc
-(NSURLSessionTask*) visualizePriceBreakdownWithIngredientList: (NSString*) ingredientList
    servings: (NSNumber*) servings
    mode: (NSNumber*) mode
    defaultCss: (NSNumber*) defaultCss
    showBacklink: (NSNumber*) showBacklink
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Visualize Price Breakdown

Visualize the price breakdown of a recipe.

### Example 
```objc

NSString* ingredientList = @"ingredientList_example"; // The ingredient list of the recipe, one ingredient per line.
NSNumber* servings = @56; // The number of servings.
NSNumber* mode = @56; // The mode in which the widget should be delivered. 1 = separate views (compact), 2 = all in one view (full). (optional)
NSNumber* defaultCss = @56; // Whether the default CSS should be added to the response. (optional)
NSNumber* showBacklink = @56; // Whether to show a backlink to spoonacular. If set false, this call counts against your quota. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Visualize Price Breakdown
[apiInstance visualizePriceBreakdownWithIngredientList:ingredientList
              servings:servings
              mode:mode
              defaultCss:defaultCss
              showBacklink:showBacklink
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->visualizePriceBreakdown: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **NSString***| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **NSNumber***| The number of servings. | 
 **mode** | **NSNumber***| The mode in which the widget should be delivered. 1 &#x3D; separate views (compact), 2 &#x3D; all in one view (full). | [optional] 
 **defaultCss** | **NSNumber***| Whether the default CSS should be added to the response. | [optional] 
 **showBacklink** | **NSNumber***| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeProductNutritionByID**
```objc
-(NSURLSessionTask*) visualizeProductNutritionByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Visualize Product Nutrition by ID

Visualize a grocery product's nutritional information.

### Example 
```objc

NSNumber* _id = 7657; // The id of the product.
NSNumber* defaultCss = true; // Whether the default CSS should be added to the response. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Visualize Product Nutrition by ID
[apiInstance visualizeProductNutritionByIDWithId:_id
              defaultCss:defaultCss
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->visualizeProductNutritionByID: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The id of the product. | 
 **defaultCss** | **NSNumber***| Whether the default CSS should be added to the response. | [optional] 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeEquipmentByID**
```objc
-(NSURLSessionTask*) visualizeRecipeEquipmentByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Visualize Recipe Equipment by ID

Visualize a recipe's equipment list.

### Example 
```objc

NSNumber* _id = 44860; // The recipe id.
NSNumber* defaultCss = true; // Whether the default CSS should be added to the response. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Visualize Recipe Equipment by ID
[apiInstance visualizeRecipeEquipmentByIDWithId:_id
              defaultCss:defaultCss
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->visualizeRecipeEquipmentByID: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The recipe id. | 
 **defaultCss** | **NSNumber***| Whether the default CSS should be added to the response. | [optional] 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeIngredientsByID**
```objc
-(NSURLSessionTask*) visualizeRecipeIngredientsByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Visualize Recipe Ingredients by ID

Visualize a recipe's ingredient list.

### Example 
```objc

NSNumber* _id = 1082038; // The recipe id.
NSNumber* defaultCss = true; // Whether the default CSS should be added to the response. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Visualize Recipe Ingredients by ID
[apiInstance visualizeRecipeIngredientsByIDWithId:_id
              defaultCss:defaultCss
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->visualizeRecipeIngredientsByID: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The recipe id. | 
 **defaultCss** | **NSNumber***| Whether the default CSS should be added to the response. | [optional] 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeNutrition**
```objc
-(NSURLSessionTask*) visualizeRecipeNutritionWithIngredientList: (NSString*) ingredientList
    servings: (NSNumber*) servings
    defaultCss: (NSNumber*) defaultCss
    showBacklink: (NSNumber*) showBacklink
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Visualize Recipe Nutrition

Visualize a recipe's nutrition data.

### Example 
```objc

NSString* ingredientList = @"ingredientList_example"; // The ingredient list of the recipe, one ingredient per line.
NSNumber* servings = @56; // The number of servings.
NSNumber* defaultCss = @56; // Whether the default CSS should be added to the response. (optional)
NSNumber* showBacklink = @56; // Whether to show a backlink to spoonacular. If set false, this call counts against your quota. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Visualize Recipe Nutrition
[apiInstance visualizeRecipeNutritionWithIngredientList:ingredientList
              servings:servings
              defaultCss:defaultCss
              showBacklink:showBacklink
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->visualizeRecipeNutrition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **NSString***| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **NSNumber***| The number of servings. | 
 **defaultCss** | **NSNumber***| Whether the default CSS should be added to the response. | [optional] 
 **showBacklink** | **NSNumber***| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeNutritionByID**
```objc
-(NSURLSessionTask*) visualizeRecipeNutritionByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Visualize Recipe Nutrition by ID

Visualize a recipe's nutritional information.

### Example 
```objc

NSNumber* _id = 1082038; // The id of the product.
NSNumber* defaultCss = true; // Whether the default CSS should be added to the response. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Visualize Recipe Nutrition by ID
[apiInstance visualizeRecipeNutritionByIDWithId:_id
              defaultCss:defaultCss
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->visualizeRecipeNutritionByID: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The id of the product. | 
 **defaultCss** | **NSNumber***| Whether the default CSS should be added to the response. | [optional] 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipePriceBreakdownByID**
```objc
-(NSURLSessionTask*) visualizeRecipePriceBreakdownByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Visualize Recipe Price Breakdown by ID

Visualize a recipe's price breakdown.

### Example 
```objc

NSNumber* _id = 1082038; // The recipe id.
NSNumber* defaultCss = true; // Whether the default CSS should be added to the response. (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Visualize Recipe Price Breakdown by ID
[apiInstance visualizeRecipePriceBreakdownByIDWithId:_id
              defaultCss:defaultCss
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->visualizeRecipePriceBreakdownByID: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The recipe id. | 
 **defaultCss** | **NSNumber***| Whether the default CSS should be added to the response. | [optional] 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

