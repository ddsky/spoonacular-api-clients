/*
spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

API version: 1.1
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


// MenuItemsAPIService MenuItemsAPI service
type MenuItemsAPIService service

type ApiAutocompleteMenuItemSearchRequest struct {
	ctx context.Context
	ApiService *MenuItemsAPIService
	query *string
	number *float32
}

// The (partial) search query.
func (r ApiAutocompleteMenuItemSearchRequest) Query(query string) ApiAutocompleteMenuItemSearchRequest {
	r.query = &query
	return r
}

// The number of results to return (between 1 and 25).
func (r ApiAutocompleteMenuItemSearchRequest) Number(number float32) ApiAutocompleteMenuItemSearchRequest {
	r.number = &number
	return r
}

func (r ApiAutocompleteMenuItemSearchRequest) Execute() (*AutocompleteMenuItemSearch200Response, *http.Response, error) {
	return r.ApiService.AutocompleteMenuItemSearchExecute(r)
}

/*
AutocompleteMenuItemSearch Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiAutocompleteMenuItemSearchRequest
*/
func (a *MenuItemsAPIService) AutocompleteMenuItemSearch(ctx context.Context) ApiAutocompleteMenuItemSearchRequest {
	return ApiAutocompleteMenuItemSearchRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return AutocompleteMenuItemSearch200Response
func (a *MenuItemsAPIService) AutocompleteMenuItemSearchExecute(r ApiAutocompleteMenuItemSearchRequest) (*AutocompleteMenuItemSearch200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *AutocompleteMenuItemSearch200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "MenuItemsAPIService.AutocompleteMenuItemSearch")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/food/menuItems/suggest"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.query == nil {
		return localVarReturnValue, nil, reportError("query is required and must be specified")
	}

	parameterAddToHeaderOrQuery(localVarQueryParams, "query", r.query, "")
	if r.number != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "number", r.number, "")
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

type ApiGetMenuItemInformationRequest struct {
	ctx context.Context
	ApiService *MenuItemsAPIService
	id int32
}

func (r ApiGetMenuItemInformationRequest) Execute() (*GetMenuItemInformation200Response, *http.Response, error) {
	return r.ApiService.GetMenuItemInformationExecute(r)
}

/*
GetMenuItemInformation Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param id The item's id.
 @return ApiGetMenuItemInformationRequest
*/
func (a *MenuItemsAPIService) GetMenuItemInformation(ctx context.Context, id int32) ApiGetMenuItemInformationRequest {
	return ApiGetMenuItemInformationRequest{
		ApiService: a,
		ctx: ctx,
		id: id,
	}
}

