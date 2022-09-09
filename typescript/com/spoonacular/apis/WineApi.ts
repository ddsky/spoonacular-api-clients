// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { GetDishPairingForWine200Response } from '..com/spoonacular/client/model/models/GetDishPairingForWine200Response';
import { GetWineDescription200Response } from '..com/spoonacular/client/model/models/GetWineDescription200Response';
import { GetWinePairing200Response } from '..com/spoonacular/client/model/models/GetWinePairing200Response';
import { GetWineRecommendation200Response } from '..com/spoonacular/client/model/models/GetWineRecommendation200Response';

/**
 * no description
 */
export class WineApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * Find a dish that goes well with a given wine.
     * Dish Pairing for Wine
     * @param wine The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.
     */
    public async getDishPairingForWine(wine: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'wine' is not null or undefined
        if (wine === null || wine === undefined) {
            throw new RequiredError("WineApi", "getDishPairingForWine", "wine");
        }


        // Path Params
        const localVarPath = '/food/wine/dishes';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (wine !== undefined) {
            requestContext.setQueryParam("wine", ObjectSerializer.serialize(wine, "string", ""));
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
     * Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".
     * Wine Description
     * @param wine The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.
     */
    public async getWineDescription(wine: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'wine' is not null or undefined
        if (wine === null || wine === undefined) {
            throw new RequiredError("WineApi", "getWineDescription", "wine");
        }


        // Path Params
        const localVarPath = '/food/wine/description';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (wine !== undefined) {
            requestContext.setQueryParam("wine", ObjectSerializer.serialize(wine, "string", ""));
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
     * Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").
     * Wine Pairing
     * @param food The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).
     * @param maxPrice The maximum price for the specific wine recommendation in USD.
     */
    public async getWinePairing(food: string, maxPrice?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'food' is not null or undefined
        if (food === null || food === undefined) {
            throw new RequiredError("WineApi", "getWinePairing", "food");
        }



        // Path Params
        const localVarPath = '/food/wine/pairing';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (food !== undefined) {
            requestContext.setQueryParam("food", ObjectSerializer.serialize(food, "string", ""));
        }

        // Query Params
        if (maxPrice !== undefined) {
            requestContext.setQueryParam("maxPrice", ObjectSerializer.serialize(maxPrice, "number", ""));
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
     * Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".
     * Wine Recommendation
     * @param wine The type of wine to get a specific product recommendation for.
     * @param maxPrice The maximum price for the specific wine recommendation in USD.
     * @param minRating The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
     * @param number The number of wine recommendations expected (between 1 and 100).
     */
    public async getWineRecommendation(wine: string, maxPrice?: number, minRating?: number, number?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'wine' is not null or undefined
        if (wine === null || wine === undefined) {
            throw new RequiredError("WineApi", "getWineRecommendation", "wine");
        }





        // Path Params
        const localVarPath = '/food/wine/recommendation';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (wine !== undefined) {
            requestContext.setQueryParam("wine", ObjectSerializer.serialize(wine, "string", ""));
        }

        // Query Params
        if (maxPrice !== undefined) {
            requestContext.setQueryParam("maxPrice", ObjectSerializer.serialize(maxPrice, "number", ""));
        }

        // Query Params
        if (minRating !== undefined) {
            requestContext.setQueryParam("minRating", ObjectSerializer.serialize(minRating, "number", ""));
        }

        // Query Params
        if (number !== undefined) {
            requestContext.setQueryParam("number", ObjectSerializer.serialize(number, "number", ""));
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

export class WineApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getDishPairingForWine
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getDishPairingForWine(response: ResponseContext): Promise<GetDishPairingForWine200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetDishPairingForWine200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetDishPairingForWine200Response", ""
            ) as GetDishPairingForWine200Response;
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
            const body: GetDishPairingForWine200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetDishPairingForWine200Response", ""
            ) as GetDishPairingForWine200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getWineDescription
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getWineDescription(response: ResponseContext): Promise<GetWineDescription200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetWineDescription200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetWineDescription200Response", ""
            ) as GetWineDescription200Response;
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
            const body: GetWineDescription200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetWineDescription200Response", ""
            ) as GetWineDescription200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getWinePairing
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getWinePairing(response: ResponseContext): Promise<GetWinePairing200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetWinePairing200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetWinePairing200Response", ""
            ) as GetWinePairing200Response;
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
            const body: GetWinePairing200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetWinePairing200Response", ""
            ) as GetWinePairing200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getWineRecommendation
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getWineRecommendation(response: ResponseContext): Promise<GetWineRecommendation200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetWineRecommendation200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetWineRecommendation200Response", ""
            ) as GetWineRecommendation200Response;
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
            const body: GetWineRecommendation200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetWineRecommendation200Response", ""
            ) as GetWineRecommendation200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

}
