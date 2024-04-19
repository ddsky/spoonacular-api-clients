/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what\'s in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
/* tslint:disable:no-unused-variable member-ordering */

import { Inject, Injectable, Optional }                      from '@angular/core';
import { HttpClient, HttpHeaders, HttpParams,
         HttpResponse, HttpEvent, HttpParameterCodec, HttpContext 
        }       from '@angular/common/http';
import { CustomHttpParameterCodec }                          from '../encoder';
import { Observable }                                        from 'rxjs';

// @ts-ignore
import { AnalyzeRecipeRequest } from '../model/analyzeRecipeRequest';
// @ts-ignore
import { SearchRestaurants200Response } from '../model/searchRestaurants200Response';

// @ts-ignore
import { BASE_PATH, COLLECTION_FORMATS }                     from '../variables';
import { Configuration }                                     from '../configuration';



@Injectable({
  providedIn: 'root'
})
export class DefaultService {

    protected basePath = 'https://api.spoonacular.com';
    public defaultHeaders = new HttpHeaders();
    public configuration = new Configuration();
    public encoder: HttpParameterCodec;

    constructor(protected httpClient: HttpClient, @Optional()@Inject(BASE_PATH) basePath: string|string[], @Optional() configuration: Configuration) {
        if (configuration) {
            this.configuration = configuration;
        }
        if (typeof this.configuration.basePath !== 'string') {
            if (Array.isArray(basePath) && basePath.length > 0) {
                basePath = basePath[0];
            }

            if (typeof basePath !== 'string') {
                basePath = this.basePath;
            }
            this.configuration.basePath = basePath;
        }
        this.encoder = this.configuration.encoder || new CustomHttpParameterCodec();
    }


    // @ts-ignore
    private addToHttpParams(httpParams: HttpParams, value: any, key?: string): HttpParams {
        if (typeof value === "object" && value instanceof Date === false) {
            httpParams = this.addToHttpParamsRecursive(httpParams, value);
        } else {
            httpParams = this.addToHttpParamsRecursive(httpParams, value, key);
        }
        return httpParams;
    }

    private addToHttpParamsRecursive(httpParams: HttpParams, value?: any, key?: string): HttpParams {
        if (value == null) {
            return httpParams;
        }

        if (typeof value === "object") {
            if (Array.isArray(value)) {
                (value as any[]).forEach( elem => httpParams = this.addToHttpParamsRecursive(httpParams, elem, key));
            } else if (value instanceof Date) {
                if (key != null) {
                    httpParams = httpParams.append(key, (value as Date).toISOString().substring(0, 10));
                } else {
                   throw Error("key may not be null if value is Date");
                }
            } else {
                Object.keys(value).forEach( k => httpParams = this.addToHttpParamsRecursive(
                    httpParams, value[k], key != null ? `${key}.${k}` : k));
            }
        } else if (key != null) {
            httpParams = httpParams.append(key, value);
        } else {
            throw Error("key may not be null if value is not object or array");
        }
        return httpParams;
    }

