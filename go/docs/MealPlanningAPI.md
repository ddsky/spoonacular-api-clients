# \MealPlanningAPI

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddMealPlanTemplate**](MealPlanningAPI.md#AddMealPlanTemplate) | **Post** /mealplanner/{username}/templates | Add Meal Plan Template
[**AddToMealPlan**](MealPlanningAPI.md#AddToMealPlan) | **Post** /mealplanner/{username}/items | Add to Meal Plan
[**AddToShoppingList**](MealPlanningAPI.md#AddToShoppingList) | **Post** /mealplanner/{username}/shopping-list/items | Add to Shopping List
[**ClearMealPlanDay**](MealPlanningAPI.md#ClearMealPlanDay) | **Delete** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
[**ConnectUser**](MealPlanningAPI.md#ConnectUser) | **Post** /users/connect | Connect User
[**DeleteFromMealPlan**](MealPlanningAPI.md#DeleteFromMealPlan) | **Delete** /mealplanner/{username}/items/{id} | Delete from Meal Plan
[**DeleteFromShoppingList**](MealPlanningAPI.md#DeleteFromShoppingList) | **Delete** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
[**DeleteMealPlanTemplate**](MealPlanningAPI.md#DeleteMealPlanTemplate) | **Delete** /mealplanner/{username}/templates/{id} | Delete Meal Plan Template
[**GenerateMealPlan**](MealPlanningAPI.md#GenerateMealPlan) | **Get** /mealplanner/generate | Generate Meal Plan
[**GenerateShoppingList**](MealPlanningAPI.md#GenerateShoppingList) | **Post** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
[**GetMealPlanTemplate**](MealPlanningAPI.md#GetMealPlanTemplate) | **Get** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
[**GetMealPlanTemplates**](MealPlanningAPI.md#GetMealPlanTemplates) | **Get** /mealplanner/{username}/templates | Get Meal Plan Templates
[**GetMealPlanWeek**](MealPlanningAPI.md#GetMealPlanWeek) | **Get** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
[**GetShoppingList**](MealPlanningAPI.md#GetShoppingList) | **Get** /mealplanner/{username}/shopping-list | Get Shopping List



## AddMealPlanTemplate

> AddMealPlanTemplate200Response AddMealPlanTemplate(ctx, username).Hash(hash).Execute()

Add Meal Plan Template



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	username := "dsky" // string | The username.
	hash := "4b5v4398573406" // string | The private hash for the username.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MealPlanningAPI.AddMealPlanTemplate(context.Background(), username).Hash(hash).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MealPlanningAPI.AddMealPlanTemplate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AddMealPlanTemplate`: AddMealPlanTemplate200Response
	fmt.Fprintf(os.Stdout, "Response from `MealPlanningAPI.AddMealPlanTemplate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string** | The username. | 

### Other Parameters

Other parameters are passed through a pointer to a apiAddMealPlanTemplateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **hash** | **string** | The private hash for the username. | 

### Return type

[**AddMealPlanTemplate200Response**](AddMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AddToMealPlan

> map[string]interface{} AddToMealPlan(ctx, username).Hash(hash).AddToMealPlanRequest(addToMealPlanRequest).Execute()

Add to Meal Plan



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	username := "dsky" // string | The username.
	hash := "hash_example" // string | The private hash for the username.
	addToMealPlanRequest := *openapiclient.NewAddToMealPlanRequest(float32(123), int32(123), int32(123), "Type_example", *openapiclient.NewAddToMealPlanRequestValue([]openapiclient.AddToMealPlanRequestValueIngredientsInner{*openapiclient.NewAddToMealPlanRequestValueIngredientsInner("Name_example")})) // AddToMealPlanRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MealPlanningAPI.AddToMealPlan(context.Background(), username).Hash(hash).AddToMealPlanRequest(addToMealPlanRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MealPlanningAPI.AddToMealPlan``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AddToMealPlan`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `MealPlanningAPI.AddToMealPlan`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string** | The username. | 

### Other Parameters

Other parameters are passed through a pointer to a apiAddToMealPlanRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **hash** | **string** | The private hash for the username. | 
 **addToMealPlanRequest** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md) |  | 

### Return type

**map[string]interface{}**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AddToShoppingList

> GenerateShoppingList200Response AddToShoppingList(ctx, username).Hash(hash).AddToShoppingListRequest(addToShoppingListRequest).Execute()

Add to Shopping List



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	username := "dsky" // string | The username.
	hash := "hash_example" // string | The private hash for the username.
	addToShoppingListRequest := *openapiclient.NewAddToShoppingListRequest("Item_example", "Aisle_example", false) // AddToShoppingListRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MealPlanningAPI.AddToShoppingList(context.Background(), username).Hash(hash).AddToShoppingListRequest(addToShoppingListRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MealPlanningAPI.AddToShoppingList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AddToShoppingList`: GenerateShoppingList200Response
	fmt.Fprintf(os.Stdout, "Response from `MealPlanningAPI.AddToShoppingList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string** | The username. | 

### Other Parameters

Other parameters are passed through a pointer to a apiAddToShoppingListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **hash** | **string** | The private hash for the username. | 
 **addToShoppingListRequest** | [**AddToShoppingListRequest**](AddToShoppingListRequest.md) |  | 

### Return type

[**GenerateShoppingList200Response**](GenerateShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ClearMealPlanDay

> map[string]interface{} ClearMealPlanDay(ctx, username, date).Hash(hash).Execute()

Clear Meal Plan Day



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	username := "dsky" // string | The username.
	date := "2020-06-01" // string | The date in the format yyyy-mm-dd.
	hash := "hash_example" // string | The private hash for the username.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MealPlanningAPI.ClearMealPlanDay(context.Background(), username, date).Hash(hash).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MealPlanningAPI.ClearMealPlanDay``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ClearMealPlanDay`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `MealPlanningAPI.ClearMealPlanDay`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string** | The username. | 
**date** | **string** | The date in the format yyyy-mm-dd. | 

### Other Parameters

Other parameters are passed through a pointer to a apiClearMealPlanDayRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **hash** | **string** | The private hash for the username. | 

### Return type

**map[string]interface{}**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ConnectUser

> ConnectUser200Response ConnectUser(ctx).ConnectUserRequest(connectUserRequest).Execute()

Connect User



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	connectUserRequest := *openapiclient.NewConnectUserRequest("Username_example", "FirstName_example", "LastName_example", "Email_example") // ConnectUserRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MealPlanningAPI.ConnectUser(context.Background()).ConnectUserRequest(connectUserRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MealPlanningAPI.ConnectUser``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ConnectUser`: ConnectUser200Response
	fmt.Fprintf(os.Stdout, "Response from `MealPlanningAPI.ConnectUser`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiConnectUserRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectUserRequest** | [**ConnectUserRequest**](ConnectUserRequest.md) |  | 

### Return type

[**ConnectUser200Response**](ConnectUser200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteFromMealPlan

> map[string]interface{} DeleteFromMealPlan(ctx, username, id).Hash(hash).Execute()

Delete from Meal Plan



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	username := "dsky" // string | The username.
	id := float32(15678) // float32 | The shopping list item id.
	hash := "hash_example" // string | The private hash for the username.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MealPlanningAPI.DeleteFromMealPlan(context.Background(), username, id).Hash(hash).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MealPlanningAPI.DeleteFromMealPlan``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteFromMealPlan`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `MealPlanningAPI.DeleteFromMealPlan`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string** | The username. | 
**id** | **float32** | The shopping list item id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteFromMealPlanRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **hash** | **string** | The private hash for the username. | 

### Return type

**map[string]interface{}**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteFromShoppingList

> map[string]interface{} DeleteFromShoppingList(ctx, username, id).Hash(hash).Execute()

Delete from Shopping List



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	username := "dsky" // string | The username.
	id := int32(1) // int32 | The item's id.
	hash := "hash_example" // string | The private hash for the username.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MealPlanningAPI.DeleteFromShoppingList(context.Background(), username, id).Hash(hash).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MealPlanningAPI.DeleteFromShoppingList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteFromShoppingList`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `MealPlanningAPI.DeleteFromShoppingList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string** | The username. | 
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteFromShoppingListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **hash** | **string** | The private hash for the username. | 

### Return type

**map[string]interface{}**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteMealPlanTemplate

> map[string]interface{} DeleteMealPlanTemplate(ctx, username, id).Hash(hash).Execute()

Delete Meal Plan Template



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	username := "dsky" // string | The username.
	id := int32(1) // int32 | The item's id.
	hash := "4b5v4398573406" // string | The private hash for the username.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MealPlanningAPI.DeleteMealPlanTemplate(context.Background(), username, id).Hash(hash).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MealPlanningAPI.DeleteMealPlanTemplate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteMealPlanTemplate`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `MealPlanningAPI.DeleteMealPlanTemplate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string** | The username. | 
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteMealPlanTemplateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **hash** | **string** | The private hash for the username. | 

### Return type

**map[string]interface{}**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GenerateMealPlan

> GenerateMealPlan200Response GenerateMealPlan(ctx).TimeFrame(timeFrame).TargetCalories(targetCalories).Diet(diet).Exclude(exclude).Execute()

Generate Meal Plan



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	timeFrame := "day" // string | Either for one \"day\" or an entire \"week\". (optional)
	targetCalories := float32(2000) // float32 | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. (optional)
	diet := "vegetarian" // string | Enter a diet that the meal plan has to adhere to. See a full list of supported diets. (optional)
	exclude := "shellfish, olives" // string | A comma-separated list of allergens or ingredients that must be excluded. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MealPlanningAPI.GenerateMealPlan(context.Background()).TimeFrame(timeFrame).TargetCalories(targetCalories).Diet(diet).Exclude(exclude).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MealPlanningAPI.GenerateMealPlan``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GenerateMealPlan`: GenerateMealPlan200Response
	fmt.Fprintf(os.Stdout, "Response from `MealPlanningAPI.GenerateMealPlan`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGenerateMealPlanRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeFrame** | **string** | Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | 
 **targetCalories** | **float32** | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | 
 **diet** | **string** | Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | 
 **exclude** | **string** | A comma-separated list of allergens or ingredients that must be excluded. | 

### Return type

[**GenerateMealPlan200Response**](GenerateMealPlan200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GenerateShoppingList

> GenerateShoppingList200Response GenerateShoppingList(ctx, username, startDate, endDate).Hash(hash).Execute()

Generate Shopping List



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	username := "dsky" // string | The username.
	startDate := "2020-06-01" // string | The start date in the format yyyy-mm-dd.
	endDate := "2020-06-07" // string | The end date in the format yyyy-mm-dd.
	hash := "hash_example" // string | The private hash for the username.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MealPlanningAPI.GenerateShoppingList(context.Background(), username, startDate, endDate).Hash(hash).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MealPlanningAPI.GenerateShoppingList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GenerateShoppingList`: GenerateShoppingList200Response
	fmt.Fprintf(os.Stdout, "Response from `MealPlanningAPI.GenerateShoppingList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string** | The username. | 
**startDate** | **string** | The start date in the format yyyy-mm-dd. | 
**endDate** | **string** | The end date in the format yyyy-mm-dd. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGenerateShoppingListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **hash** | **string** | The private hash for the username. | 

### Return type

[**GenerateShoppingList200Response**](GenerateShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetMealPlanTemplate

> GetMealPlanTemplate200Response GetMealPlanTemplate(ctx, username, id).Hash(hash).Execute()

Get Meal Plan Template



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	username := "dsky" // string | The username.
	id := int32(1) // int32 | The item's id.
	hash := "hash_example" // string | The private hash for the username.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MealPlanningAPI.GetMealPlanTemplate(context.Background(), username, id).Hash(hash).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MealPlanningAPI.GetMealPlanTemplate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetMealPlanTemplate`: GetMealPlanTemplate200Response
	fmt.Fprintf(os.Stdout, "Response from `MealPlanningAPI.GetMealPlanTemplate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string** | The username. | 
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetMealPlanTemplateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **hash** | **string** | The private hash for the username. | 

### Return type

[**GetMealPlanTemplate200Response**](GetMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetMealPlanTemplates

> GetMealPlanTemplates200Response GetMealPlanTemplates(ctx, username).Hash(hash).Execute()

Get Meal Plan Templates



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	username := "dsky" // string | The username.
	hash := "hash_example" // string | The private hash for the username.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MealPlanningAPI.GetMealPlanTemplates(context.Background(), username).Hash(hash).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MealPlanningAPI.GetMealPlanTemplates``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetMealPlanTemplates`: GetMealPlanTemplates200Response
	fmt.Fprintf(os.Stdout, "Response from `MealPlanningAPI.GetMealPlanTemplates`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string** | The username. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetMealPlanTemplatesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **hash** | **string** | The private hash for the username. | 

### Return type

[**GetMealPlanTemplates200Response**](GetMealPlanTemplates200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetMealPlanWeek

> GetMealPlanWeek200Response GetMealPlanWeek(ctx, username, startDate).Hash(hash).Execute()

Get Meal Plan Week



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	username := "dsky" // string | The username.
	startDate := "2020-06-01" // string | The start date of the meal planned week in the format yyyy-mm-dd.
	hash := "hash_example" // string | The private hash for the username.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MealPlanningAPI.GetMealPlanWeek(context.Background(), username, startDate).Hash(hash).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MealPlanningAPI.GetMealPlanWeek``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetMealPlanWeek`: GetMealPlanWeek200Response
	fmt.Fprintf(os.Stdout, "Response from `MealPlanningAPI.GetMealPlanWeek`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string** | The username. | 
**startDate** | **string** | The start date of the meal planned week in the format yyyy-mm-dd. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetMealPlanWeekRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **hash** | **string** | The private hash for the username. | 

### Return type

[**GetMealPlanWeek200Response**](GetMealPlanWeek200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetShoppingList

> GetShoppingList200Response GetShoppingList(ctx, username).Hash(hash).Execute()

Get Shopping List



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	username := "dsky" // string | The username.
	hash := "hash_example" // string | The private hash for the username.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MealPlanningAPI.GetShoppingList(context.Background(), username).Hash(hash).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MealPlanningAPI.GetShoppingList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetShoppingList`: GetShoppingList200Response
	fmt.Fprintf(os.Stdout, "Response from `MealPlanningAPI.GetShoppingList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string** | The username. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetShoppingListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **hash** | **string** | The private hash for the username. | 

### Return type

[**GetShoppingList200Response**](GetShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

