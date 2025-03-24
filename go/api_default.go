/*
spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

API version: 2.0.2
Contact: mail@spoonacular.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package spoonacular

import (
	"bytes"
	"context"
	"io"
	"net/http"
	"net/url"
	"strings"
)


// DefaultAPIService DefaultAPI service
type DefaultAPIService service

type ApiAnalyzeRecipeRequest struct {
	ctx context.Context
	ApiService *DefaultAPIService
	analyzeRecipeRequest *AnalyzeRecipeRequest
	language *string
	includeNutrition *bool
	includeTaste *bool
}

// Example request body.
func (r ApiAnalyzeRecipeRequest) AnalyzeRecipeRequest(analyzeRecipeRequest AnalyzeRecipeRequest) ApiAnalyzeRecipeRequest {
	r.analyzeRecipeRequest = &analyzeRecipeRequest
	return r
}

// The input language, either \&quot;en\&quot; or \&quot;de\&quot;.
func (r ApiAnalyzeRecipeRequest) Language(language string) ApiAnalyzeRecipeRequest {
	r.language = &language
	return r
}

// Whether nutrition data should be added to correctly parsed ingredients.
func (r ApiAnalyzeRecipeRequest) IncludeNutrition(includeNutrition bool) ApiAnalyzeRecipeRequest {
	r.includeNutrition = &includeNutrition
	return r
}

// Whether taste data should be added to correctly parsed ingredients.
func (r ApiAnalyzeRecipeRequest) IncludeTaste(includeTaste bool) ApiAnalyzeRecipeRequest {
	r.includeTaste = &includeTaste
	return r
}

func (r ApiAnalyzeRecipeRequest) Execute() (map[string]interface{}, *http.Response, error) {
	return r.ApiService.AnalyzeRecipeExecute(r)
}

/*
AnalyzeRecipe Analyze Recipe

This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiAnalyzeRecipeRequest
*/
func (a *DefaultAPIService) AnalyzeRecipe(ctx context.Context) ApiAnalyzeRecipeRequest {
	return ApiAnalyzeRecipeRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return map[string]interface{}
func (a *DefaultAPIService) AnalyzeRecipeExecute(r ApiAnalyzeRecipeRequest) (map[string]interface{}, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  map[string]interface{}
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "DefaultAPIService.AnalyzeRecipe")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/recipes/analyze"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.analyzeRecipeRequest == nil {
		return localVarReturnValue, nil, reportError("analyzeRecipeRequest is required and must be specified")
	}

	if r.language != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "language", r.language, "")
	}
	if r.includeNutrition != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "includeNutrition", r.includeNutrition, "")
	}
	if r.includeTaste != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "includeTaste", r.includeTaste, "")
	}
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{"application/json"}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	// body params
	localVarPostBody = r.analyzeRecipeRequest
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["apiKeyScheme"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarHeaderParams["x-api-key"] = key
			}
		}
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := io.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = io.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}

type ApiCreateRecipeCardGetRequest struct {
	ctx context.Context
	ApiService *DefaultAPIService
	id int32
	mask *string
	backgroundImage *string
	backgroundColor *string
	fontColor *string
}

// The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;).
func (r ApiCreateRecipeCardGetRequest) Mask(mask string) ApiCreateRecipeCardGetRequest {
	r.mask = &mask
	return r
}

// The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;).
func (r ApiCreateRecipeCardGetRequest) BackgroundImage(backgroundImage string) ApiCreateRecipeCardGetRequest {
	r.backgroundImage = &backgroundImage
	return r
}

// The background color for the recipe card as a hex-string.
func (r ApiCreateRecipeCardGetRequest) BackgroundColor(backgroundColor string) ApiCreateRecipeCardGetRequest {
	r.backgroundColor = &backgroundColor
	return r
}

// The font color for the recipe card as a hex-string.
func (r ApiCreateRecipeCardGetRequest) FontColor(fontColor string) ApiCreateRecipeCardGetRequest {
	r.fontColor = &fontColor
	return r
}

func (r ApiCreateRecipeCardGetRequest) Execute() (map[string]interface{}, *http.Response, error) {
	return r.ApiService.CreateRecipeCardGetExecute(r)
}

/*
CreateRecipeCardGet Create Recipe Card

Generate a recipe card for a recipe.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param id The recipe id.
 @return ApiCreateRecipeCardGetRequest
*/
func (a *DefaultAPIService) CreateRecipeCardGet(ctx context.Context, id int32) ApiCreateRecipeCardGetRequest {
	return ApiCreateRecipeCardGetRequest{
		ApiService: a,
		ctx: ctx,
		id: id,
	}
}

