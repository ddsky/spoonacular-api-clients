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
)


// WineAPIService WineAPI service
type WineAPIService service

type ApiGetDishPairingForWineRequest struct {
	ctx context.Context
	ApiService *WineAPIService
	wine *string
}

// The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.
func (r ApiGetDishPairingForWineRequest) Wine(wine string) ApiGetDishPairingForWineRequest {
	r.wine = &wine
	return r
}

func (r ApiGetDishPairingForWineRequest) Execute() (*GetDishPairingForWine200Response, *http.Response, error) {
	return r.ApiService.GetDishPairingForWineExecute(r)
}

/*
GetDishPairingForWine Dish Pairing for Wine

Find a dish that goes well with a given wine.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiGetDishPairingForWineRequest
*/
func (a *WineAPIService) GetDishPairingForWine(ctx context.Context) ApiGetDishPairingForWineRequest {
	return ApiGetDishPairingForWineRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return GetDishPairingForWine200Response
func (a *WineAPIService) GetDishPairingForWineExecute(r ApiGetDishPairingForWineRequest) (*GetDishPairingForWine200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *GetDishPairingForWine200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "WineAPIService.GetDishPairingForWine")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/food/wine/dishes"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.wine == nil {
		return localVarReturnValue, nil, reportError("wine is required and must be specified")
	}

	parameterAddToHeaderOrQuery(localVarQueryParams, "wine", r.wine, "")
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

type ApiGetWineDescriptionRequest struct {
	ctx context.Context
	ApiService *WineAPIService
	wine *string
}

// The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.
func (r ApiGetWineDescriptionRequest) Wine(wine string) ApiGetWineDescriptionRequest {
	r.wine = &wine
	return r
}

func (r ApiGetWineDescriptionRequest) Execute() (*GetWineDescription200Response, *http.Response, error) {
	return r.ApiService.GetWineDescriptionExecute(r)
}

/*
GetWineDescription Wine Description

Get a simple description of a certain wine, e.g. "malbec", "riesling", or "merlot".

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiGetWineDescriptionRequest
*/
func (a *WineAPIService) GetWineDescription(ctx context.Context) ApiGetWineDescriptionRequest {
	return ApiGetWineDescriptionRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return GetWineDescription200Response
func (a *WineAPIService) GetWineDescriptionExecute(r ApiGetWineDescriptionRequest) (*GetWineDescription200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *GetWineDescription200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "WineAPIService.GetWineDescription")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/food/wine/description"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.wine == nil {
		return localVarReturnValue, nil, reportError("wine is required and must be specified")
	}

	parameterAddToHeaderOrQuery(localVarQueryParams, "wine", r.wine, "")
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

type ApiGetWinePairingRequest struct {
	ctx context.Context
	ApiService *WineAPIService
	food *string
	maxPrice *float32
}

// The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).
func (r ApiGetWinePairingRequest) Food(food string) ApiGetWinePairingRequest {
	r.food = &food
	return r
}

// The maximum price for the specific wine recommendation in USD.
func (r ApiGetWinePairingRequest) MaxPrice(maxPrice float32) ApiGetWinePairingRequest {
	r.maxPrice = &maxPrice
	return r
}

func (r ApiGetWinePairingRequest) Execute() (*GetWinePairing200Response, *http.Response, error) {
	return r.ApiService.GetWinePairingExecute(r)
}

/*
GetWinePairing Wine Pairing

Find a wine that goes well with a food. Food can be a dish name ("steak"), an ingredient name ("salmon"), or a cuisine ("italian").

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiGetWinePairingRequest
*/
func (a *WineAPIService) GetWinePairing(ctx context.Context) ApiGetWinePairingRequest {
	return ApiGetWinePairingRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return GetWinePairing200Response
func (a *WineAPIService) GetWinePairingExecute(r ApiGetWinePairingRequest) (*GetWinePairing200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *GetWinePairing200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "WineAPIService.GetWinePairing")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/food/wine/pairing"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.food == nil {
		return localVarReturnValue, nil, reportError("food is required and must be specified")
	}

	parameterAddToHeaderOrQuery(localVarQueryParams, "food", r.food, "")
	if r.maxPrice != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "maxPrice", r.maxPrice, "")
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

type ApiGetWineRecommendationRequest struct {
	ctx context.Context
	ApiService *WineAPIService
	wine *string
	maxPrice *float32
	minRating *float32
	number *float32
}

// The type of wine to get a specific product recommendation for.
func (r ApiGetWineRecommendationRequest) Wine(wine string) ApiGetWineRecommendationRequest {
	r.wine = &wine
	return r
}

// The maximum price for the specific wine recommendation in USD.
func (r ApiGetWineRecommendationRequest) MaxPrice(maxPrice float32) ApiGetWineRecommendationRequest {
	r.maxPrice = &maxPrice
	return r
}

// The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
func (r ApiGetWineRecommendationRequest) MinRating(minRating float32) ApiGetWineRecommendationRequest {
	r.minRating = &minRating
	return r
}

// The number of wine recommendations expected (between 1 and 100).
func (r ApiGetWineRecommendationRequest) Number(number float32) ApiGetWineRecommendationRequest {
	r.number = &number
	return r
}

func (r ApiGetWineRecommendationRequest) Execute() (*GetWineRecommendation200Response, *http.Response, error) {
	return r.ApiService.GetWineRecommendationExecute(r)
}

/*
GetWineRecommendation Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. "merlot".

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiGetWineRecommendationRequest
*/
func (a *WineAPIService) GetWineRecommendation(ctx context.Context) ApiGetWineRecommendationRequest {
	return ApiGetWineRecommendationRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return GetWineRecommendation200Response
func (a *WineAPIService) GetWineRecommendationExecute(r ApiGetWineRecommendationRequest) (*GetWineRecommendation200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *GetWineRecommendation200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "WineAPIService.GetWineRecommendation")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/food/wine/recommendation"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.wine == nil {
		return localVarReturnValue, nil, reportError("wine is required and must be specified")
	}

	parameterAddToHeaderOrQuery(localVarQueryParams, "wine", r.wine, "")
	if r.maxPrice != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "maxPrice", r.maxPrice, "")
	}
	if r.minRating != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "minRating", r.minRating, "")
	}
	if r.number != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "number", r.number, "")
	} else {
		var defaultValue float32 = 10
		r.number = &defaultValue
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
