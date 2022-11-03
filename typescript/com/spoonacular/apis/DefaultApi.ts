// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { AnalyzeRecipeRequest } from '..com/spoonacular/client/model/models/AnalyzeRecipeRequest';
import { AnalyzeRecipeRequest1 } from '..com/spoonacular/client/model/models/AnalyzeRecipeRequest1';
import { SearchRestaurants200Response } from '..com/spoonacular/client/model/models/SearchRestaurants200Response';

/**
 * no description
 */
export class DefaultApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
     * Analyze Recipe
     * @param analyzeRecipeRequest Example request body.
     * @param language The input language, either \&quot;en\&quot; or \&quot;de\&quot;.
     * @param includeNutrition Whether nutrition data should be added to correctly parsed ingredients.
     * @param includeTaste Whether taste data should be added to correctly parsed ingredients.
     */
    public async analyzeRecipe(analyzeRecipeRequest: AnalyzeRecipeRequest, language?: string, includeNutrition?: boolean, includeTaste?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'analyzeRecipeRequest' is not null or undefined
        if (analyzeRecipeRequest === null || analyzeRecipeRequest === undefined) {
            throw new RequiredError("DefaultApi", "analyzeRecipe", "analyzeRecipeRequest");
        }





        // Path Params
        const localVarPath = '/recipes/analyze';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (language !== undefined) {
            requestContext.setQueryParam("language", ObjectSerializer.serialize(language, "string", ""));
        }

        // Query Params
        if (includeNutrition !== undefined) {
            requestContext.setQueryParam("includeNutrition", ObjectSerializer.serialize(includeNutrition, "boolean", ""));
        }

        // Query Params
        if (includeTaste !== undefined) {
            requestContext.setQueryParam("includeTaste", ObjectSerializer.serialize(includeTaste, "boolean", ""));
        }


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "",
        
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(analyzeRecipeRequest, "AnalyzeRecipeRequest", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyScheme"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Generate a recipe card for a recipe.
     * Create Recipe Card
     * @param id The recipe id.
     * @param mask The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;).
     * @param backgroundImage The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;).
     * @param backgroundColor The background color for the recipe card as a hex-string.
     * @param fontColor The font color for the recipe card as a hex-string.
     */
    public async createRecipeCardGet(id: number, mask?: string, backgroundImage?: string, backgroundColor?: string, fontColor?: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DefaultApi", "createRecipeCardGet", "id");
        }






        // Path Params
        const localVarPath = '/recipes/{id}/card'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (mask !== undefined) {
            requestContext.setQueryParam("mask", ObjectSerializer.serialize(mask, "string", ""));
        }

        // Query Params
        if (backgroundImage !== undefined) {
            requestContext.setQueryParam("backgroundImage", ObjectSerializer.serialize(backgroundImage, "string", ""));
        }

        // Query Params
        if (backgroundColor !== undefined) {
            requestContext.setQueryParam("backgroundColor", ObjectSerializer.serialize(backgroundColor, "string", ""));
        }

        // Query Params
        if (fontColor !== undefined) {
            requestContext.setQueryParam("fontColor", ObjectSerializer.serialize(fontColor, "string", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyScheme"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     * Search Restaurants
     * @param query The search query.
     * @param lat The latitude of the user&#39;s location.
     * @param lng The longitude of the user&#39;s location.\&quot;.
     * @param distance The distance around the location in miles.
     * @param budget The user&#39;s budget for a meal in USD.
     * @param cuisine The cuisine of the restaurant.
     * @param minRating The minimum rating of the restaurant between 0 and 5.
     * @param isOpen Whether the restaurant must be open at the time of search.
     * @param sort How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;.
     * @param page The page number of results.
     */
    public async searchRestaurants(query?: string, lat?: number, lng?: number, distance?: number, budget?: number, cuisine?: string, minRating?: number, isOpen?: boolean, sort?: string, page?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;











        // Path Params
        const localVarPath = '/food/restaurants/search';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (query !== undefined) {
            requestContext.setQueryParam("query", ObjectSerializer.serialize(query, "string", ""));
        }

        // Query Params
        if (lat !== undefined) {
            requestContext.setQueryParam("lat", ObjectSerializer.serialize(lat, "number", ""));
        }

        // Query Params
        if (lng !== undefined) {
            requestContext.setQueryParam("lng", ObjectSerializer.serialize(lng, "number", ""));
        }

        // Query Params
        if (distance !== undefined) {
            requestContext.setQueryParam("distance", ObjectSerializer.serialize(distance, "number", ""));
        }

        // Query Params
        if (budget !== undefined) {
            requestContext.setQueryParam("budget", ObjectSerializer.serialize(budget, "number", ""));
        }

        // Query Params
        if (cuisine !== undefined) {
            requestContext.setQueryParam("cuisine", ObjectSerializer.serialize(cuisine, "string", ""));
        }

        // Query Params
        if (minRating !== undefined) {
            requestContext.setQueryParam("min-rating", ObjectSerializer.serialize(minRating, "number", ""));
        }

        // Query Params
        if (isOpen !== undefined) {
            requestContext.setQueryParam("is-open", ObjectSerializer.serialize(isOpen, "boolean", ""));
        }

        // Query Params
        if (sort !== undefined) {
            requestContext.setQueryParam("sort", ObjectSerializer.serialize(sort, "string", ""));
        }

        // Query Params
        if (page !== undefined) {
            requestContext.setQueryParam("page", ObjectSerializer.serialize(page, "number", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyScheme"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

}

export class DefaultApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to analyzeRecipe
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async analyzeRecipe(response: ResponseContext): Promise<any > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: any = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "any", ""
            ) as any;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Unauthorized", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Forbidden", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Found", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: any = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "any", ""
            ) as any;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to createRecipeCardGet
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async createRecipeCardGet(response: ResponseContext): Promise<any > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: any = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "any", ""
            ) as any;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Unauthorized", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Forbidden", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Found", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: any = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "any", ""
            ) as any;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to searchRestaurants
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchRestaurants(response: ResponseContext): Promise<SearchRestaurants200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SearchRestaurants200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchRestaurants200Response", ""
            ) as SearchRestaurants200Response;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Unauthorized", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Forbidden", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Found", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SearchRestaurants200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchRestaurants200Response", ""
            ) as SearchRestaurants200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

}