// Execute executes the request
//  @return map[string]interface{}
func (a *DefaultAPIService) CreateRecipeCardGetExecute(r ApiCreateRecipeCardGetRequest) (map[string]interface{}, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  map[string]interface{}
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "DefaultAPIService.CreateRecipeCardGet")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/recipes/{id}/card"
	localVarPath = strings.Replace(localVarPath, "{"+"id"+"}", url.PathEscape(parameterValueToString(r.id, "id")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.mask != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "mask", r.mask, "")
	}
	if r.backgroundImage != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "backgroundImage", r.backgroundImage, "")
	}
	if r.backgroundColor != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "backgroundColor", r.backgroundColor, "")
	}
	if r.fontColor != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "fontColor", r.fontColor, "")
	}
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["apiKeyScheme"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarHeaderParams["x-api-key"] = key
			}
		}
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := io.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = io.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}

type ApiSearchRestaurantsRequest struct {
	ctx context.Context
	ApiService *DefaultAPIService
	query *string
	lat *float32
	lng *float32
	distance *float32
	budget *float32
	cuisine *string
	minRating *float32
	isOpen *bool
	sort *string
	page *float32
}

// The search query.
func (r ApiSearchRestaurantsRequest) Query(query string) ApiSearchRestaurantsRequest {
	r.query = &query
	return r
}

// The latitude of the user&#39;s location.
func (r ApiSearchRestaurantsRequest) Lat(lat float32) ApiSearchRestaurantsRequest {
	r.lat = &lat
	return r
}

// The longitude of the user&#39;s location.\&quot;.
func (r ApiSearchRestaurantsRequest) Lng(lng float32) ApiSearchRestaurantsRequest {
	r.lng = &lng
	return r
}

// The distance around the location in miles.
func (r ApiSearchRestaurantsRequest) Distance(distance float32) ApiSearchRestaurantsRequest {
	r.distance = &distance
	return r
}

// The user&#39;s budget for a meal in USD.
func (r ApiSearchRestaurantsRequest) Budget(budget float32) ApiSearchRestaurantsRequest {
	r.budget = &budget
	return r
}

// The cuisine of the restaurant.
func (r ApiSearchRestaurantsRequest) Cuisine(cuisine string) ApiSearchRestaurantsRequest {
	r.cuisine = &cuisine
	return r
}

// The minimum rating of the restaurant between 0 and 5.
func (r ApiSearchRestaurantsRequest) MinRating(minRating float32) ApiSearchRestaurantsRequest {
	r.minRating = &minRating
	return r
}

// Whether the restaurant must be open at the time of search.
func (r ApiSearchRestaurantsRequest) IsOpen(isOpen bool) ApiSearchRestaurantsRequest {
	r.isOpen = &isOpen
	return r
}

// How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;.
func (r ApiSearchRestaurantsRequest) Sort(sort string) ApiSearchRestaurantsRequest {
	r.sort = &sort
	return r
}

// The page number of results.
func (r ApiSearchRestaurantsRequest) Page(page float32) ApiSearchRestaurantsRequest {
	r.page = &page
	return r
}

func (r ApiSearchRestaurantsRequest) Execute() (*SearchRestaurants200Response, *http.Response, error) {
	return r.ApiService.SearchRestaurantsExecute(r)
}

/*
SearchRestaurants Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiSearchRestaurantsRequest
*/
func (a *DefaultAPIService) SearchRestaurants(ctx context.Context) ApiSearchRestaurantsRequest {
	return ApiSearchRestaurantsRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return SearchRestaurants200Response
func (a *DefaultAPIService) SearchRestaurantsExecute(r ApiSearchRestaurantsRequest) (*SearchRestaurants200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *SearchRestaurants200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "DefaultAPIService.SearchRestaurants")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/food/restaurants/search"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.query != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "query", r.query, "")
	}
	if r.lat != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "lat", r.lat, "")
	}
	if r.lng != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "lng", r.lng, "")
	}
	if r.distance != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "distance", r.distance, "")
	}
	if r.budget != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "budget", r.budget, "")
	}
	if r.cuisine != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "cuisine", r.cuisine, "")
	}
	if r.minRating != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "min-rating", r.minRating, "")
	}
	if r.isOpen != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "is-open", r.isOpen, "")
	}
	if r.sort != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "sort", r.sort, "")
	}
	if r.page != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "page", r.page, "")
	}
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["apiKeyScheme"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarHeaderParams["x-api-key"] = key
			}
		}
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := io.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = io.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}