// Execute executes the request
//  @return GetMenuItemInformation200Response
func (a *MenuItemsAPIService) GetMenuItemInformationExecute(r ApiGetMenuItemInformationRequest) (*GetMenuItemInformation200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *GetMenuItemInformation200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "MenuItemsAPIService.GetMenuItemInformation")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/food/menuItems/{id}"
	localVarPath = strings.Replace(localVarPath, "{"+"id"+"}", url.PathEscape(parameterValueToString(r.id, "id")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

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

type ApiMenuItemNutritionByIDImageRequest struct {
	ctx context.Context
	ApiService *MenuItemsAPIService
	id float32
}

func (r ApiMenuItemNutritionByIDImageRequest) Execute() (map[string]interface{}, *http.Response, error) {
	return r.ApiService.MenuItemNutritionByIDImageExecute(r)
}

/*
MenuItemNutritionByIDImage Menu Item Nutrition by ID Image

Visualize a menu item's nutritional information as HTML including CSS.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param id The menu item id.
 @return ApiMenuItemNutritionByIDImageRequest
*/
func (a *MenuItemsAPIService) MenuItemNutritionByIDImage(ctx context.Context, id float32) ApiMenuItemNutritionByIDImageRequest {
	return ApiMenuItemNutritionByIDImageRequest{
		ApiService: a,
		ctx: ctx,
		id: id,
	}
}

// Execute executes the request
//  @return map[string]interface{}
func (a *MenuItemsAPIService) MenuItemNutritionByIDImageExecute(r ApiMenuItemNutritionByIDImageRequest) (map[string]interface{}, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  map[string]interface{}
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "MenuItemsAPIService.MenuItemNutritionByIDImage")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/food/menuItems/{id}/nutritionWidget.png"
	localVarPath = strings.Replace(localVarPath, "{"+"id"+"}", url.PathEscape(parameterValueToString(r.id, "id")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"image/png"}

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

type ApiMenuItemNutritionLabelImageRequest struct {
	ctx context.Context
	ApiService *MenuItemsAPIService
	id float32
	showOptionalNutrients *bool
	showZeroValues *bool
	showIngredients *bool
}

// Whether to show optional nutrients.
func (r ApiMenuItemNutritionLabelImageRequest) ShowOptionalNutrients(showOptionalNutrients bool) ApiMenuItemNutritionLabelImageRequest {
	r.showOptionalNutrients = &showOptionalNutrients
	return r
}

// Whether to show zero values.
func (r ApiMenuItemNutritionLabelImageRequest) ShowZeroValues(showZeroValues bool) ApiMenuItemNutritionLabelImageRequest {
	r.showZeroValues = &showZeroValues
	return r
}

// Whether to show a list of ingredients.
func (r ApiMenuItemNutritionLabelImageRequest) ShowIngredients(showIngredients bool) ApiMenuItemNutritionLabelImageRequest {
	r.showIngredients = &showIngredients
	return r
}

func (r ApiMenuItemNutritionLabelImageRequest) Execute() (map[string]interface{}, *http.Response, error) {
	return r.ApiService.MenuItemNutritionLabelImageExecute(r)
}

/*
MenuItemNutritionLabelImage Menu Item Nutrition Label Image

Visualize a menu item's nutritional label information as an image.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param id The menu item id.
 @return ApiMenuItemNutritionLabelImageRequest
*/
func (a *MenuItemsAPIService) MenuItemNutritionLabelImage(ctx context.Context, id float32) ApiMenuItemNutritionLabelImageRequest {
	return ApiMenuItemNutritionLabelImageRequest{
		ApiService: a,
		ctx: ctx,
		id: id,
	}
}

// Execute executes the request
//  @return map[string]interface{}
func (a *MenuItemsAPIService) MenuItemNutritionLabelImageExecute(r ApiMenuItemNutritionLabelImageRequest) (map[string]interface{}, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  map[string]interface{}
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "MenuItemsAPIService.MenuItemNutritionLabelImage")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/food/menuItems/{id}/nutritionLabel.png"
	localVarPath = strings.Replace(localVarPath, "{"+"id"+"}", url.PathEscape(parameterValueToString(r.id, "id")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.showOptionalNutrients != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "showOptionalNutrients", r.showOptionalNutrients, "")
	}
	if r.showZeroValues != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "showZeroValues", r.showZeroValues, "")
	}
	if r.showIngredients != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "showIngredients", r.showIngredients, "")
	}
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"image/png"}

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

type ApiMenuItemNutritionLabelWidgetRequest struct {
	ctx context.Context
	ApiService *MenuItemsAPIService
	id float32
	defaultCss *bool
	showOptionalNutrients *bool
	showZeroValues *bool
	showIngredients *bool
}

// Whether the default CSS should be added to the response.
func (r ApiMenuItemNutritionLabelWidgetRequest) DefaultCss(defaultCss bool) ApiMenuItemNutritionLabelWidgetRequest {
	r.defaultCss = &defaultCss
	return r
}

// Whether to show optional nutrients.
func (r ApiMenuItemNutritionLabelWidgetRequest) ShowOptionalNutrients(showOptionalNutrients bool) ApiMenuItemNutritionLabelWidgetRequest {
	r.showOptionalNutrients = &showOptionalNutrients
	return r
}

// Whether to show zero values.
func (r ApiMenuItemNutritionLabelWidgetRequest) ShowZeroValues(showZeroValues bool) ApiMenuItemNutritionLabelWidgetRequest {
	r.showZeroValues = &showZeroValues
	return r
}

// Whether to show a list of ingredients.
func (r ApiMenuItemNutritionLabelWidgetRequest) ShowIngredients(showIngredients bool) ApiMenuItemNutritionLabelWidgetRequest {
	r.showIngredients = &showIngredients
	return r
}

func (r ApiMenuItemNutritionLabelWidgetRequest) Execute() (string, *http.Response, error) {
	return r.ApiService.MenuItemNutritionLabelWidgetExecute(r)
}

