# com.spoonacular.client\RecipesApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AnalyzeARecipeSearchQuery**](RecipesApi.md#AnalyzeARecipeSearchQuery) | **Get** /recipes/queries/analyze | Analyze a Recipe Search Query
[**AnalyzeRecipeInstructions**](RecipesApi.md#AnalyzeRecipeInstructions) | **Post** /recipes/analyzeInstructions | Analyze Recipe Instructions
[**AutocompleteRecipeSearch**](RecipesApi.md#AutocompleteRecipeSearch) | **Get** /recipes/autocomplete | Autocomplete Recipe Search
[**ClassifyCuisine**](RecipesApi.md#ClassifyCuisine) | **Post** /recipes/cuisine | Classify Cuisine
[**ComputeGlycemicLoad**](RecipesApi.md#ComputeGlycemicLoad) | **Post** /food/ingredients/glycemicLoad | Compute Glycemic Load
[**ConvertAmounts**](RecipesApi.md#ConvertAmounts) | **Get** /recipes/convert | Convert Amounts
[**CreateRecipeCard**](RecipesApi.md#CreateRecipeCard) | **Post** /recipes/visualizeRecipe | Create Recipe Card
[**EquipmentByIDImage**](RecipesApi.md#EquipmentByIDImage) | **Get** /recipes/{id}/equipmentWidget.png | Equipment by ID Image
[**ExtractRecipeFromWebsite**](RecipesApi.md#ExtractRecipeFromWebsite) | **Get** /recipes/extract | Extract Recipe from Website
[**GetAnalyzedRecipeInstructions**](RecipesApi.md#GetAnalyzedRecipeInstructions) | **Get** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
[**GetRandomRecipes**](RecipesApi.md#GetRandomRecipes) | **Get** /recipes/random | Get Random Recipes
[**GetRecipeEquipmentByID**](RecipesApi.md#GetRecipeEquipmentByID) | **Get** /recipes/{id}/equipmentWidget.json | Equipment by ID
[**GetRecipeInformation**](RecipesApi.md#GetRecipeInformation) | **Get** /recipes/{id}/information | Get Recipe Information
[**GetRecipeInformationBulk**](RecipesApi.md#GetRecipeInformationBulk) | **Get** /recipes/informationBulk | Get Recipe Information Bulk
[**GetRecipeIngredientsByID**](RecipesApi.md#GetRecipeIngredientsByID) | **Get** /recipes/{id}/ingredientWidget.json | Ingredients by ID
[**GetRecipeNutritionWidgetByID**](RecipesApi.md#GetRecipeNutritionWidgetByID) | **Get** /recipes/{id}/nutritionWidget.json | Nutrition by ID
[**GetRecipePriceBreakdownByID**](RecipesApi.md#GetRecipePriceBreakdownByID) | **Get** /recipes/{id}/priceBreakdownWidget.json | Price Breakdown by ID
[**GetRecipeTasteByID**](RecipesApi.md#GetRecipeTasteByID) | **Get** /recipes/{id}/tasteWidget.json | Taste by ID
[**GetSimilarRecipes**](RecipesApi.md#GetSimilarRecipes) | **Get** /recipes/{id}/similar | Get Similar Recipes
[**GuessNutritionByDishName**](RecipesApi.md#GuessNutritionByDishName) | **Get** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**IngredientsByIDImage**](RecipesApi.md#IngredientsByIDImage) | **Get** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
[**ParseIngredients**](RecipesApi.md#ParseIngredients) | **Post** /recipes/parseIngredients | Parse Ingredients
[**PriceBreakdownByIDImage**](RecipesApi.md#PriceBreakdownByIDImage) | **Get** /recipes/{id}/priceBreakdownWidget.png | Price Breakdown by ID Image
[**QuickAnswer**](RecipesApi.md#QuickAnswer) | **Get** /recipes/quickAnswer | Quick Answer
[**RecipeNutritionByIDImage**](RecipesApi.md#RecipeNutritionByIDImage) | **Get** /recipes/{id}/nutritionWidget.png | Recipe Nutrition by ID Image
[**RecipeNutritionLabelImage**](RecipesApi.md#RecipeNutritionLabelImage) | **Get** /recipes/{id}/nutritionLabel.png | Recipe Nutrition Label Image
[**RecipeNutritionLabelWidget**](RecipesApi.md#RecipeNutritionLabelWidget) | **Get** /recipes/{id}/nutritionLabel | Recipe Nutrition Label Widget
[**RecipeTasteByIDImage**](RecipesApi.md#RecipeTasteByIDImage) | **Get** /recipes/{id}/tasteWidget.png | Recipe Taste by ID Image
[**SearchRecipes**](RecipesApi.md#SearchRecipes) | **Get** /recipes/complexSearch | Search Recipes
[**SearchRecipesByIngredients**](RecipesApi.md#SearchRecipesByIngredients) | **Get** /recipes/findByIngredients | Search Recipes by Ingredients
[**SearchRecipesByNutrients**](RecipesApi.md#SearchRecipesByNutrients) | **Get** /recipes/findByNutrients | Search Recipes by Nutrients
[**SummarizeRecipe**](RecipesApi.md#SummarizeRecipe) | **Get** /recipes/{id}/summary | Summarize Recipe
[**VisualizeEquipment**](RecipesApi.md#VisualizeEquipment) | **Post** /recipes/visualizeEquipment | Equipment Widget
[**VisualizePriceBreakdown**](RecipesApi.md#VisualizePriceBreakdown) | **Post** /recipes/visualizePriceEstimator | Price Breakdown Widget
[**VisualizeRecipeEquipmentByID**](RecipesApi.md#VisualizeRecipeEquipmentByID) | **Get** /recipes/{id}/equipmentWidget | Equipment by ID Widget
[**VisualizeRecipeIngredientsByID**](RecipesApi.md#VisualizeRecipeIngredientsByID) | **Get** /recipes/{id}/ingredientWidget | Ingredients by ID Widget
[**VisualizeRecipeNutrition**](RecipesApi.md#VisualizeRecipeNutrition) | **Post** /recipes/visualizeNutrition | Recipe Nutrition Widget
[**VisualizeRecipeNutritionByID**](RecipesApi.md#VisualizeRecipeNutritionByID) | **Get** /recipes/{id}/nutritionWidget | Recipe Nutrition by ID Widget
[**VisualizeRecipePriceBreakdownByID**](RecipesApi.md#VisualizeRecipePriceBreakdownByID) | **Get** /recipes/{id}/priceBreakdownWidget | Price Breakdown by ID Widget
[**VisualizeRecipeTaste**](RecipesApi.md#VisualizeRecipeTaste) | **Post** /recipes/visualizeTaste | Recipe Taste Widget
[**VisualizeRecipeTasteByID**](RecipesApi.md#VisualizeRecipeTasteByID) | **Get** /recipes/{id}/tasteWidget | Recipe Taste by ID Widget



## AnalyzeARecipeSearchQuery

> AnalyzeARecipeSearchQuery200Response AnalyzeARecipeSearchQuery(ctx).Q(q).Execute()

Analyze a Recipe Search Query



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    q := "salmon with fusilli and no nuts" // string | The recipe search query.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.AnalyzeARecipeSearchQuery(context.Background()).Q(q).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.AnalyzeARecipeSearchQuery``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `AnalyzeARecipeSearchQuery`: AnalyzeARecipeSearchQuery200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.AnalyzeARecipeSearchQuery`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAnalyzeARecipeSearchQueryRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string** | The recipe search query. | 

### Return type

[**AnalyzeARecipeSearchQuery200Response**](AnalyzeARecipeSearchQuery200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AnalyzeRecipeInstructions

> AnalyzeRecipeInstructions200Response AnalyzeRecipeInstructions(ctx).ContentType(contentType).Execute()

Analyze Recipe Instructions



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    contentType := "application/json" // string | The content type. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.AnalyzeRecipeInstructions(context.Background()).ContentType(contentType).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.AnalyzeRecipeInstructions``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `AnalyzeRecipeInstructions`: AnalyzeRecipeInstructions200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.AnalyzeRecipeInstructions`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAnalyzeRecipeInstructionsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **string** | The content type. | 

### Return type

[**AnalyzeRecipeInstructions200Response**](AnalyzeRecipeInstructions200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AutocompleteRecipeSearch

> []AutocompleteRecipeSearch200ResponseInner AutocompleteRecipeSearch(ctx).Query(query).Number(number).Execute()

Autocomplete Recipe Search



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    query := "burger" // string | The (natural language) search query. (optional)
    number := int32(10) // int32 | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.AutocompleteRecipeSearch(context.Background()).Query(query).Number(number).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.AutocompleteRecipeSearch``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `AutocompleteRecipeSearch`: []AutocompleteRecipeSearch200ResponseInner
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.AutocompleteRecipeSearch`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAutocompleteRecipeSearchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The (natural language) search query. | 
 **number** | **int32** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**[]AutocompleteRecipeSearch200ResponseInner**](AutocompleteRecipeSearch200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ClassifyCuisine

> ClassifyCuisine200Response ClassifyCuisine(ctx).ContentType(contentType).Execute()

Classify Cuisine



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    contentType := "application/json" // string | The content type. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.ClassifyCuisine(context.Background()).ContentType(contentType).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.ClassifyCuisine``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ClassifyCuisine`: ClassifyCuisine200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.ClassifyCuisine`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiClassifyCuisineRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **string** | The content type. | 

### Return type

[**ClassifyCuisine200Response**](ClassifyCuisine200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ComputeGlycemicLoad

> ComputeGlycemicLoad200Response ComputeGlycemicLoad(ctx).ComputeGlycemicLoadRequest(computeGlycemicLoadRequest).Language(language).Execute()

Compute Glycemic Load



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    computeGlycemicLoadRequest := *openapiclient.NewComputeGlycemicLoadRequest([]string{"Ingredients_example"}) // ComputeGlycemicLoadRequest | 
    language := "en" // string | The language of the input. Either 'en' or 'de'. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.ComputeGlycemicLoad(context.Background()).ComputeGlycemicLoadRequest(computeGlycemicLoadRequest).Language(language).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.ComputeGlycemicLoad``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ComputeGlycemicLoad`: ComputeGlycemicLoad200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.ComputeGlycemicLoad`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiComputeGlycemicLoadRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **computeGlycemicLoadRequest** | [**ComputeGlycemicLoadRequest**](ComputeGlycemicLoadRequest.md) |  | 
 **language** | **string** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | 

### Return type

[**ComputeGlycemicLoad200Response**](ComputeGlycemicLoad200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ConvertAmounts

> ConvertAmounts200Response ConvertAmounts(ctx).IngredientName(ingredientName).SourceAmount(sourceAmount).SourceUnit(sourceUnit).TargetUnit(targetUnit).Execute()

Convert Amounts



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    ingredientName := "flour" // string | The ingredient which you want to convert.
    sourceAmount := float32(2.5) // float32 | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
    sourceUnit := "cups" // string | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
    targetUnit := "grams" // string | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.ConvertAmounts(context.Background()).IngredientName(ingredientName).SourceAmount(sourceAmount).SourceUnit(sourceUnit).TargetUnit(targetUnit).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.ConvertAmounts``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ConvertAmounts`: ConvertAmounts200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.ConvertAmounts`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiConvertAmountsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **string** | The ingredient which you want to convert. | 
 **sourceAmount** | **float32** | The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;. | 
 **sourceUnit** | **string** | The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 
 **targetUnit** | **string** | The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 

### Return type

[**ConvertAmounts200Response**](ConvertAmounts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateRecipeCard

> CreateRecipeCard200Response CreateRecipeCard(ctx).ContentType(contentType).Execute()

Create Recipe Card



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    contentType := "application/json" // string | The content type. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.CreateRecipeCard(context.Background()).ContentType(contentType).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.CreateRecipeCard``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CreateRecipeCard`: CreateRecipeCard200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.CreateRecipeCard`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCreateRecipeCardRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **string** | The content type. | 

### Return type

[**CreateRecipeCard200Response**](CreateRecipeCard200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## EquipmentByIDImage

> map[string]interface{} EquipmentByIDImage(ctx, id).Execute()

Equipment by ID Image



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := float32(44860) // float32 | The recipe id.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.EquipmentByIDImage(context.Background(), id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.EquipmentByIDImage``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `EquipmentByIDImage`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.EquipmentByIDImage`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | The recipe id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiEquipmentByIDImageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**map[string]interface{}**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExtractRecipeFromWebsite

> GetRecipeInformation200Response ExtractRecipeFromWebsite(ctx).Url(url).ForceExtraction(forceExtraction).Analyze(analyze).IncludeNutrition(includeNutrition).IncludeTaste(includeTaste).Execute()

Extract Recipe from Website



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    url := "https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies" // string | The URL of the recipe page.
    forceExtraction := true // bool | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. (optional)
    analyze := false // bool | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. (optional)
    includeNutrition := true // bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional) (default to false)
    includeTaste := false // bool | Whether taste data should be added to correctly parsed ingredients. (optional) (default to false)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.ExtractRecipeFromWebsite(context.Background()).Url(url).ForceExtraction(forceExtraction).Analyze(analyze).IncludeNutrition(includeNutrition).IncludeTaste(includeTaste).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.ExtractRecipeFromWebsite``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ExtractRecipeFromWebsite`: GetRecipeInformation200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.ExtractRecipeFromWebsite`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractRecipeFromWebsiteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The URL of the recipe page. | 
 **forceExtraction** | **bool** | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | 
 **analyze** | **bool** | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | 
 **includeNutrition** | **bool** | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [default to false]
 **includeTaste** | **bool** | Whether taste data should be added to correctly parsed ingredients. | [default to false]

### Return type

[**GetRecipeInformation200Response**](GetRecipeInformation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAnalyzedRecipeInstructions

> GetAnalyzedRecipeInstructions200Response GetAnalyzedRecipeInstructions(ctx, id).StepBreakdown(stepBreakdown).Execute()

Get Analyzed Recipe Instructions



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := int32(1) // int32 | The item's id.
    stepBreakdown := true // bool | Whether to break down the recipe steps even more. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.GetAnalyzedRecipeInstructions(context.Background(), id).StepBreakdown(stepBreakdown).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.GetAnalyzedRecipeInstructions``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetAnalyzedRecipeInstructions`: GetAnalyzedRecipeInstructions200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.GetAnalyzedRecipeInstructions`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetAnalyzedRecipeInstructionsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **stepBreakdown** | **bool** | Whether to break down the recipe steps even more. | 

### Return type

[**GetAnalyzedRecipeInstructions200Response**](GetAnalyzedRecipeInstructions200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRandomRecipes

> GetRandomRecipes200Response GetRandomRecipes(ctx).LimitLicense(limitLicense).Tags(tags).Number(number).Execute()

Get Random Recipes



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    limitLicense := true // bool | Whether the recipes should have an open license that allows display with proper attribution. (optional) (default to true)
    tags := "tags_example" // string | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. (optional)
    number := int32(10) // int32 | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.GetRandomRecipes(context.Background()).LimitLicense(limitLicense).Tags(tags).Number(number).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.GetRandomRecipes``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetRandomRecipes`: GetRandomRecipes200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.GetRandomRecipes`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetRandomRecipesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limitLicense** | **bool** | Whether the recipes should have an open license that allows display with proper attribution. | [default to true]
 **tags** | **string** | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | 
 **number** | **int32** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**GetRandomRecipes200Response**](GetRandomRecipes200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRecipeEquipmentByID

> GetRecipeEquipmentByID200Response GetRecipeEquipmentByID(ctx, id).Execute()

Equipment by ID



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := int32(1) // int32 | The item's id.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.GetRecipeEquipmentByID(context.Background(), id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.GetRecipeEquipmentByID``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetRecipeEquipmentByID`: GetRecipeEquipmentByID200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.GetRecipeEquipmentByID`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetRecipeEquipmentByIDRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GetRecipeEquipmentByID200Response**](GetRecipeEquipmentByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRecipeInformation

> GetRecipeInformation200Response GetRecipeInformation(ctx, id).IncludeNutrition(includeNutrition).Execute()

Get Recipe Information



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := int32(1) // int32 | The item's id.
    includeNutrition := true // bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional) (default to false)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.GetRecipeInformation(context.Background(), id).IncludeNutrition(includeNutrition).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.GetRecipeInformation``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetRecipeInformation`: GetRecipeInformation200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.GetRecipeInformation`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetRecipeInformationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **includeNutrition** | **bool** | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [default to false]

### Return type

[**GetRecipeInformation200Response**](GetRecipeInformation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRecipeInformationBulk

> []GetRecipeInformationBulk200ResponseInner GetRecipeInformationBulk(ctx).Ids(ids).IncludeNutrition(includeNutrition).Execute()

Get Recipe Information Bulk



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    ids := "715538,716429" // string | A comma-separated list of recipe ids.
    includeNutrition := true // bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional) (default to false)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.GetRecipeInformationBulk(context.Background()).Ids(ids).IncludeNutrition(includeNutrition).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.GetRecipeInformationBulk``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetRecipeInformationBulk`: []GetRecipeInformationBulk200ResponseInner
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.GetRecipeInformationBulk`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetRecipeInformationBulkRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **string** | A comma-separated list of recipe ids. | 
 **includeNutrition** | **bool** | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [default to false]

### Return type

[**[]GetRecipeInformationBulk200ResponseInner**](GetRecipeInformationBulk200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRecipeIngredientsByID

> GetRecipeIngredientsByID200Response GetRecipeIngredientsByID(ctx, id).Execute()

Ingredients by ID



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := int32(1) // int32 | The item's id.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.GetRecipeIngredientsByID(context.Background(), id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.GetRecipeIngredientsByID``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetRecipeIngredientsByID`: GetRecipeIngredientsByID200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.GetRecipeIngredientsByID`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetRecipeIngredientsByIDRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GetRecipeIngredientsByID200Response**](GetRecipeIngredientsByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRecipeNutritionWidgetByID

> GetRecipeNutritionWidgetByID200Response GetRecipeNutritionWidgetByID(ctx, id).Execute()

Nutrition by ID



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := int32(1) // int32 | The item's id.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.GetRecipeNutritionWidgetByID(context.Background(), id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.GetRecipeNutritionWidgetByID``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetRecipeNutritionWidgetByID`: GetRecipeNutritionWidgetByID200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.GetRecipeNutritionWidgetByID`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetRecipeNutritionWidgetByIDRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GetRecipeNutritionWidgetByID200Response**](GetRecipeNutritionWidgetByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRecipePriceBreakdownByID

> GetRecipePriceBreakdownByID200Response GetRecipePriceBreakdownByID(ctx, id).Execute()

Price Breakdown by ID



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := int32(1) // int32 | The item's id.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.GetRecipePriceBreakdownByID(context.Background(), id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.GetRecipePriceBreakdownByID``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetRecipePriceBreakdownByID`: GetRecipePriceBreakdownByID200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.GetRecipePriceBreakdownByID`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetRecipePriceBreakdownByIDRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GetRecipePriceBreakdownByID200Response**](GetRecipePriceBreakdownByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRecipeTasteByID

> GetRecipeTasteByID200Response GetRecipeTasteByID(ctx, id).Normalize(normalize).Execute()

Taste by ID



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := int32(1) // int32 | The item's id.
    normalize := true // bool | Normalize to the strongest taste. (optional) (default to true)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.GetRecipeTasteByID(context.Background(), id).Normalize(normalize).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.GetRecipeTasteByID``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetRecipeTasteByID`: GetRecipeTasteByID200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.GetRecipeTasteByID`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetRecipeTasteByIDRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **normalize** | **bool** | Normalize to the strongest taste. | [default to true]

### Return type

[**GetRecipeTasteByID200Response**](GetRecipeTasteByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetSimilarRecipes

> []GetSimilarRecipes200ResponseInner GetSimilarRecipes(ctx, id).Number(number).LimitLicense(limitLicense).Execute()

Get Similar Recipes



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := int32(1) // int32 | The item's id.
    number := int32(10) // int32 | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)
    limitLicense := true // bool | Whether the recipes should have an open license that allows display with proper attribution. (optional) (default to true)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.GetSimilarRecipes(context.Background(), id).Number(number).LimitLicense(limitLicense).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.GetSimilarRecipes``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetSimilarRecipes`: []GetSimilarRecipes200ResponseInner
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.GetSimilarRecipes`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetSimilarRecipesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **number** | **int32** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]
 **limitLicense** | **bool** | Whether the recipes should have an open license that allows display with proper attribution. | [default to true]

### Return type

[**[]GetSimilarRecipes200ResponseInner**](GetSimilarRecipes200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GuessNutritionByDishName

> GuessNutritionByDishName200Response GuessNutritionByDishName(ctx).Title(title).Execute()

Guess Nutrition by Dish Name



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    title := "Spaghetti Aglio et Olio" // string | The title of the dish.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.GuessNutritionByDishName(context.Background()).Title(title).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.GuessNutritionByDishName``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GuessNutritionByDishName`: GuessNutritionByDishName200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.GuessNutritionByDishName`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGuessNutritionByDishNameRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **string** | The title of the dish. | 

### Return type

[**GuessNutritionByDishName200Response**](GuessNutritionByDishName200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## IngredientsByIDImage

> map[string]interface{} IngredientsByIDImage(ctx, id).Measure(measure).Execute()

Ingredients by ID Image



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := float32(1082038) // float32 | The recipe id.
    measure := "metric" // string | Whether the the measures should be 'us' or 'metric'. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.IngredientsByIDImage(context.Background(), id).Measure(measure).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.IngredientsByIDImage``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IngredientsByIDImage`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.IngredientsByIDImage`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | The recipe id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiIngredientsByIDImageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **measure** | **string** | Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | 

### Return type

**map[string]interface{}**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ParseIngredients

> []ParseIngredients200ResponseInner ParseIngredients(ctx).ContentType(contentType).Language(language).Execute()

Parse Ingredients



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    contentType := "application/json" // string | The content type. (optional)
    language := "en" // string | The language of the input. Either 'en' or 'de'. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.ParseIngredients(context.Background()).ContentType(contentType).Language(language).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.ParseIngredients``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ParseIngredients`: []ParseIngredients200ResponseInner
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.ParseIngredients`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiParseIngredientsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **string** | The content type. | 
 **language** | **string** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | 

### Return type

[**[]ParseIngredients200ResponseInner**](ParseIngredients200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PriceBreakdownByIDImage

> map[string]interface{} PriceBreakdownByIDImage(ctx, id).Execute()

Price Breakdown by ID Image



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := float32(1082038) // float32 | The recipe id.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.PriceBreakdownByIDImage(context.Background(), id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.PriceBreakdownByIDImage``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `PriceBreakdownByIDImage`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.PriceBreakdownByIDImage`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | The recipe id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiPriceBreakdownByIDImageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**map[string]interface{}**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## QuickAnswer

> QuickAnswer200Response QuickAnswer(ctx).Q(q).Execute()

Quick Answer



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    q := "How much vitamin c is in 2 apples?" // string | The nutrition related question.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.QuickAnswer(context.Background()).Q(q).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.QuickAnswer``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `QuickAnswer`: QuickAnswer200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.QuickAnswer`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiQuickAnswerRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string** | The nutrition related question. | 

### Return type

[**QuickAnswer200Response**](QuickAnswer200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RecipeNutritionByIDImage

> map[string]interface{} RecipeNutritionByIDImage(ctx, id).Execute()

Recipe Nutrition by ID Image



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := float32(1082038) // float32 | The recipe id.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.RecipeNutritionByIDImage(context.Background(), id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.RecipeNutritionByIDImage``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `RecipeNutritionByIDImage`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.RecipeNutritionByIDImage`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | The recipe id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiRecipeNutritionByIDImageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**map[string]interface{}**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RecipeNutritionLabelImage

> map[string]interface{} RecipeNutritionLabelImage(ctx, id).ShowOptionalNutrients(showOptionalNutrients).ShowZeroValues(showZeroValues).ShowIngredients(showIngredients).Execute()

Recipe Nutrition Label Image



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := float32(641166) // float32 | The recipe id.
    showOptionalNutrients := false // bool | Whether to show optional nutrients. (optional)
    showZeroValues := false // bool | Whether to show zero values. (optional)
    showIngredients := false // bool | Whether to show a list of ingredients. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.RecipeNutritionLabelImage(context.Background(), id).ShowOptionalNutrients(showOptionalNutrients).ShowZeroValues(showZeroValues).ShowIngredients(showIngredients).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.RecipeNutritionLabelImage``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `RecipeNutritionLabelImage`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.RecipeNutritionLabelImage`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | The recipe id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiRecipeNutritionLabelImageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **showOptionalNutrients** | **bool** | Whether to show optional nutrients. | 
 **showZeroValues** | **bool** | Whether to show zero values. | 
 **showIngredients** | **bool** | Whether to show a list of ingredients. | 

### Return type

**map[string]interface{}**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RecipeNutritionLabelWidget

> string RecipeNutritionLabelWidget(ctx, id).DefaultCss(defaultCss).ShowOptionalNutrients(showOptionalNutrients).ShowZeroValues(showZeroValues).ShowIngredients(showIngredients).Execute()

Recipe Nutrition Label Widget



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := float32(641166) // float32 | The recipe id.
    defaultCss := false // bool | Whether the default CSS should be added to the response. (optional) (default to true)
    showOptionalNutrients := false // bool | Whether to show optional nutrients. (optional)
    showZeroValues := false // bool | Whether to show zero values. (optional)
    showIngredients := false // bool | Whether to show a list of ingredients. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.RecipeNutritionLabelWidget(context.Background(), id).DefaultCss(defaultCss).ShowOptionalNutrients(showOptionalNutrients).ShowZeroValues(showZeroValues).ShowIngredients(showIngredients).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.RecipeNutritionLabelWidget``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `RecipeNutritionLabelWidget`: string
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.RecipeNutritionLabelWidget`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | The recipe id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiRecipeNutritionLabelWidgetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **defaultCss** | **bool** | Whether the default CSS should be added to the response. | [default to true]
 **showOptionalNutrients** | **bool** | Whether to show optional nutrients. | 
 **showZeroValues** | **bool** | Whether to show zero values. | 
 **showIngredients** | **bool** | Whether to show a list of ingredients. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RecipeTasteByIDImage

> map[string]interface{} RecipeTasteByIDImage(ctx, id).Normalize(normalize).Rgb(rgb).Execute()

Recipe Taste by ID Image



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := float32(69095) // float32 | The recipe id.
    normalize := false // bool | Normalize to the strongest taste. (optional)
    rgb := "75,192,192" // string | Red, green, blue values for the chart color. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.RecipeTasteByIDImage(context.Background(), id).Normalize(normalize).Rgb(rgb).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.RecipeTasteByIDImage``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `RecipeTasteByIDImage`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.RecipeTasteByIDImage`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | The recipe id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiRecipeTasteByIDImageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **normalize** | **bool** | Normalize to the strongest taste. | 
 **rgb** | **string** | Red, green, blue values for the chart color. | 

### Return type

**map[string]interface{}**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchRecipes

> SearchRecipes200Response SearchRecipes(ctx).Query(query).Cuisine(cuisine).ExcludeCuisine(excludeCuisine).Diet(diet).Intolerances(intolerances).Equipment(equipment).IncludeIngredients(includeIngredients).ExcludeIngredients(excludeIngredients).Type_(type_).InstructionsRequired(instructionsRequired).FillIngredients(fillIngredients).AddRecipeInformation(addRecipeInformation).AddRecipeNutrition(addRecipeNutrition).Author(author).Tags(tags).RecipeBoxId(recipeBoxId).TitleMatch(titleMatch).MaxReadyTime(maxReadyTime).IgnorePantry(ignorePantry).Sort(sort).SortDirection(sortDirection).MinCarbs(minCarbs).MaxCarbs(maxCarbs).MinProtein(minProtein).MaxProtein(maxProtein).MinCalories(minCalories).MaxCalories(maxCalories).MinFat(minFat).MaxFat(maxFat).MinAlcohol(minAlcohol).MaxAlcohol(maxAlcohol).MinCaffeine(minCaffeine).MaxCaffeine(maxCaffeine).MinCopper(minCopper).MaxCopper(maxCopper).MinCalcium(minCalcium).MaxCalcium(maxCalcium).MinCholine(minCholine).MaxCholine(maxCholine).MinCholesterol(minCholesterol).MaxCholesterol(maxCholesterol).MinFluoride(minFluoride).MaxFluoride(maxFluoride).MinSaturatedFat(minSaturatedFat).MaxSaturatedFat(maxSaturatedFat).MinVitaminA(minVitaminA).MaxVitaminA(maxVitaminA).MinVitaminC(minVitaminC).MaxVitaminC(maxVitaminC).MinVitaminD(minVitaminD).MaxVitaminD(maxVitaminD).MinVitaminE(minVitaminE).MaxVitaminE(maxVitaminE).MinVitaminK(minVitaminK).MaxVitaminK(maxVitaminK).MinVitaminB1(minVitaminB1).MaxVitaminB1(maxVitaminB1).MinVitaminB2(minVitaminB2).MaxVitaminB2(maxVitaminB2).MinVitaminB5(minVitaminB5).MaxVitaminB5(maxVitaminB5).MinVitaminB3(minVitaminB3).MaxVitaminB3(maxVitaminB3).MinVitaminB6(minVitaminB6).MaxVitaminB6(maxVitaminB6).MinVitaminB12(minVitaminB12).MaxVitaminB12(maxVitaminB12).MinFiber(minFiber).MaxFiber(maxFiber).MinFolate(minFolate).MaxFolate(maxFolate).MinFolicAcid(minFolicAcid).MaxFolicAcid(maxFolicAcid).MinIodine(minIodine).MaxIodine(maxIodine).MinIron(minIron).MaxIron(maxIron).MinMagnesium(minMagnesium).MaxMagnesium(maxMagnesium).MinManganese(minManganese).MaxManganese(maxManganese).MinPhosphorus(minPhosphorus).MaxPhosphorus(maxPhosphorus).MinPotassium(minPotassium).MaxPotassium(maxPotassium).MinSelenium(minSelenium).MaxSelenium(maxSelenium).MinSodium(minSodium).MaxSodium(maxSodium).MinSugar(minSugar).MaxSugar(maxSugar).MinZinc(minZinc).MaxZinc(maxZinc).Offset(offset).Number(number).LimitLicense(limitLicense).Execute()

Search Recipes



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    query := "burger" // string | The (natural language) search query. (optional)
    cuisine := "italian" // string | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines. (optional)
    excludeCuisine := "greek" // string | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines. (optional)
    diet := "vegetarian" // string | The diet for which the recipes must be suitable. See a full list of supported diets. (optional)
    intolerances := "gluten" // string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional)
    equipment := "pan" // string | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\". (optional)
    includeIngredients := "tomato,cheese" // string | A comma-separated list of ingredients that should/must be used in the recipes. (optional)
    excludeIngredients := "eggs" // string | A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional)
    type_ := "main course" // string | The type of recipe. See a full list of supported meal types. (optional)
    instructionsRequired := true // bool | Whether the recipes must have instructions. (optional)
    fillIngredients := false // bool | Add information about the ingredients and whether they are used or missing in relation to the query. (optional)
    addRecipeInformation := false // bool | If set to true, you get more information about the recipes returned. (optional)
    addRecipeNutrition := false // bool | If set to true, you get nutritional information about each recipes returned. (optional)
    author := "coffeebean" // string | The username of the recipe author. (optional)
    tags := "tags_example" // string | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. (optional)
    recipeBoxId := float32(2468) // float32 | The id of the recipe box to which the search should be limited to. (optional)
    titleMatch := "Crock Pot" // string | Enter text that must be found in the title of the recipes. (optional)
    maxReadyTime := float32(20) // float32 | The maximum time in minutes it should take to prepare and cook the recipe. (optional)
    ignorePantry := false // bool | Whether to ignore typical pantry items, such as water, salt, flour, etc. (optional) (default to false)
    sort := "calories" // string | The strategy to sort recipes by. See a full list of supported sorting options. (optional)
    sortDirection := "asc" // string | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). (optional)
    minCarbs := float32(10) // float32 | The minimum amount of carbohydrates in grams the recipe must have. (optional)
    maxCarbs := float32(100) // float32 | The maximum amount of carbohydrates in grams the recipe can have. (optional)
    minProtein := float32(10) // float32 | The minimum amount of protein in grams the recipe must have. (optional)
    maxProtein := float32(100) // float32 | The maximum amount of protein in grams the recipe can have. (optional)
    minCalories := float32(50) // float32 | The minimum amount of calories the recipe must have. (optional)
    maxCalories := float32(800) // float32 | The maximum amount of calories the recipe can have. (optional)
    minFat := float32(1) // float32 | The minimum amount of fat in grams the recipe must have. (optional)
    maxFat := float32(100) // float32 | The maximum amount of fat in grams the recipe can have. (optional)
    minAlcohol := float32(0) // float32 | The minimum amount of alcohol in grams the recipe must have. (optional)
    maxAlcohol := float32(100) // float32 | The maximum amount of alcohol in grams the recipe can have. (optional)
    minCaffeine := float32(0) // float32 | The minimum amount of caffeine in milligrams the recipe must have. (optional)
    maxCaffeine := float32(100) // float32 | The maximum amount of caffeine in milligrams the recipe can have. (optional)
    minCopper := float32(0) // float32 | The minimum amount of copper in milligrams the recipe must have. (optional)
    maxCopper := float32(100) // float32 | The maximum amount of copper in milligrams the recipe can have. (optional)
    minCalcium := float32(0) // float32 | The minimum amount of calcium in milligrams the recipe must have. (optional)
    maxCalcium := float32(100) // float32 | The maximum amount of calcium in milligrams the recipe can have. (optional)
    minCholine := float32(0) // float32 | The minimum amount of choline in milligrams the recipe must have. (optional)
    maxCholine := float32(100) // float32 | The maximum amount of choline in milligrams the recipe can have. (optional)
    minCholesterol := float32(0) // float32 | The minimum amount of cholesterol in milligrams the recipe must have. (optional)
    maxCholesterol := float32(100) // float32 | The maximum amount of cholesterol in milligrams the recipe can have. (optional)
    minFluoride := float32(0) // float32 | The minimum amount of fluoride in milligrams the recipe must have. (optional)
    maxFluoride := float32(100) // float32 | The maximum amount of fluoride in milligrams the recipe can have. (optional)
    minSaturatedFat := float32(0) // float32 | The minimum amount of saturated fat in grams the recipe must have. (optional)
    maxSaturatedFat := float32(100) // float32 | The maximum amount of saturated fat in grams the recipe can have. (optional)
    minVitaminA := float32(0) // float32 | The minimum amount of Vitamin A in IU the recipe must have. (optional)
    maxVitaminA := float32(100) // float32 | The maximum amount of Vitamin A in IU the recipe can have. (optional)
    minVitaminC := float32(0) // float32 | The minimum amount of Vitamin C milligrams the recipe must have. (optional)
    maxVitaminC := float32(100) // float32 | The maximum amount of Vitamin C in milligrams the recipe can have. (optional)
    minVitaminD := float32(0) // float32 | The minimum amount of Vitamin D in micrograms the recipe must have. (optional)
    maxVitaminD := float32(100) // float32 | The maximum amount of Vitamin D in micrograms the recipe can have. (optional)
    minVitaminE := float32(0) // float32 | The minimum amount of Vitamin E in milligrams the recipe must have. (optional)
    maxVitaminE := float32(100) // float32 | The maximum amount of Vitamin E in milligrams the recipe can have. (optional)
    minVitaminK := float32(0) // float32 | The minimum amount of Vitamin K in micrograms the recipe must have. (optional)
    maxVitaminK := float32(100) // float32 | The maximum amount of Vitamin K in micrograms the recipe can have. (optional)
    minVitaminB1 := float32(0) // float32 | The minimum amount of Vitamin B1 in milligrams the recipe must have. (optional)
    maxVitaminB1 := float32(100) // float32 | The maximum amount of Vitamin B1 in milligrams the recipe can have. (optional)
    minVitaminB2 := float32(0) // float32 | The minimum amount of Vitamin B2 in milligrams the recipe must have. (optional)
    maxVitaminB2 := float32(100) // float32 | The maximum amount of Vitamin B2 in milligrams the recipe can have. (optional)
    minVitaminB5 := float32(0) // float32 | The minimum amount of Vitamin B5 in milligrams the recipe must have. (optional)
    maxVitaminB5 := float32(100) // float32 | The maximum amount of Vitamin B5 in milligrams the recipe can have. (optional)
    minVitaminB3 := float32(0) // float32 | The minimum amount of Vitamin B3 in milligrams the recipe must have. (optional)
    maxVitaminB3 := float32(100) // float32 | The maximum amount of Vitamin B3 in milligrams the recipe can have. (optional)
    minVitaminB6 := float32(0) // float32 | The minimum amount of Vitamin B6 in milligrams the recipe must have. (optional)
    maxVitaminB6 := float32(100) // float32 | The maximum amount of Vitamin B6 in milligrams the recipe can have. (optional)
    minVitaminB12 := float32(0) // float32 | The minimum amount of Vitamin B12 in micrograms the recipe must have. (optional)
    maxVitaminB12 := float32(100) // float32 | The maximum amount of Vitamin B12 in micrograms the recipe can have. (optional)
    minFiber := float32(0) // float32 | The minimum amount of fiber in grams the recipe must have. (optional)
    maxFiber := float32(100) // float32 | The maximum amount of fiber in grams the recipe can have. (optional)
    minFolate := float32(0) // float32 | The minimum amount of folate in micrograms the recipe must have. (optional)
    maxFolate := float32(100) // float32 | The maximum amount of folate in micrograms the recipe can have. (optional)
    minFolicAcid := float32(0) // float32 | The minimum amount of folic acid in micrograms the recipe must have. (optional)
    maxFolicAcid := float32(100) // float32 | The maximum amount of folic acid in micrograms the recipe can have. (optional)
    minIodine := float32(0) // float32 | The minimum amount of iodine in micrograms the recipe must have. (optional)
    maxIodine := float32(100) // float32 | The maximum amount of iodine in micrograms the recipe can have. (optional)
    minIron := float32(0) // float32 | The minimum amount of iron in milligrams the recipe must have. (optional)
    maxIron := float32(100) // float32 | The maximum amount of iron in milligrams the recipe can have. (optional)
    minMagnesium := float32(0) // float32 | The minimum amount of magnesium in milligrams the recipe must have. (optional)
    maxMagnesium := float32(100) // float32 | The maximum amount of magnesium in milligrams the recipe can have. (optional)
    minManganese := float32(0) // float32 | The minimum amount of manganese in milligrams the recipe must have. (optional)
    maxManganese := float32(100) // float32 | The maximum amount of manganese in milligrams the recipe can have. (optional)
    minPhosphorus := float32(0) // float32 | The minimum amount of phosphorus in milligrams the recipe must have. (optional)
    maxPhosphorus := float32(100) // float32 | The maximum amount of phosphorus in milligrams the recipe can have. (optional)
    minPotassium := float32(0) // float32 | The minimum amount of potassium in milligrams the recipe must have. (optional)
    maxPotassium := float32(100) // float32 | The maximum amount of potassium in milligrams the recipe can have. (optional)
    minSelenium := float32(0) // float32 | The minimum amount of selenium in micrograms the recipe must have. (optional)
    maxSelenium := float32(100) // float32 | The maximum amount of selenium in micrograms the recipe can have. (optional)
    minSodium := float32(0) // float32 | The minimum amount of sodium in milligrams the recipe must have. (optional)
    maxSodium := float32(100) // float32 | The maximum amount of sodium in milligrams the recipe can have. (optional)
    minSugar := float32(0) // float32 | The minimum amount of sugar in grams the recipe must have. (optional)
    maxSugar := float32(100) // float32 | The maximum amount of sugar in grams the recipe can have. (optional)
    minZinc := float32(0) // float32 | The minimum amount of zinc in milligrams the recipe must have. (optional)
    maxZinc := float32(100) // float32 | The maximum amount of zinc in milligrams the recipe can have. (optional)
    offset := int32(56) // int32 | The number of results to skip (between 0 and 900). (optional)
    number := int32(10) // int32 | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)
    limitLicense := true // bool | Whether the recipes should have an open license that allows display with proper attribution. (optional) (default to true)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.SearchRecipes(context.Background()).Query(query).Cuisine(cuisine).ExcludeCuisine(excludeCuisine).Diet(diet).Intolerances(intolerances).Equipment(equipment).IncludeIngredients(includeIngredients).ExcludeIngredients(excludeIngredients).Type_(type_).InstructionsRequired(instructionsRequired).FillIngredients(fillIngredients).AddRecipeInformation(addRecipeInformation).AddRecipeNutrition(addRecipeNutrition).Author(author).Tags(tags).RecipeBoxId(recipeBoxId).TitleMatch(titleMatch).MaxReadyTime(maxReadyTime).IgnorePantry(ignorePantry).Sort(sort).SortDirection(sortDirection).MinCarbs(minCarbs).MaxCarbs(maxCarbs).MinProtein(minProtein).MaxProtein(maxProtein).MinCalories(minCalories).MaxCalories(maxCalories).MinFat(minFat).MaxFat(maxFat).MinAlcohol(minAlcohol).MaxAlcohol(maxAlcohol).MinCaffeine(minCaffeine).MaxCaffeine(maxCaffeine).MinCopper(minCopper).MaxCopper(maxCopper).MinCalcium(minCalcium).MaxCalcium(maxCalcium).MinCholine(minCholine).MaxCholine(maxCholine).MinCholesterol(minCholesterol).MaxCholesterol(maxCholesterol).MinFluoride(minFluoride).MaxFluoride(maxFluoride).MinSaturatedFat(minSaturatedFat).MaxSaturatedFat(maxSaturatedFat).MinVitaminA(minVitaminA).MaxVitaminA(maxVitaminA).MinVitaminC(minVitaminC).MaxVitaminC(maxVitaminC).MinVitaminD(minVitaminD).MaxVitaminD(maxVitaminD).MinVitaminE(minVitaminE).MaxVitaminE(maxVitaminE).MinVitaminK(minVitaminK).MaxVitaminK(maxVitaminK).MinVitaminB1(minVitaminB1).MaxVitaminB1(maxVitaminB1).MinVitaminB2(minVitaminB2).MaxVitaminB2(maxVitaminB2).MinVitaminB5(minVitaminB5).MaxVitaminB5(maxVitaminB5).MinVitaminB3(minVitaminB3).MaxVitaminB3(maxVitaminB3).MinVitaminB6(minVitaminB6).MaxVitaminB6(maxVitaminB6).MinVitaminB12(minVitaminB12).MaxVitaminB12(maxVitaminB12).MinFiber(minFiber).MaxFiber(maxFiber).MinFolate(minFolate).MaxFolate(maxFolate).MinFolicAcid(minFolicAcid).MaxFolicAcid(maxFolicAcid).MinIodine(minIodine).MaxIodine(maxIodine).MinIron(minIron).MaxIron(maxIron).MinMagnesium(minMagnesium).MaxMagnesium(maxMagnesium).MinManganese(minManganese).MaxManganese(maxManganese).MinPhosphorus(minPhosphorus).MaxPhosphorus(maxPhosphorus).MinPotassium(minPotassium).MaxPotassium(maxPotassium).MinSelenium(minSelenium).MaxSelenium(maxSelenium).MinSodium(minSodium).MaxSodium(maxSodium).MinSugar(minSugar).MaxSugar(maxSugar).MinZinc(minZinc).MaxZinc(maxZinc).Offset(offset).Number(number).LimitLicense(limitLicense).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.SearchRecipes``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SearchRecipes`: SearchRecipes200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.SearchRecipes`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchRecipesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The (natural language) search query. | 
 **cuisine** | **string** | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines. | 
 **excludeCuisine** | **string** | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines. | 
 **diet** | **string** | The diet for which the recipes must be suitable. See a full list of supported diets. | 
 **intolerances** | **string** | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | 
 **equipment** | **string** | The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | 
 **includeIngredients** | **string** | A comma-separated list of ingredients that should/must be used in the recipes. | 
 **excludeIngredients** | **string** | A comma-separated list of ingredients or ingredient types that the recipes must not contain. | 
 **type_** | **string** | The type of recipe. See a full list of supported meal types. | 
 **instructionsRequired** | **bool** | Whether the recipes must have instructions. | 
 **fillIngredients** | **bool** | Add information about the ingredients and whether they are used or missing in relation to the query. | 
 **addRecipeInformation** | **bool** | If set to true, you get more information about the recipes returned. | 
 **addRecipeNutrition** | **bool** | If set to true, you get nutritional information about each recipes returned. | 
 **author** | **string** | The username of the recipe author. | 
 **tags** | **string** | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | 
 **recipeBoxId** | **float32** | The id of the recipe box to which the search should be limited to. | 
 **titleMatch** | **string** | Enter text that must be found in the title of the recipes. | 
 **maxReadyTime** | **float32** | The maximum time in minutes it should take to prepare and cook the recipe. | 
 **ignorePantry** | **bool** | Whether to ignore typical pantry items, such as water, salt, flour, etc. | [default to false]
 **sort** | **string** | The strategy to sort recipes by. See a full list of supported sorting options. | 
 **sortDirection** | **string** | The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | 
 **minCarbs** | **float32** | The minimum amount of carbohydrates in grams the recipe must have. | 
 **maxCarbs** | **float32** | The maximum amount of carbohydrates in grams the recipe can have. | 
 **minProtein** | **float32** | The minimum amount of protein in grams the recipe must have. | 
 **maxProtein** | **float32** | The maximum amount of protein in grams the recipe can have. | 
 **minCalories** | **float32** | The minimum amount of calories the recipe must have. | 
 **maxCalories** | **float32** | The maximum amount of calories the recipe can have. | 
 **minFat** | **float32** | The minimum amount of fat in grams the recipe must have. | 
 **maxFat** | **float32** | The maximum amount of fat in grams the recipe can have. | 
 **minAlcohol** | **float32** | The minimum amount of alcohol in grams the recipe must have. | 
 **maxAlcohol** | **float32** | The maximum amount of alcohol in grams the recipe can have. | 
 **minCaffeine** | **float32** | The minimum amount of caffeine in milligrams the recipe must have. | 
 **maxCaffeine** | **float32** | The maximum amount of caffeine in milligrams the recipe can have. | 
 **minCopper** | **float32** | The minimum amount of copper in milligrams the recipe must have. | 
 **maxCopper** | **float32** | The maximum amount of copper in milligrams the recipe can have. | 
 **minCalcium** | **float32** | The minimum amount of calcium in milligrams the recipe must have. | 
 **maxCalcium** | **float32** | The maximum amount of calcium in milligrams the recipe can have. | 
 **minCholine** | **float32** | The minimum amount of choline in milligrams the recipe must have. | 
 **maxCholine** | **float32** | The maximum amount of choline in milligrams the recipe can have. | 
 **minCholesterol** | **float32** | The minimum amount of cholesterol in milligrams the recipe must have. | 
 **maxCholesterol** | **float32** | The maximum amount of cholesterol in milligrams the recipe can have. | 
 **minFluoride** | **float32** | The minimum amount of fluoride in milligrams the recipe must have. | 
 **maxFluoride** | **float32** | The maximum amount of fluoride in milligrams the recipe can have. | 
 **minSaturatedFat** | **float32** | The minimum amount of saturated fat in grams the recipe must have. | 
 **maxSaturatedFat** | **float32** | The maximum amount of saturated fat in grams the recipe can have. | 
 **minVitaminA** | **float32** | The minimum amount of Vitamin A in IU the recipe must have. | 
 **maxVitaminA** | **float32** | The maximum amount of Vitamin A in IU the recipe can have. | 
 **minVitaminC** | **float32** | The minimum amount of Vitamin C milligrams the recipe must have. | 
 **maxVitaminC** | **float32** | The maximum amount of Vitamin C in milligrams the recipe can have. | 
 **minVitaminD** | **float32** | The minimum amount of Vitamin D in micrograms the recipe must have. | 
 **maxVitaminD** | **float32** | The maximum amount of Vitamin D in micrograms the recipe can have. | 
 **minVitaminE** | **float32** | The minimum amount of Vitamin E in milligrams the recipe must have. | 
 **maxVitaminE** | **float32** | The maximum amount of Vitamin E in milligrams the recipe can have. | 
 **minVitaminK** | **float32** | The minimum amount of Vitamin K in micrograms the recipe must have. | 
 **maxVitaminK** | **float32** | The maximum amount of Vitamin K in micrograms the recipe can have. | 
 **minVitaminB1** | **float32** | The minimum amount of Vitamin B1 in milligrams the recipe must have. | 
 **maxVitaminB1** | **float32** | The maximum amount of Vitamin B1 in milligrams the recipe can have. | 
 **minVitaminB2** | **float32** | The minimum amount of Vitamin B2 in milligrams the recipe must have. | 
 **maxVitaminB2** | **float32** | The maximum amount of Vitamin B2 in milligrams the recipe can have. | 
 **minVitaminB5** | **float32** | The minimum amount of Vitamin B5 in milligrams the recipe must have. | 
 **maxVitaminB5** | **float32** | The maximum amount of Vitamin B5 in milligrams the recipe can have. | 
 **minVitaminB3** | **float32** | The minimum amount of Vitamin B3 in milligrams the recipe must have. | 
 **maxVitaminB3** | **float32** | The maximum amount of Vitamin B3 in milligrams the recipe can have. | 
 **minVitaminB6** | **float32** | The minimum amount of Vitamin B6 in milligrams the recipe must have. | 
 **maxVitaminB6** | **float32** | The maximum amount of Vitamin B6 in milligrams the recipe can have. | 
 **minVitaminB12** | **float32** | The minimum amount of Vitamin B12 in micrograms the recipe must have. | 
 **maxVitaminB12** | **float32** | The maximum amount of Vitamin B12 in micrograms the recipe can have. | 
 **minFiber** | **float32** | The minimum amount of fiber in grams the recipe must have. | 
 **maxFiber** | **float32** | The maximum amount of fiber in grams the recipe can have. | 
 **minFolate** | **float32** | The minimum amount of folate in micrograms the recipe must have. | 
 **maxFolate** | **float32** | The maximum amount of folate in micrograms the recipe can have. | 
 **minFolicAcid** | **float32** | The minimum amount of folic acid in micrograms the recipe must have. | 
 **maxFolicAcid** | **float32** | The maximum amount of folic acid in micrograms the recipe can have. | 
 **minIodine** | **float32** | The minimum amount of iodine in micrograms the recipe must have. | 
 **maxIodine** | **float32** | The maximum amount of iodine in micrograms the recipe can have. | 
 **minIron** | **float32** | The minimum amount of iron in milligrams the recipe must have. | 
 **maxIron** | **float32** | The maximum amount of iron in milligrams the recipe can have. | 
 **minMagnesium** | **float32** | The minimum amount of magnesium in milligrams the recipe must have. | 
 **maxMagnesium** | **float32** | The maximum amount of magnesium in milligrams the recipe can have. | 
 **minManganese** | **float32** | The minimum amount of manganese in milligrams the recipe must have. | 
 **maxManganese** | **float32** | The maximum amount of manganese in milligrams the recipe can have. | 
 **minPhosphorus** | **float32** | The minimum amount of phosphorus in milligrams the recipe must have. | 
 **maxPhosphorus** | **float32** | The maximum amount of phosphorus in milligrams the recipe can have. | 
 **minPotassium** | **float32** | The minimum amount of potassium in milligrams the recipe must have. | 
 **maxPotassium** | **float32** | The maximum amount of potassium in milligrams the recipe can have. | 
 **minSelenium** | **float32** | The minimum amount of selenium in micrograms the recipe must have. | 
 **maxSelenium** | **float32** | The maximum amount of selenium in micrograms the recipe can have. | 
 **minSodium** | **float32** | The minimum amount of sodium in milligrams the recipe must have. | 
 **maxSodium** | **float32** | The maximum amount of sodium in milligrams the recipe can have. | 
 **minSugar** | **float32** | The minimum amount of sugar in grams the recipe must have. | 
 **maxSugar** | **float32** | The maximum amount of sugar in grams the recipe can have. | 
 **minZinc** | **float32** | The minimum amount of zinc in milligrams the recipe must have. | 
 **maxZinc** | **float32** | The maximum amount of zinc in milligrams the recipe can have. | 
 **offset** | **int32** | The number of results to skip (between 0 and 900). | 
 **number** | **int32** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]
 **limitLicense** | **bool** | Whether the recipes should have an open license that allows display with proper attribution. | [default to true]

### Return type

[**SearchRecipes200Response**](SearchRecipes200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchRecipesByIngredients

> []SearchRecipesByIngredients200ResponseInner SearchRecipesByIngredients(ctx).Ingredients(ingredients).Number(number).LimitLicense(limitLicense).Ranking(ranking).IgnorePantry(ignorePantry).Execute()

Search Recipes by Ingredients



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    ingredients := "carrots,tomatoes" // string | A comma-separated list of ingredients that the recipes should contain. (optional)
    number := int32(10) // int32 | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)
    limitLicense := true // bool | Whether the recipes should have an open license that allows display with proper attribution. (optional) (default to true)
    ranking := float32(1) // float32 | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. (optional)
    ignorePantry := false // bool | Whether to ignore typical pantry items, such as water, salt, flour, etc. (optional) (default to false)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.SearchRecipesByIngredients(context.Background()).Ingredients(ingredients).Number(number).LimitLicense(limitLicense).Ranking(ranking).IgnorePantry(ignorePantry).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.SearchRecipesByIngredients``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SearchRecipesByIngredients`: []SearchRecipesByIngredients200ResponseInner
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.SearchRecipesByIngredients`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchRecipesByIngredientsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **string** | A comma-separated list of ingredients that the recipes should contain. | 
 **number** | **int32** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]
 **limitLicense** | **bool** | Whether the recipes should have an open license that allows display with proper attribution. | [default to true]
 **ranking** | **float32** | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | 
 **ignorePantry** | **bool** | Whether to ignore typical pantry items, such as water, salt, flour, etc. | [default to false]

### Return type

[**[]SearchRecipesByIngredients200ResponseInner**](SearchRecipesByIngredients200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchRecipesByNutrients

> []SearchRecipesByNutrients200ResponseInner SearchRecipesByNutrients(ctx).MinCarbs(minCarbs).MaxCarbs(maxCarbs).MinProtein(minProtein).MaxProtein(maxProtein).MinCalories(minCalories).MaxCalories(maxCalories).MinFat(minFat).MaxFat(maxFat).MinAlcohol(minAlcohol).MaxAlcohol(maxAlcohol).MinCaffeine(minCaffeine).MaxCaffeine(maxCaffeine).MinCopper(minCopper).MaxCopper(maxCopper).MinCalcium(minCalcium).MaxCalcium(maxCalcium).MinCholine(minCholine).MaxCholine(maxCholine).MinCholesterol(minCholesterol).MaxCholesterol(maxCholesterol).MinFluoride(minFluoride).MaxFluoride(maxFluoride).MinSaturatedFat(minSaturatedFat).MaxSaturatedFat(maxSaturatedFat).MinVitaminA(minVitaminA).MaxVitaminA(maxVitaminA).MinVitaminC(minVitaminC).MaxVitaminC(maxVitaminC).MinVitaminD(minVitaminD).MaxVitaminD(maxVitaminD).MinVitaminE(minVitaminE).MaxVitaminE(maxVitaminE).MinVitaminK(minVitaminK).MaxVitaminK(maxVitaminK).MinVitaminB1(minVitaminB1).MaxVitaminB1(maxVitaminB1).MinVitaminB2(minVitaminB2).MaxVitaminB2(maxVitaminB2).MinVitaminB5(minVitaminB5).MaxVitaminB5(maxVitaminB5).MinVitaminB3(minVitaminB3).MaxVitaminB3(maxVitaminB3).MinVitaminB6(minVitaminB6).MaxVitaminB6(maxVitaminB6).MinVitaminB12(minVitaminB12).MaxVitaminB12(maxVitaminB12).MinFiber(minFiber).MaxFiber(maxFiber).MinFolate(minFolate).MaxFolate(maxFolate).MinFolicAcid(minFolicAcid).MaxFolicAcid(maxFolicAcid).MinIodine(minIodine).MaxIodine(maxIodine).MinIron(minIron).MaxIron(maxIron).MinMagnesium(minMagnesium).MaxMagnesium(maxMagnesium).MinManganese(minManganese).MaxManganese(maxManganese).MinPhosphorus(minPhosphorus).MaxPhosphorus(maxPhosphorus).MinPotassium(minPotassium).MaxPotassium(maxPotassium).MinSelenium(minSelenium).MaxSelenium(maxSelenium).MinSodium(minSodium).MaxSodium(maxSodium).MinSugar(minSugar).MaxSugar(maxSugar).MinZinc(minZinc).MaxZinc(maxZinc).Offset(offset).Number(number).Random(random).LimitLicense(limitLicense).Execute()

Search Recipes by Nutrients



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    minCarbs := float32(10) // float32 | The minimum amount of carbohydrates in grams the recipe must have. (optional)
    maxCarbs := float32(100) // float32 | The maximum amount of carbohydrates in grams the recipe can have. (optional)
    minProtein := float32(10) // float32 | The minimum amount of protein in grams the recipe must have. (optional)
    maxProtein := float32(100) // float32 | The maximum amount of protein in grams the recipe can have. (optional)
    minCalories := float32(50) // float32 | The minimum amount of calories the recipe must have. (optional)
    maxCalories := float32(800) // float32 | The maximum amount of calories the recipe can have. (optional)
    minFat := float32(1) // float32 | The minimum amount of fat in grams the recipe must have. (optional)
    maxFat := float32(100) // float32 | The maximum amount of fat in grams the recipe can have. (optional)
    minAlcohol := float32(0) // float32 | The minimum amount of alcohol in grams the recipe must have. (optional)
    maxAlcohol := float32(100) // float32 | The maximum amount of alcohol in grams the recipe can have. (optional)
    minCaffeine := float32(0) // float32 | The minimum amount of caffeine in milligrams the recipe must have. (optional)
    maxCaffeine := float32(100) // float32 | The maximum amount of caffeine in milligrams the recipe can have. (optional)
    minCopper := float32(0) // float32 | The minimum amount of copper in milligrams the recipe must have. (optional)
    maxCopper := float32(100) // float32 | The maximum amount of copper in milligrams the recipe can have. (optional)
    minCalcium := float32(0) // float32 | The minimum amount of calcium in milligrams the recipe must have. (optional)
    maxCalcium := float32(100) // float32 | The maximum amount of calcium in milligrams the recipe can have. (optional)
    minCholine := float32(0) // float32 | The minimum amount of choline in milligrams the recipe must have. (optional)
    maxCholine := float32(100) // float32 | The maximum amount of choline in milligrams the recipe can have. (optional)
    minCholesterol := float32(0) // float32 | The minimum amount of cholesterol in milligrams the recipe must have. (optional)
    maxCholesterol := float32(100) // float32 | The maximum amount of cholesterol in milligrams the recipe can have. (optional)
    minFluoride := float32(0) // float32 | The minimum amount of fluoride in milligrams the recipe must have. (optional)
    maxFluoride := float32(100) // float32 | The maximum amount of fluoride in milligrams the recipe can have. (optional)
    minSaturatedFat := float32(0) // float32 | The minimum amount of saturated fat in grams the recipe must have. (optional)
    maxSaturatedFat := float32(100) // float32 | The maximum amount of saturated fat in grams the recipe can have. (optional)
    minVitaminA := float32(0) // float32 | The minimum amount of Vitamin A in IU the recipe must have. (optional)
    maxVitaminA := float32(100) // float32 | The maximum amount of Vitamin A in IU the recipe can have. (optional)
    minVitaminC := float32(0) // float32 | The minimum amount of Vitamin C in milligrams the recipe must have. (optional)
    maxVitaminC := float32(100) // float32 | The maximum amount of Vitamin C in milligrams the recipe can have. (optional)
    minVitaminD := float32(0) // float32 | The minimum amount of Vitamin D in micrograms the recipe must have. (optional)
    maxVitaminD := float32(100) // float32 | The maximum amount of Vitamin D in micrograms the recipe can have. (optional)
    minVitaminE := float32(0) // float32 | The minimum amount of Vitamin E in milligrams the recipe must have. (optional)
    maxVitaminE := float32(100) // float32 | The maximum amount of Vitamin E in milligrams the recipe can have. (optional)
    minVitaminK := float32(0) // float32 | The minimum amount of Vitamin K in micrograms the recipe must have. (optional)
    maxVitaminK := float32(100) // float32 | The maximum amount of Vitamin K in micrograms the recipe can have. (optional)
    minVitaminB1 := float32(0) // float32 | The minimum amount of Vitamin B1 in milligrams the recipe must have. (optional)
    maxVitaminB1 := float32(100) // float32 | The maximum amount of Vitamin B1 in milligrams the recipe can have. (optional)
    minVitaminB2 := float32(0) // float32 | The minimum amount of Vitamin B2 in milligrams the recipe must have. (optional)
    maxVitaminB2 := float32(100) // float32 | The maximum amount of Vitamin B2 in milligrams the recipe can have. (optional)
    minVitaminB5 := float32(0) // float32 | The minimum amount of Vitamin B5 in milligrams the recipe must have. (optional)
    maxVitaminB5 := float32(100) // float32 | The maximum amount of Vitamin B5 in milligrams the recipe can have. (optional)
    minVitaminB3 := float32(0) // float32 | The minimum amount of Vitamin B3 in milligrams the recipe must have. (optional)
    maxVitaminB3 := float32(100) // float32 | The maximum amount of Vitamin B3 in milligrams the recipe can have. (optional)
    minVitaminB6 := float32(0) // float32 | The minimum amount of Vitamin B6 in milligrams the recipe must have. (optional)
    maxVitaminB6 := float32(100) // float32 | The maximum amount of Vitamin B6 in milligrams the recipe can have. (optional)
    minVitaminB12 := float32(0) // float32 | The minimum amount of Vitamin B12 in micrograms the recipe must have. (optional)
    maxVitaminB12 := float32(100) // float32 | The maximum amount of Vitamin B12 in micrograms the recipe can have. (optional)
    minFiber := float32(0) // float32 | The minimum amount of fiber in grams the recipe must have. (optional)
    maxFiber := float32(100) // float32 | The maximum amount of fiber in grams the recipe can have. (optional)
    minFolate := float32(0) // float32 | The minimum amount of folate in micrograms the recipe must have. (optional)
    maxFolate := float32(100) // float32 | The maximum amount of folate in micrograms the recipe can have. (optional)
    minFolicAcid := float32(0) // float32 | The minimum amount of folic acid in micrograms the recipe must have. (optional)
    maxFolicAcid := float32(100) // float32 | The maximum amount of folic acid in micrograms the recipe can have. (optional)
    minIodine := float32(0) // float32 | The minimum amount of iodine in micrograms the recipe must have. (optional)
    maxIodine := float32(100) // float32 | The maximum amount of iodine in micrograms the recipe can have. (optional)
    minIron := float32(0) // float32 | The minimum amount of iron in milligrams the recipe must have. (optional)
    maxIron := float32(100) // float32 | The maximum amount of iron in milligrams the recipe can have. (optional)
    minMagnesium := float32(0) // float32 | The minimum amount of magnesium in milligrams the recipe must have. (optional)
    maxMagnesium := float32(100) // float32 | The maximum amount of magnesium in milligrams the recipe can have. (optional)
    minManganese := float32(0) // float32 | The minimum amount of manganese in milligrams the recipe must have. (optional)
    maxManganese := float32(100) // float32 | The maximum amount of manganese in milligrams the recipe can have. (optional)
    minPhosphorus := float32(0) // float32 | The minimum amount of phosphorus in milligrams the recipe must have. (optional)
    maxPhosphorus := float32(100) // float32 | The maximum amount of phosphorus in milligrams the recipe can have. (optional)
    minPotassium := float32(0) // float32 | The minimum amount of potassium in milligrams the recipe must have. (optional)
    maxPotassium := float32(100) // float32 | The maximum amount of potassium in milligrams the recipe can have. (optional)
    minSelenium := float32(0) // float32 | The minimum amount of selenium in micrograms the recipe must have. (optional)
    maxSelenium := float32(100) // float32 | The maximum amount of selenium in micrograms the recipe can have. (optional)
    minSodium := float32(0) // float32 | The minimum amount of sodium in milligrams the recipe must have. (optional)
    maxSodium := float32(100) // float32 | The maximum amount of sodium in milligrams the recipe can have. (optional)
    minSugar := float32(0) // float32 | The minimum amount of sugar in grams the recipe must have. (optional)
    maxSugar := float32(100) // float32 | The maximum amount of sugar in grams the recipe can have. (optional)
    minZinc := float32(0) // float32 | The minimum amount of zinc in milligrams the recipe must have. (optional)
    maxZinc := float32(100) // float32 | The maximum amount of zinc in milligrams the recipe can have. (optional)
    offset := int32(56) // int32 | The number of results to skip (between 0 and 900). (optional)
    number := int32(10) // int32 | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)
    random := false // bool | If true, every request will give you a random set of recipes within the requested limits. (optional)
    limitLicense := true // bool | Whether the recipes should have an open license that allows display with proper attribution. (optional) (default to true)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.SearchRecipesByNutrients(context.Background()).MinCarbs(minCarbs).MaxCarbs(maxCarbs).MinProtein(minProtein).MaxProtein(maxProtein).MinCalories(minCalories).MaxCalories(maxCalories).MinFat(minFat).MaxFat(maxFat).MinAlcohol(minAlcohol).MaxAlcohol(maxAlcohol).MinCaffeine(minCaffeine).MaxCaffeine(maxCaffeine).MinCopper(minCopper).MaxCopper(maxCopper).MinCalcium(minCalcium).MaxCalcium(maxCalcium).MinCholine(minCholine).MaxCholine(maxCholine).MinCholesterol(minCholesterol).MaxCholesterol(maxCholesterol).MinFluoride(minFluoride).MaxFluoride(maxFluoride).MinSaturatedFat(minSaturatedFat).MaxSaturatedFat(maxSaturatedFat).MinVitaminA(minVitaminA).MaxVitaminA(maxVitaminA).MinVitaminC(minVitaminC).MaxVitaminC(maxVitaminC).MinVitaminD(minVitaminD).MaxVitaminD(maxVitaminD).MinVitaminE(minVitaminE).MaxVitaminE(maxVitaminE).MinVitaminK(minVitaminK).MaxVitaminK(maxVitaminK).MinVitaminB1(minVitaminB1).MaxVitaminB1(maxVitaminB1).MinVitaminB2(minVitaminB2).MaxVitaminB2(maxVitaminB2).MinVitaminB5(minVitaminB5).MaxVitaminB5(maxVitaminB5).MinVitaminB3(minVitaminB3).MaxVitaminB3(maxVitaminB3).MinVitaminB6(minVitaminB6).MaxVitaminB6(maxVitaminB6).MinVitaminB12(minVitaminB12).MaxVitaminB12(maxVitaminB12).MinFiber(minFiber).MaxFiber(maxFiber).MinFolate(minFolate).MaxFolate(maxFolate).MinFolicAcid(minFolicAcid).MaxFolicAcid(maxFolicAcid).MinIodine(minIodine).MaxIodine(maxIodine).MinIron(minIron).MaxIron(maxIron).MinMagnesium(minMagnesium).MaxMagnesium(maxMagnesium).MinManganese(minManganese).MaxManganese(maxManganese).MinPhosphorus(minPhosphorus).MaxPhosphorus(maxPhosphorus).MinPotassium(minPotassium).MaxPotassium(maxPotassium).MinSelenium(minSelenium).MaxSelenium(maxSelenium).MinSodium(minSodium).MaxSodium(maxSodium).MinSugar(minSugar).MaxSugar(maxSugar).MinZinc(minZinc).MaxZinc(maxZinc).Offset(offset).Number(number).Random(random).LimitLicense(limitLicense).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.SearchRecipesByNutrients``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SearchRecipesByNutrients`: []SearchRecipesByNutrients200ResponseInner
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.SearchRecipesByNutrients`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchRecipesByNutrientsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minCarbs** | **float32** | The minimum amount of carbohydrates in grams the recipe must have. | 
 **maxCarbs** | **float32** | The maximum amount of carbohydrates in grams the recipe can have. | 
 **minProtein** | **float32** | The minimum amount of protein in grams the recipe must have. | 
 **maxProtein** | **float32** | The maximum amount of protein in grams the recipe can have. | 
 **minCalories** | **float32** | The minimum amount of calories the recipe must have. | 
 **maxCalories** | **float32** | The maximum amount of calories the recipe can have. | 
 **minFat** | **float32** | The minimum amount of fat in grams the recipe must have. | 
 **maxFat** | **float32** | The maximum amount of fat in grams the recipe can have. | 
 **minAlcohol** | **float32** | The minimum amount of alcohol in grams the recipe must have. | 
 **maxAlcohol** | **float32** | The maximum amount of alcohol in grams the recipe can have. | 
 **minCaffeine** | **float32** | The minimum amount of caffeine in milligrams the recipe must have. | 
 **maxCaffeine** | **float32** | The maximum amount of caffeine in milligrams the recipe can have. | 
 **minCopper** | **float32** | The minimum amount of copper in milligrams the recipe must have. | 
 **maxCopper** | **float32** | The maximum amount of copper in milligrams the recipe can have. | 
 **minCalcium** | **float32** | The minimum amount of calcium in milligrams the recipe must have. | 
 **maxCalcium** | **float32** | The maximum amount of calcium in milligrams the recipe can have. | 
 **minCholine** | **float32** | The minimum amount of choline in milligrams the recipe must have. | 
 **maxCholine** | **float32** | The maximum amount of choline in milligrams the recipe can have. | 
 **minCholesterol** | **float32** | The minimum amount of cholesterol in milligrams the recipe must have. | 
 **maxCholesterol** | **float32** | The maximum amount of cholesterol in milligrams the recipe can have. | 
 **minFluoride** | **float32** | The minimum amount of fluoride in milligrams the recipe must have. | 
 **maxFluoride** | **float32** | The maximum amount of fluoride in milligrams the recipe can have. | 
 **minSaturatedFat** | **float32** | The minimum amount of saturated fat in grams the recipe must have. | 
 **maxSaturatedFat** | **float32** | The maximum amount of saturated fat in grams the recipe can have. | 
 **minVitaminA** | **float32** | The minimum amount of Vitamin A in IU the recipe must have. | 
 **maxVitaminA** | **float32** | The maximum amount of Vitamin A in IU the recipe can have. | 
 **minVitaminC** | **float32** | The minimum amount of Vitamin C in milligrams the recipe must have. | 
 **maxVitaminC** | **float32** | The maximum amount of Vitamin C in milligrams the recipe can have. | 
 **minVitaminD** | **float32** | The minimum amount of Vitamin D in micrograms the recipe must have. | 
 **maxVitaminD** | **float32** | The maximum amount of Vitamin D in micrograms the recipe can have. | 
 **minVitaminE** | **float32** | The minimum amount of Vitamin E in milligrams the recipe must have. | 
 **maxVitaminE** | **float32** | The maximum amount of Vitamin E in milligrams the recipe can have. | 
 **minVitaminK** | **float32** | The minimum amount of Vitamin K in micrograms the recipe must have. | 
 **maxVitaminK** | **float32** | The maximum amount of Vitamin K in micrograms the recipe can have. | 
 **minVitaminB1** | **float32** | The minimum amount of Vitamin B1 in milligrams the recipe must have. | 
 **maxVitaminB1** | **float32** | The maximum amount of Vitamin B1 in milligrams the recipe can have. | 
 **minVitaminB2** | **float32** | The minimum amount of Vitamin B2 in milligrams the recipe must have. | 
 **maxVitaminB2** | **float32** | The maximum amount of Vitamin B2 in milligrams the recipe can have. | 
 **minVitaminB5** | **float32** | The minimum amount of Vitamin B5 in milligrams the recipe must have. | 
 **maxVitaminB5** | **float32** | The maximum amount of Vitamin B5 in milligrams the recipe can have. | 
 **minVitaminB3** | **float32** | The minimum amount of Vitamin B3 in milligrams the recipe must have. | 
 **maxVitaminB3** | **float32** | The maximum amount of Vitamin B3 in milligrams the recipe can have. | 
 **minVitaminB6** | **float32** | The minimum amount of Vitamin B6 in milligrams the recipe must have. | 
 **maxVitaminB6** | **float32** | The maximum amount of Vitamin B6 in milligrams the recipe can have. | 
 **minVitaminB12** | **float32** | The minimum amount of Vitamin B12 in micrograms the recipe must have. | 
 **maxVitaminB12** | **float32** | The maximum amount of Vitamin B12 in micrograms the recipe can have. | 
 **minFiber** | **float32** | The minimum amount of fiber in grams the recipe must have. | 
 **maxFiber** | **float32** | The maximum amount of fiber in grams the recipe can have. | 
 **minFolate** | **float32** | The minimum amount of folate in micrograms the recipe must have. | 
 **maxFolate** | **float32** | The maximum amount of folate in micrograms the recipe can have. | 
 **minFolicAcid** | **float32** | The minimum amount of folic acid in micrograms the recipe must have. | 
 **maxFolicAcid** | **float32** | The maximum amount of folic acid in micrograms the recipe can have. | 
 **minIodine** | **float32** | The minimum amount of iodine in micrograms the recipe must have. | 
 **maxIodine** | **float32** | The maximum amount of iodine in micrograms the recipe can have. | 
 **minIron** | **float32** | The minimum amount of iron in milligrams the recipe must have. | 
 **maxIron** | **float32** | The maximum amount of iron in milligrams the recipe can have. | 
 **minMagnesium** | **float32** | The minimum amount of magnesium in milligrams the recipe must have. | 
 **maxMagnesium** | **float32** | The maximum amount of magnesium in milligrams the recipe can have. | 
 **minManganese** | **float32** | The minimum amount of manganese in milligrams the recipe must have. | 
 **maxManganese** | **float32** | The maximum amount of manganese in milligrams the recipe can have. | 
 **minPhosphorus** | **float32** | The minimum amount of phosphorus in milligrams the recipe must have. | 
 **maxPhosphorus** | **float32** | The maximum amount of phosphorus in milligrams the recipe can have. | 
 **minPotassium** | **float32** | The minimum amount of potassium in milligrams the recipe must have. | 
 **maxPotassium** | **float32** | The maximum amount of potassium in milligrams the recipe can have. | 
 **minSelenium** | **float32** | The minimum amount of selenium in micrograms the recipe must have. | 
 **maxSelenium** | **float32** | The maximum amount of selenium in micrograms the recipe can have. | 
 **minSodium** | **float32** | The minimum amount of sodium in milligrams the recipe must have. | 
 **maxSodium** | **float32** | The maximum amount of sodium in milligrams the recipe can have. | 
 **minSugar** | **float32** | The minimum amount of sugar in grams the recipe must have. | 
 **maxSugar** | **float32** | The maximum amount of sugar in grams the recipe can have. | 
 **minZinc** | **float32** | The minimum amount of zinc in milligrams the recipe must have. | 
 **maxZinc** | **float32** | The maximum amount of zinc in milligrams the recipe can have. | 
 **offset** | **int32** | The number of results to skip (between 0 and 900). | 
 **number** | **int32** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]
 **random** | **bool** | If true, every request will give you a random set of recipes within the requested limits. | 
 **limitLicense** | **bool** | Whether the recipes should have an open license that allows display with proper attribution. | [default to true]

### Return type

[**[]SearchRecipesByNutrients200ResponseInner**](SearchRecipesByNutrients200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SummarizeRecipe

> SummarizeRecipe200Response SummarizeRecipe(ctx, id).Execute()

Summarize Recipe



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := int32(1) // int32 | The item's id.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.SummarizeRecipe(context.Background(), id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.SummarizeRecipe``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SummarizeRecipe`: SummarizeRecipe200Response
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.SummarizeRecipe`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiSummarizeRecipeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SummarizeRecipe200Response**](SummarizeRecipe200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeEquipment

> string VisualizeEquipment(ctx).ContentType(contentType).Accept(accept).Execute()

Equipment Widget



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    contentType := "application/json" // string | The content type. (optional)
    accept := "application/json" // string | Accept header. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.VisualizeEquipment(context.Background()).ContentType(contentType).Accept(accept).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.VisualizeEquipment``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VisualizeEquipment`: string
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.VisualizeEquipment`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiVisualizeEquipmentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **string** | The content type. | 
 **accept** | **string** | Accept header. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizePriceBreakdown

> string VisualizePriceBreakdown(ctx).ContentType(contentType).Accept(accept).Language(language).Execute()

Price Breakdown Widget



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    contentType := "application/json" // string | The content type. (optional)
    accept := "application/json" // string | Accept header. (optional)
    language := "en" // string | The language of the input. Either 'en' or 'de'. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.VisualizePriceBreakdown(context.Background()).ContentType(contentType).Accept(accept).Language(language).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.VisualizePriceBreakdown``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VisualizePriceBreakdown`: string
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.VisualizePriceBreakdown`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiVisualizePriceBreakdownRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **string** | The content type. | 
 **accept** | **string** | Accept header. | 
 **language** | **string** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeRecipeEquipmentByID

> string VisualizeRecipeEquipmentByID(ctx, id).DefaultCss(defaultCss).Execute()

Equipment by ID Widget



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := int32(1) // int32 | The item's id.
    defaultCss := false // bool | Whether the default CSS should be added to the response. (optional) (default to true)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.VisualizeRecipeEquipmentByID(context.Background(), id).DefaultCss(defaultCss).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.VisualizeRecipeEquipmentByID``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VisualizeRecipeEquipmentByID`: string
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.VisualizeRecipeEquipmentByID`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiVisualizeRecipeEquipmentByIDRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **defaultCss** | **bool** | Whether the default CSS should be added to the response. | [default to true]

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeRecipeIngredientsByID

> string VisualizeRecipeIngredientsByID(ctx, id).DefaultCss(defaultCss).Measure(measure).Execute()

Ingredients by ID Widget



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := int32(1) // int32 | The item's id.
    defaultCss := false // bool | Whether the default CSS should be added to the response. (optional) (default to true)
    measure := "metric" // string | Whether the the measures should be 'us' or 'metric'. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.VisualizeRecipeIngredientsByID(context.Background(), id).DefaultCss(defaultCss).Measure(measure).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.VisualizeRecipeIngredientsByID``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VisualizeRecipeIngredientsByID`: string
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.VisualizeRecipeIngredientsByID`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiVisualizeRecipeIngredientsByIDRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **defaultCss** | **bool** | Whether the default CSS should be added to the response. | [default to true]
 **measure** | **string** | Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeRecipeNutrition

> string VisualizeRecipeNutrition(ctx).ContentType(contentType).Accept(accept).Language(language).Execute()

Recipe Nutrition Widget



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    contentType := "application/json" // string | The content type. (optional)
    accept := "application/json" // string | Accept header. (optional)
    language := "en" // string | The language of the input. Either 'en' or 'de'. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.VisualizeRecipeNutrition(context.Background()).ContentType(contentType).Accept(accept).Language(language).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.VisualizeRecipeNutrition``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VisualizeRecipeNutrition`: string
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.VisualizeRecipeNutrition`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiVisualizeRecipeNutritionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **string** | The content type. | 
 **accept** | **string** | Accept header. | 
 **language** | **string** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeRecipeNutritionByID

> string VisualizeRecipeNutritionByID(ctx, id).DefaultCss(defaultCss).Accept(accept).Execute()

Recipe Nutrition by ID Widget



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := int32(1) // int32 | The item's id.
    defaultCss := false // bool | Whether the default CSS should be added to the response. (optional) (default to true)
    accept := "application/json" // string | Accept header. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.VisualizeRecipeNutritionByID(context.Background(), id).DefaultCss(defaultCss).Accept(accept).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.VisualizeRecipeNutritionByID``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VisualizeRecipeNutritionByID`: string
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.VisualizeRecipeNutritionByID`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiVisualizeRecipeNutritionByIDRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **defaultCss** | **bool** | Whether the default CSS should be added to the response. | [default to true]
 **accept** | **string** | Accept header. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeRecipePriceBreakdownByID

> string VisualizeRecipePriceBreakdownByID(ctx, id).DefaultCss(defaultCss).Execute()

Price Breakdown by ID Widget



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := int32(1) // int32 | The item's id.
    defaultCss := false // bool | Whether the default CSS should be added to the response. (optional) (default to true)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.VisualizeRecipePriceBreakdownByID(context.Background(), id).DefaultCss(defaultCss).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.VisualizeRecipePriceBreakdownByID``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VisualizeRecipePriceBreakdownByID`: string
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.VisualizeRecipePriceBreakdownByID`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiVisualizeRecipePriceBreakdownByIDRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **defaultCss** | **bool** | Whether the default CSS should be added to the response. | [default to true]

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeRecipeTaste

> string VisualizeRecipeTaste(ctx).Language(language).ContentType(contentType).Accept(accept).Normalize(normalize).Rgb(rgb).Execute()

Recipe Taste Widget



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    language := "en" // string | The language of the input. Either 'en' or 'de'. (optional)
    contentType := "application/json" // string | The content type. (optional)
    accept := "application/json" // string | Accept header. (optional)
    normalize := true // bool | Whether to normalize to the strongest taste. (optional)
    rgb := "75,192,192" // string | Red, green, blue values for the chart color. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.VisualizeRecipeTaste(context.Background()).Language(language).ContentType(contentType).Accept(accept).Normalize(normalize).Rgb(rgb).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.VisualizeRecipeTaste``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VisualizeRecipeTaste`: string
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.VisualizeRecipeTaste`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiVisualizeRecipeTasteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | **string** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | 
 **contentType** | **string** | The content type. | 
 **accept** | **string** | Accept header. | 
 **normalize** | **bool** | Whether to normalize to the strongest taste. | 
 **rgb** | **string** | Red, green, blue values for the chart color. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeRecipeTasteByID

> string VisualizeRecipeTasteByID(ctx, id).Normalize(normalize).Rgb(rgb).Execute()

Recipe Taste by ID Widget



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := int32(1) // int32 | The item's id.
    normalize := true // bool | Whether to normalize to the strongest taste. (optional) (default to true)
    rgb := "75,192,192" // string | Red, green, blue values for the chart color. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.RecipesApi.VisualizeRecipeTasteByID(context.Background(), id).Normalize(normalize).Rgb(rgb).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RecipesApi.VisualizeRecipeTasteByID``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VisualizeRecipeTasteByID`: string
    fmt.Fprintf(os.Stdout, "Response from `RecipesApi.VisualizeRecipeTasteByID`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiVisualizeRecipeTasteByIDRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **normalize** | **bool** | Whether to normalize to the strongest taste. | [default to true]
 **rgb** | **string** | Red, green, blue values for the chart color. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

