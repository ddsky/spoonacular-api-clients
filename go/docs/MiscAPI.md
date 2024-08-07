# \MiscAPI

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DetectFoodInText**](MiscAPI.md#DetectFoodInText) | **Post** /food/detect | Detect Food in Text
[**GetARandomFoodJoke**](MiscAPI.md#GetARandomFoodJoke) | **Get** /food/jokes/random | Random Food Joke
[**GetConversationSuggests**](MiscAPI.md#GetConversationSuggests) | **Get** /food/converse/suggest | Conversation Suggests
[**GetRandomFoodTrivia**](MiscAPI.md#GetRandomFoodTrivia) | **Get** /food/trivia/random | Random Food Trivia
[**ImageAnalysisByURL**](MiscAPI.md#ImageAnalysisByURL) | **Get** /food/images/analyze | Image Analysis by URL
[**ImageClassificationByURL**](MiscAPI.md#ImageClassificationByURL) | **Get** /food/images/classify | Image Classification by URL
[**SearchAllFood**](MiscAPI.md#SearchAllFood) | **Get** /food/search | Search All Food
[**SearchCustomFoods**](MiscAPI.md#SearchCustomFoods) | **Get** /food/customFoods/search | Search Custom Foods
[**SearchFoodVideos**](MiscAPI.md#SearchFoodVideos) | **Get** /food/videos/search | Search Food Videos
[**SearchSiteContent**](MiscAPI.md#SearchSiteContent) | **Get** /food/site/search | Search Site Content
[**TalkToChatbot**](MiscAPI.md#TalkToChatbot) | **Get** /food/converse | Talk to Chatbot



## DetectFoodInText

> DetectFoodInText200Response DetectFoodInText(ctx).Text(text).Execute()

Detect Food in Text



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
	text := "text_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MiscAPI.DetectFoodInText(context.Background()).Text(text).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MiscAPI.DetectFoodInText``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DetectFoodInText`: DetectFoodInText200Response
	fmt.Fprintf(os.Stdout, "Response from `MiscAPI.DetectFoodInText`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDetectFoodInTextRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** |  | 

### Return type

[**DetectFoodInText200Response**](DetectFoodInText200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetARandomFoodJoke

> GetARandomFoodJoke200Response GetARandomFoodJoke(ctx).Execute()

Random Food Joke



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MiscAPI.GetARandomFoodJoke(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MiscAPI.GetARandomFoodJoke``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetARandomFoodJoke`: GetARandomFoodJoke200Response
	fmt.Fprintf(os.Stdout, "Response from `MiscAPI.GetARandomFoodJoke`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetARandomFoodJokeRequest struct via the builder pattern


### Return type

[**GetARandomFoodJoke200Response**](GetARandomFoodJoke200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetConversationSuggests

> GetConversationSuggests200Response GetConversationSuggests(ctx).Query(query).Number(number).Execute()

Conversation Suggests



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
	query := "tell" // string | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
	number := float32(5) // float32 | The number of suggestions to return (between 1 and 25). (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MiscAPI.GetConversationSuggests(context.Background()).Query(query).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MiscAPI.GetConversationSuggests``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetConversationSuggests`: GetConversationSuggests200Response
	fmt.Fprintf(os.Stdout, "Response from `MiscAPI.GetConversationSuggests`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetConversationSuggestsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | 
 **number** | **float32** | The number of suggestions to return (between 1 and 25). | 

### Return type

[**GetConversationSuggests200Response**](GetConversationSuggests200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRandomFoodTrivia

> GetARandomFoodJoke200Response GetRandomFoodTrivia(ctx).Execute()

Random Food Trivia



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MiscAPI.GetRandomFoodTrivia(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MiscAPI.GetRandomFoodTrivia``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetRandomFoodTrivia`: GetARandomFoodJoke200Response
	fmt.Fprintf(os.Stdout, "Response from `MiscAPI.GetRandomFoodTrivia`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetRandomFoodTriviaRequest struct via the builder pattern


### Return type

[**GetARandomFoodJoke200Response**](GetARandomFoodJoke200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ImageAnalysisByURL

> ImageAnalysisByURL200Response ImageAnalysisByURL(ctx).ImageUrl(imageUrl).Execute()

Image Analysis by URL



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
	imageUrl := "https://spoonacular.com/recipeImages/635350-240x150.jpg" // string | The URL of the image to be analyzed.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MiscAPI.ImageAnalysisByURL(context.Background()).ImageUrl(imageUrl).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MiscAPI.ImageAnalysisByURL``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ImageAnalysisByURL`: ImageAnalysisByURL200Response
	fmt.Fprintf(os.Stdout, "Response from `MiscAPI.ImageAnalysisByURL`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiImageAnalysisByURLRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **string** | The URL of the image to be analyzed. | 

### Return type

[**ImageAnalysisByURL200Response**](ImageAnalysisByURL200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ImageClassificationByURL

> ImageClassificationByURL200Response ImageClassificationByURL(ctx).ImageUrl(imageUrl).Execute()

Image Classification by URL



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
	imageUrl := "https://spoonacular.com/recipeImages/635350-240x150.jpg" // string | The URL of the image to be classified.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MiscAPI.ImageClassificationByURL(context.Background()).ImageUrl(imageUrl).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MiscAPI.ImageClassificationByURL``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ImageClassificationByURL`: ImageClassificationByURL200Response
	fmt.Fprintf(os.Stdout, "Response from `MiscAPI.ImageClassificationByURL`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiImageClassificationByURLRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **string** | The URL of the image to be classified. | 

### Return type

[**ImageClassificationByURL200Response**](ImageClassificationByURL200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchAllFood

> SearchAllFood200Response SearchAllFood(ctx).Query(query).Offset(offset).Number(number).Execute()

Search All Food



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
	query := "apple" // string | The search query.
	offset := int32(56) // int32 | The number of results to skip (between 0 and 900). (optional)
	number := int32(10) // int32 | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MiscAPI.SearchAllFood(context.Background()).Query(query).Offset(offset).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MiscAPI.SearchAllFood``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchAllFood`: SearchAllFood200Response
	fmt.Fprintf(os.Stdout, "Response from `MiscAPI.SearchAllFood`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchAllFoodRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **offset** | **int32** | The number of results to skip (between 0 and 900). | 
 **number** | **int32** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**SearchAllFood200Response**](SearchAllFood200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchCustomFoods

> SearchCustomFoods200Response SearchCustomFoods(ctx).Query(query).Username(username).Hash(hash).Offset(offset).Number(number).Execute()

Search Custom Foods



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
	query := "burger" // string | The (natural language) search query.
	username := "dsky" // string | The username.
	hash := "4b5v4398573406" // string | The private hash for the username.
	offset := int32(56) // int32 | The number of results to skip (between 0 and 900). (optional)
	number := int32(10) // int32 | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MiscAPI.SearchCustomFoods(context.Background()).Query(query).Username(username).Hash(hash).Offset(offset).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MiscAPI.SearchCustomFoods``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchCustomFoods`: SearchCustomFoods200Response
	fmt.Fprintf(os.Stdout, "Response from `MiscAPI.SearchCustomFoods`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchCustomFoodsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The (natural language) search query. | 
 **username** | **string** | The username. | 
 **hash** | **string** | The private hash for the username. | 
 **offset** | **int32** | The number of results to skip (between 0 and 900). | 
 **number** | **int32** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**SearchCustomFoods200Response**](SearchCustomFoods200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchFoodVideos

> SearchFoodVideos200Response SearchFoodVideos(ctx).Query(query).Type_(type_).Cuisine(cuisine).Diet(diet).IncludeIngredients(includeIngredients).ExcludeIngredients(excludeIngredients).MinLength(minLength).MaxLength(maxLength).Offset(offset).Number(number).Execute()

Search Food Videos



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
	query := "burger" // string | The (natural language) search query.
	type_ := "main course" // string | The type of the recipes. See a full list of supported meal types. (optional)
	cuisine := "italian" // string | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. (optional)
	diet := "vegetarian" // string | The diet for which the recipes must be suitable. See a full list of supported diets. (optional)
	includeIngredients := "tomato,cheese" // string | A comma-separated list of ingredients that the recipes should contain. (optional)
	excludeIngredients := "eggs" // string | A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional)
	minLength := float32(0) // float32 | Minimum video length in seconds. (optional)
	maxLength := float32(999) // float32 | Maximum video length in seconds. (optional)
	offset := int32(56) // int32 | The number of results to skip (between 0 and 900). (optional)
	number := int32(10) // int32 | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MiscAPI.SearchFoodVideos(context.Background()).Query(query).Type_(type_).Cuisine(cuisine).Diet(diet).IncludeIngredients(includeIngredients).ExcludeIngredients(excludeIngredients).MinLength(minLength).MaxLength(maxLength).Offset(offset).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MiscAPI.SearchFoodVideos``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchFoodVideos`: SearchFoodVideos200Response
	fmt.Fprintf(os.Stdout, "Response from `MiscAPI.SearchFoodVideos`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchFoodVideosRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The (natural language) search query. | 
 **type_** | **string** | The type of the recipes. See a full list of supported meal types. | 
 **cuisine** | **string** | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | 
 **diet** | **string** | The diet for which the recipes must be suitable. See a full list of supported diets. | 
 **includeIngredients** | **string** | A comma-separated list of ingredients that the recipes should contain. | 
 **excludeIngredients** | **string** | A comma-separated list of ingredients or ingredient types that the recipes must not contain. | 
 **minLength** | **float32** | Minimum video length in seconds. | 
 **maxLength** | **float32** | Maximum video length in seconds. | 
 **offset** | **int32** | The number of results to skip (between 0 and 900). | 
 **number** | **int32** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**SearchFoodVideos200Response**](SearchFoodVideos200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchSiteContent

> SearchSiteContent200Response SearchSiteContent(ctx).Query(query).Execute()

Search Site Content



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
	query := "past" // string | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MiscAPI.SearchSiteContent(context.Background()).Query(query).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MiscAPI.SearchSiteContent``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchSiteContent`: SearchSiteContent200Response
	fmt.Fprintf(os.Stdout, "Response from `MiscAPI.SearchSiteContent`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchSiteContentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. | 

### Return type

[**SearchSiteContent200Response**](SearchSiteContent200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TalkToChatbot

> TalkToChatbot200Response TalkToChatbot(ctx).Text(text).ContextId(contextId).Execute()

Talk to Chatbot



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
	text := "donut recipes" // string | The request / question / answer from the user to the chatbot.
	contextId := "342938" // string | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MiscAPI.TalkToChatbot(context.Background()).Text(text).ContextId(contextId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MiscAPI.TalkToChatbot``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TalkToChatbot`: TalkToChatbot200Response
	fmt.Fprintf(os.Stdout, "Response from `MiscAPI.TalkToChatbot`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTalkToChatbotRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The request / question / answer from the user to the chatbot. | 
 **contextId** | **string** | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | 

### Return type

[**TalkToChatbot200Response**](TalkToChatbot200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