/*
MenuItemNutritionLabelWidget Menu Item Nutrition Label Widget

Visualize a menu item's nutritional label information as HTML including CSS.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param id The menu item id.
 @return ApiMenuItemNutritionLabelWidgetRequest
*/
func (a *MenuItemsAPIService) MenuItemNutritionLabelWidget(ctx context.Context, id float32) ApiMenuItemNutritionLabelWidgetRequest {
	return ApiMenuItemNutritionLabelWidgetRequest{
		ApiService: a,
		ctx: ctx,
		id: id,
	}
}

// Execute executes the request
//  @return string
func (a *MenuItemsAPIService) MenuItemNutritionLabelWidgetExecute(r ApiMenuItemNutritionLabelWidgetRequest) (string, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  string
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "MenuItemsAPIService.MenuItemNutritionLabelWidget")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/food/menuItems/{id}/nutritionLabel"
	localVarPath = strings.Replace(localVarPath, "{"+"id"+"}", url.PathEscape(parameterValueToString(r.id, "id")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.defaultCss != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "defaultCss", r.defaultCss, "")
	} else {
		var defaultValue bool = true
		r.defaultCss = &defaultValue
	}
	if r.showOptionalNutrients != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "showOptionalNutrients", r.showOptionalNutrients, "")
	}
	if r.showZeroValues != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "showZeroValues", r.showZeroValues, "")
	}
	if r.showIngredients != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "showIngredients", r.showIngredients, "")
	}
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"text/html"}

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

type ApiSearchMenuItemsRequest struct {
	ctx context.Context
	ApiService *MenuItemsAPIService
	query *string
	minCalories *float32
	maxCalories *float32
	minCarbs *float32
	maxCarbs *float32
	minProtein *float32
	maxProtein *float32
	minFat *float32
	maxFat *float32
	addMenuItemInformation *bool
	offset *int32
	number *int32
}

// The (natural language) search query.
func (r ApiSearchMenuItemsRequest) Query(query string) ApiSearchMenuItemsRequest {
	r.query = &query
	return r
}

// The minimum amount of calories the menu item must have.
func (r ApiSearchMenuItemsRequest) MinCalories(minCalories float32) ApiSearchMenuItemsRequest {
	r.minCalories = &minCalories
	return r
}

// The maximum amount of calories the menu item can have.
func (r ApiSearchMenuItemsRequest) MaxCalories(maxCalories float32) ApiSearchMenuItemsRequest {
	r.maxCalories = &maxCalories
	return r
}

// The minimum amount of carbohydrates in grams the menu item must have.
func (r ApiSearchMenuItemsRequest) MinCarbs(minCarbs float32) ApiSearchMenuItemsRequest {
	r.minCarbs = &minCarbs
	return r
}

// The maximum amount of carbohydrates in grams the menu item can have.
func (r ApiSearchMenuItemsRequest) MaxCarbs(maxCarbs float32) ApiSearchMenuItemsRequest {
	r.maxCarbs = &maxCarbs
	return r
}

// The minimum amount of protein in grams the menu item must have.
func (r ApiSearchMenuItemsRequest) MinProtein(minProtein float32) ApiSearchMenuItemsRequest {
	r.minProtein = &minProtein
	return r
}

// The maximum amount of protein in grams the menu item can have.
func (r ApiSearchMenuItemsRequest) MaxProtein(maxProtein float32) ApiSearchMenuItemsRequest {
	r.maxProtein = &maxProtein
	return r
}

// The minimum amount of fat in grams the menu item must have.
func (r ApiSearchMenuItemsRequest) MinFat(minFat float32) ApiSearchMenuItemsRequest {
	r.minFat = &minFat
	return r
}

// The maximum amount of fat in grams the menu item can have.
func (r ApiSearchMenuItemsRequest) MaxFat(maxFat float32) ApiSearchMenuItemsRequest {
	r.maxFat = &maxFat
	return r
}

// If set to true, you get more information about the menu items returned.
func (r ApiSearchMenuItemsRequest) AddMenuItemInformation(addMenuItemInformation bool) ApiSearchMenuItemsRequest {
	r.addMenuItemInformation = &addMenuItemInformation
	return r
}