    /**
     * Analyze Recipe
     * This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
     * @param analyzeRecipeRequest Example request body.
     * @param language The input language, either \&quot;en\&quot; or \&quot;de\&quot;.
     * @param includeNutrition Whether nutrition data should be added to correctly parsed ingredients.
     * @param includeTaste Whether taste data should be added to correctly parsed ingredients.
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public analyzeRecipe(analyzeRecipeRequest: AnalyzeRecipeRequest, language?: string, includeNutrition?: boolean, includeTaste?: boolean, observe?: 'body', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext, transferCache?: boolean}): Observable<object>;
    public analyzeRecipe(analyzeRecipeRequest: AnalyzeRecipeRequest, language?: string, includeNutrition?: boolean, includeTaste?: boolean, observe?: 'response', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext, transferCache?: boolean}): Observable<HttpResponse<object>>;
    public analyzeRecipe(analyzeRecipeRequest: AnalyzeRecipeRequest, language?: string, includeNutrition?: boolean, includeTaste?: boolean, observe?: 'events', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext, transferCache?: boolean}): Observable<HttpEvent<object>>;
    public analyzeRecipe(analyzeRecipeRequest: AnalyzeRecipeRequest, language?: string, includeNutrition?: boolean, includeTaste?: boolean, observe: any = 'body', reportProgress: boolean = false, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext, transferCache?: boolean}): Observable<any> {
        if (analyzeRecipeRequest === null || analyzeRecipeRequest === undefined) {
            throw new Error('Required parameter analyzeRecipeRequest was null or undefined when calling analyzeRecipe.');
        }

        let localVarQueryParameters = new HttpParams({encoder: this.encoder});
        if (language !== undefined && language !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>language, 'language');
        }
        if (includeNutrition !== undefined && includeNutrition !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>includeNutrition, 'includeNutrition');
        }
        if (includeTaste !== undefined && includeTaste !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>includeTaste, 'includeTaste');
        }

        let localVarHeaders = this.defaultHeaders;

        let localVarCredential: string | undefined;
        // authentication (apiKeyScheme) required
        localVarCredential = this.configuration.lookupCredential('apiKeyScheme');
        if (localVarCredential) {
            localVarHeaders = localVarHeaders.set('x-api-key', localVarCredential);
        }

        let localVarHttpHeaderAcceptSelected: string | undefined = options && options.httpHeaderAccept;
        if (localVarHttpHeaderAcceptSelected === undefined) {
            // to determine the Accept header
            const httpHeaderAccepts: string[] = [
                'application/json'
            ];
            localVarHttpHeaderAcceptSelected = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        }
        if (localVarHttpHeaderAcceptSelected !== undefined) {
            localVarHeaders = localVarHeaders.set('Accept', localVarHttpHeaderAcceptSelected);
        }

        let localVarHttpContext: HttpContext | undefined = options && options.context;
        if (localVarHttpContext === undefined) {
            localVarHttpContext = new HttpContext();
        }

        let localVarTransferCache: boolean | undefined = options && options.transferCache;
        if (localVarTransferCache === undefined) {
            localVarTransferCache = true;
        }


        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected !== undefined) {
            localVarHeaders = localVarHeaders.set('Content-Type', httpContentTypeSelected);
        }

        let responseType_: 'text' | 'json' | 'blob' = 'json';
        if (localVarHttpHeaderAcceptSelected) {
            if (localVarHttpHeaderAcceptSelected.startsWith('text')) {
                responseType_ = 'text';
            } else if (this.configuration.isJsonMime(localVarHttpHeaderAcceptSelected)) {
                responseType_ = 'json';
            } else {
                responseType_ = 'blob';
            }
        }

        let localVarPath = `/recipes/analyze`;
        return this.httpClient.request<object>('post', `${this.configuration.basePath}${localVarPath}`,
            {
                context: localVarHttpContext,
                body: analyzeRecipeRequest,
                params: localVarQueryParameters,
                responseType: <any>responseType_,
                withCredentials: this.configuration.withCredentials,
                headers: localVarHeaders,
                observe: observe,
                transferCache: localVarTransferCache,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * Create Recipe Card
     * Generate a recipe card for a recipe.
     * @param id The recipe id.
     * @param mask The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;).
     * @param backgroundImage The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;).
     * @param backgroundColor The background color for the recipe card as a hex-string.
     * @param fontColor The font color for the recipe card as a hex-string.
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public createRecipeCardGet(id: number, mask?: string, backgroundImage?: string, backgroundColor?: string, fontColor?: string, observe?: 'body', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext, transferCache?: boolean}): Observable<object>;
    public createRecipeCardGet(id: number, mask?: string, backgroundImage?: string, backgroundColor?: string, fontColor?: string, observe?: 'response', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext, transferCache?: boolean}): Observable<HttpResponse<object>>;
    public createRecipeCardGet(id: number, mask?: string, backgroundImage?: string, backgroundColor?: string, fontColor?: string, observe?: 'events', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext, transferCache?: boolean}): Observable<HttpEvent<object>>;
    public createRecipeCardGet(id: number, mask?: string, backgroundImage?: string, backgroundColor?: string, fontColor?: string, observe: any = 'body', reportProgress: boolean = false, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext, transferCache?: boolean}): Observable<any> {
        if (id === null || id === undefined) {
            throw new Error('Required parameter id was null or undefined when calling createRecipeCardGet.');
        }

        let localVarQueryParameters = new HttpParams({encoder: this.encoder});
        if (mask !== undefined && mask !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>mask, 'mask');
        }
        if (backgroundImage !== undefined && backgroundImage !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>backgroundImage, 'backgroundImage');
        }
        if (backgroundColor !== undefined && backgroundColor !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>backgroundColor, 'backgroundColor');
        }
        if (fontColor !== undefined && fontColor !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>fontColor, 'fontColor');
        }

        let localVarHeaders = this.defaultHeaders;

        let localVarCredential: string | undefined;
        // authentication (apiKeyScheme) required
        localVarCredential = this.configuration.lookupCredential('apiKeyScheme');
        if (localVarCredential) {
            localVarHeaders = localVarHeaders.set('x-api-key', localVarCredential);
        }

        let localVarHttpHeaderAcceptSelected: string | undefined = options && options.httpHeaderAccept;
        if (localVarHttpHeaderAcceptSelected === undefined) {
            // to determine the Accept header
            const httpHeaderAccepts: string[] = [
                'application/json'
            ];
            localVarHttpHeaderAcceptSelected = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        }
        if (localVarHttpHeaderAcceptSelected !== undefined) {
            localVarHeaders = localVarHeaders.set('Accept', localVarHttpHeaderAcceptSelected);
        }

        let localVarHttpContext: HttpContext | undefined = options && options.context;
        if (localVarHttpContext === undefined) {
            localVarHttpContext = new HttpContext();
        }

        let localVarTransferCache: boolean | undefined = options && options.transferCache;
        if (localVarTransferCache === undefined) {
            localVarTransferCache = true;
        }


        let responseType_: 'text' | 'json' | 'blob' = 'json';
        if (localVarHttpHeaderAcceptSelected) {
            if (localVarHttpHeaderAcceptSelected.startsWith('text')) {
                responseType_ = 'text';
            } else if (this.configuration.isJsonMime(localVarHttpHeaderAcceptSelected)) {
                responseType_ = 'json';
            } else {
                responseType_ = 'blob';
            }
        }

        let localVarPath = `/recipes/${this.configuration.encodeParam({name: "id", value: id, in: "path", style: "simple", explode: false, dataType: "number", dataFormat: undefined})}/card`;
        return this.httpClient.request<object>('get', `${this.configuration.basePath}${localVarPath}`,
            {
                context: localVarHttpContext,
                params: localVarQueryParameters,
                responseType: <any>responseType_,
                withCredentials: this.configuration.withCredentials,
                headers: localVarHeaders,
                observe: observe,
                transferCache: localVarTransferCache,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * Search Restaurants
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     * @param query The search query.
     * @param lat The latitude of the user\&#39;s location.
     * @param lng The longitude of the user\&#39;s location.\&quot;.
     * @param distance The distance around the location in miles.
     * @param budget The user\&#39;s budget for a meal in USD.
     * @param cuisine The cuisine of the restaurant.
     * @param minRating The minimum rating of the restaurant between 0 and 5.
     * @param isOpen Whether the restaurant must be open at the time of search.
     * @param sort How to sort the results, one of the following \&#39;cheapest\&#39;, \&#39;fastest\&#39;, \&#39;rating\&#39;, \&#39;distance\&#39; or the default \&#39;relevance\&#39;.
     * @param page The page number of results.
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public searchRestaurants(query?: string, lat?: number, lng?: number, distance?: number, budget?: number, cuisine?: string, minRating?: number, isOpen?: boolean, sort?: string, page?: number, observe?: 'body', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext, transferCache?: boolean}): Observable<SearchRestaurants200Response>;
    public searchRestaurants(query?: string, lat?: number, lng?: number, distance?: number, budget?: number, cuisine?: string, minRating?: number, isOpen?: boolean, sort?: string, page?: number, observe?: 'response', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext, transferCache?: boolean}): Observable<HttpResponse<SearchRestaurants200Response>>;
    public searchRestaurants(query?: string, lat?: number, lng?: number, distance?: number, budget?: number, cuisine?: string, minRating?: number, isOpen?: boolean, sort?: string, page?: number, observe?: 'events', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext, transferCache?: boolean}): Observable<HttpEvent<SearchRestaurants200Response>>;
    public searchRestaurants(query?: string, lat?: number, lng?: number, distance?: number, budget?: number, cuisine?: string, minRating?: number, isOpen?: boolean, sort?: string, page?: number, observe: any = 'body', reportProgress: boolean = false, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext, transferCache?: boolean}): Observable<any> {

        let localVarQueryParameters = new HttpParams({encoder: this.encoder});
        if (query !== undefined && query !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>query, 'query');
        }
        if (lat !== undefined && lat !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>lat, 'lat');
        }
        if (lng !== undefined && lng !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>lng, 'lng');
        }
        if (distance !== undefined && distance !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>distance, 'distance');
        }
        if (budget !== undefined && budget !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>budget, 'budget');
        }
        if (cuisine !== undefined && cuisine !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>cuisine, 'cuisine');
        }
        if (minRating !== undefined && minRating !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>minRating, 'min-rating');
        }
        if (isOpen !== undefined && isOpen !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>isOpen, 'is-open');
        }
        if (sort !== undefined && sort !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>sort, 'sort');
        }
        if (page !== undefined && page !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>page, 'page');
        }

        let localVarHeaders = this.defaultHeaders;

        let localVarCredential: string | undefined;
        // authentication (apiKeyScheme) required
        localVarCredential = this.configuration.lookupCredential('apiKeyScheme');
        if (localVarCredential) {
            localVarHeaders = localVarHeaders.set('x-api-key', localVarCredential);
        }

        let localVarHttpHeaderAcceptSelected: string | undefined = options && options.httpHeaderAccept;
        if (localVarHttpHeaderAcceptSelected === undefined) {
            // to determine the Accept header
            const httpHeaderAccepts: string[] = [
                'application/json'
            ];
            localVarHttpHeaderAcceptSelected = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        }
        if (localVarHttpHeaderAcceptSelected !== undefined) {
            localVarHeaders = localVarHeaders.set('Accept', localVarHttpHeaderAcceptSelected);
        }

        let localVarHttpContext: HttpContext | undefined = options && options.context;
        if (localVarHttpContext === undefined) {
            localVarHttpContext = new HttpContext();
        }

        let localVarTransferCache: boolean | undefined = options && options.transferCache;
        if (localVarTransferCache === undefined) {
            localVarTransferCache = true;
        }


        let responseType_: 'text' | 'json' | 'blob' = 'json';
        if (localVarHttpHeaderAcceptSelected) {
            if (localVarHttpHeaderAcceptSelected.startsWith('text')) {
                responseType_ = 'text';
            } else if (this.configuration.isJsonMime(localVarHttpHeaderAcceptSelected)) {
                responseType_ = 'json';
            } else {
                responseType_ = 'blob';
            }
        }

        let localVarPath = `/food/restaurants/search`;
        return this.httpClient.request<SearchRestaurants200Response>('get', `${this.configuration.basePath}${localVarPath}`,
            {
                context: localVarHttpContext,
                params: localVarQueryParameters,
                responseType: <any>responseType_,
                withCredentials: this.configuration.withCredentials,
                headers: localVarHeaders,
                observe: observe,
                transferCache: localVarTransferCache,
                reportProgress: reportProgress
            }
        );
    }

}