// The number of results to skip (between 0 and 900).
func (r ApiSearchMenuItemsRequest) Offset(offset int32) ApiSearchMenuItemsRequest {
	r.offset = &offset
	return r
}

// The maximum number of items to return (between 1 and 100). Defaults to 10.
func (r ApiSearchMenuItemsRequest) Number(number int32) ApiSearchMenuItemsRequest {
	r.number = &number
	return r
}

func (r ApiSearchMenuItemsRequest) Execute() (*SearchMenuItems200Response, *http.Response, error) {
	return r.ApiService.SearchMenuItemsExecute(r)
}

/*
SearchMenuItems Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiSearchMenuItemsRequest
*/
func (a *MenuItemsAPIService) SearchMenuItems(ctx context.Context) ApiSearchMenuItemsRequest {
	return ApiSearchMenuItemsRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return SearchMenuItems200Response
func (a *MenuItemsAPIService) SearchMenuItemsExecute(r ApiSearchMenuItemsRequest) (*SearchMenuItems200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *SearchMenuItems200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "MenuItemsAPIService.SearchMenuItems")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/food/menuItems/search"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.query != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "query", r.query, "")
	}
	if r.minCalories != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "minCalories", r.minCalories, "")
	}
	if r.maxCalories != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "maxCalories", r.maxCalories, "")
	}
	if r.minCarbs != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "minCarbs", r.minCarbs, "")
	}
	if r.maxCarbs != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "maxCarbs", r.maxCarbs, "")
	}
	if r.minProtein != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "minProtein", r.minProtein, "")
	}
	if r.maxProtein != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "maxProtein", r.maxProtein, "")
	}
	if r.minFat != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "minFat", r.minFat, "")
	}
	if r.maxFat != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "maxFat", r.maxFat, "")
	}
	if r.addMenuItemInformation != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "addMenuItemInformation", r.addMenuItemInformation, "")
	}
	if r.offset != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "offset", r.offset, "")
	}
	if r.number != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "number", r.number, "")
	} else {
		var defaultValue int32 = 10
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

type ApiVisualizeMenuItemNutritionByIDRequest struct {
	ctx context.Context
	ApiService *MenuItemsAPIService
	id int32
	defaultCss *bool
	accept *string
}

// Whether the default CSS should be added to the response.
func (r ApiVisualizeMenuItemNutritionByIDRequest) DefaultCss(defaultCss bool) ApiVisualizeMenuItemNutritionByIDRequest {
	r.defaultCss = &defaultCss
	return r
}

// Accept header.
func (r ApiVisualizeMenuItemNutritionByIDRequest) Accept(accept string) ApiVisualizeMenuItemNutritionByIDRequest {
	r.accept = &accept
	return r
}

func (r ApiVisualizeMenuItemNutritionByIDRequest) Execute() (string, *http.Response, error) {
	return r.ApiService.VisualizeMenuItemNutritionByIDExecute(r)
}

/*
VisualizeMenuItemNutritionByID Menu Item Nutrition by ID Widget

Visualize a menu item's nutritional information as HTML including CSS.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param id The item's id.
 @return ApiVisualizeMenuItemNutritionByIDRequest
*/
func (a *MenuItemsAPIService) VisualizeMenuItemNutritionByID(ctx context.Context, id int32) ApiVisualizeMenuItemNutritionByIDRequest {
	return ApiVisualizeMenuItemNutritionByIDRequest{
		ApiService: a,
		ctx: ctx,
		id: id,
	}
}

// Execute executes the request
//  @return string
func (a *MenuItemsAPIService) VisualizeMenuItemNutritionByIDExecute(r ApiVisualizeMenuItemNutritionByIDRequest) (string, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  string
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "MenuItemsAPIService.VisualizeMenuItemNutritionByID")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/food/menuItems/{id}/nutritionWidget"
	localVarPath = strings.Replace(localVarPath, "{"+"id"+"}", url.PathEscape(parameterValueToString(r.id, "id")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.defaultCss != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "defaultCss", r.defaultCss, "")
	} else {
		var defaultValue bool = true
		r.defaultCss = &defaultValue
	}
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"text/html"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.accept != nil {
		parameterAddToHeaderOrQuery(localVarHeaderParams, "Accept", r.accept, "")
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
