// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { AutocompleteMenuItemSearch200Response } from '..com/spoonacular/client/model/models/AutocompleteMenuItemSearch200Response';
import { GetMenuItemInformation200Response } from '..com/spoonacular/client/model/models/GetMenuItemInformation200Response';
import { SearchMenuItems200Response } from '..com/spoonacular/client/model/models/SearchMenuItems200Response';

/**
 * no description
 */
export class MenuItemsApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
     * Autocomplete Menu Item Search
     * @param query The (partial) search query.
     * @param number The number of results to return (between 1 and 25).
     */
    public async autocompleteMenuItemSearch(query: string, number?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'query' is not null or undefined
        if (query === null || query === undefined) {
            throw new RequiredError("MenuItemsApi", "autocompleteMenuItemSearch", "query");
        }



        // Path Params
        const localVarPath = '/food/menuItems/suggest';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (query !== undefined) {
            requestContext.setQueryParam("query", ObjectSerializer.serialize(query, "string", ""));
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

    /**
     * Use a menu item id to get all available information about a menu item, such as nutrition.
     * Get Menu Item Information
     * @param id The item&#39;s id.
     */
    public async getMenuItemInformation(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("MenuItemsApi", "getMenuItemInformation", "id");
        }


        // Path Params
        const localVarPath = '/food/menuItems/{id}'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


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
     * Visualize a menu item's nutritional information as HTML including CSS.
     * Menu Item Nutrition by ID Image
     * @param id The menu item id.
     */
    public async menuItemNutritionByIDImage(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("MenuItemsApi", "menuItemNutritionByIDImage", "id");
        }


        // Path Params
        const localVarPath = '/food/menuItems/{id}/nutritionWidget.png'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


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
     * Visualize a menu item's nutritional label information as an image.
     * Menu Item Nutrition Label Image
     * @param id The menu item id.
     * @param showOptionalNutrients Whether to show optional nutrients.
     * @param showZeroValues Whether to show zero values.
     * @param showIngredients Whether to show a list of ingredients.
     */
    public async menuItemNutritionLabelImage(id: number, showOptionalNutrients?: boolean, showZeroValues?: boolean, showIngredients?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("MenuItemsApi", "menuItemNutritionLabelImage", "id");
        }





        // Path Params
        const localVarPath = '/food/menuItems/{id}/nutritionLabel.png'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (showOptionalNutrients !== undefined) {
            requestContext.setQueryParam("showOptionalNutrients", ObjectSerializer.serialize(showOptionalNutrients, "boolean", ""));
        }

        // Query Params
        if (showZeroValues !== undefined) {
            requestContext.setQueryParam("showZeroValues", ObjectSerializer.serialize(showZeroValues, "boolean", ""));
        }

        // Query Params
        if (showIngredients !== undefined) {
            requestContext.setQueryParam("showIngredients", ObjectSerializer.serialize(showIngredients, "boolean", ""));
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
     * Visualize a menu item's nutritional label information as HTML including CSS.
     * Menu Item Nutrition Label Widget
     * @param id The menu item id.
     * @param defaultCss Whether the default CSS should be added to the response.
     * @param showOptionalNutrients Whether to show optional nutrients.
     * @param showZeroValues Whether to show zero values.
     * @param showIngredients Whether to show a list of ingredients.
     */
    public async menuItemNutritionLabelWidget(id: number, defaultCss?: boolean, showOptionalNutrients?: boolean, showZeroValues?: boolean, showIngredients?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("MenuItemsApi", "menuItemNutritionLabelWidget", "id");
        }






        // Path Params
        const localVarPath = '/food/menuItems/{id}/nutritionLabel'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (defaultCss !== undefined) {
            requestContext.setQueryParam("defaultCss", ObjectSerializer.serialize(defaultCss, "boolean", ""));
        }

        // Query Params
        if (showOptionalNutrients !== undefined) {
            requestContext.setQueryParam("showOptionalNutrients", ObjectSerializer.serialize(showOptionalNutrients, "boolean", ""));
        }

        // Query Params
        if (showZeroValues !== undefined) {
            requestContext.setQueryParam("showZeroValues", ObjectSerializer.serialize(showZeroValues, "boolean", ""));
        }

        // Query Params
        if (showIngredients !== undefined) {
            requestContext.setQueryParam("showIngredients", ObjectSerializer.serialize(showIngredients, "boolean", ""));
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
     * Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.
     * Search Menu Items
     * @param query The (natural language) search query.
     * @param minCalories The minimum amount of calories the menu item must have.
     * @param maxCalories The maximum amount of calories the menu item can have.
     * @param minCarbs The minimum amount of carbohydrates in grams the menu item must have.
     * @param maxCarbs The maximum amount of carbohydrates in grams the menu item can have.
     * @param minProtein The minimum amount of protein in grams the menu item must have.
     * @param maxProtein The maximum amount of protein in grams the menu item can have.
     * @param minFat The minimum amount of fat in grams the menu item must have.
     * @param maxFat The maximum amount of fat in grams the menu item can have.
     * @param addMenuItemInformation If set to true, you get more information about the menu items returned.
     * @param offset The number of results to skip (between 0 and 900).
     * @param number The maximum number of items to return (between 1 and 100). Defaults to 10.
     */
    public async searchMenuItems(query?: string, minCalories?: number, maxCalories?: number, minCarbs?: number, maxCarbs?: number, minProtein?: number, maxProtein?: number, minFat?: number, maxFat?: number, addMenuItemInformation?: boolean, offset?: number, number?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;













        // Path Params
        const localVarPath = '/food/menuItems/search';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (query !== undefined) {
            requestContext.setQueryParam("query", ObjectSerializer.serialize(query, "string", ""));
        }

        // Query Params
        if (minCalories !== undefined) {
            requestContext.setQueryParam("minCalories", ObjectSerializer.serialize(minCalories, "number", ""));
        }

        // Query Params
        if (maxCalories !== undefined) {
            requestContext.setQueryParam("maxCalories", ObjectSerializer.serialize(maxCalories, "number", ""));
        }

        // Query Params
        if (minCarbs !== undefined) {
            requestContext.setQueryParam("minCarbs", ObjectSerializer.serialize(minCarbs, "number", ""));
        }

        // Query Params
        if (maxCarbs !== undefined) {
            requestContext.setQueryParam("maxCarbs", ObjectSerializer.serialize(maxCarbs, "number", ""));
        }

        // Query Params
        if (minProtein !== undefined) {
            requestContext.setQueryParam("minProtein", ObjectSerializer.serialize(minProtein, "number", ""));
        }

        // Query Params
        if (maxProtein !== undefined) {
            requestContext.setQueryParam("maxProtein", ObjectSerializer.serialize(maxProtein, "number", ""));
        }

        // Query Params
        if (minFat !== undefined) {
            requestContext.setQueryParam("minFat", ObjectSerializer.serialize(minFat, "number", ""));
        }

        // Query Params
        if (maxFat !== undefined) {
            requestContext.setQueryParam("maxFat", ObjectSerializer.serialize(maxFat, "number", ""));
        }

        // Query Params
        if (addMenuItemInformation !== undefined) {
            requestContext.setQueryParam("addMenuItemInformation", ObjectSerializer.serialize(addMenuItemInformation, "boolean", ""));
        }

        // Query Params
        if (offset !== undefined) {
            requestContext.setQueryParam("offset", ObjectSerializer.serialize(offset, "number", ""));
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

    /**
     * Visualize a menu item's nutritional information as HTML including CSS.
     * Menu Item Nutrition by ID Widget
     * @param id The item&#39;s id.
     * @param defaultCss Whether the default CSS should be added to the response.
     * @param accept Accept header.
     */
    public async visualizeMenuItemNutritionByID(id: number, defaultCss?: boolean, accept?: 'application/json' | 'text/html' | 'media/_*', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("MenuItemsApi", "visualizeMenuItemNutritionByID", "id");
        }




        // Path Params
        const localVarPath = '/food/menuItems/{id}/nutritionWidget'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (defaultCss !== undefined) {
            requestContext.setQueryParam("defaultCss", ObjectSerializer.serialize(defaultCss, "boolean", ""));
        }

        // Header Params
        requestContext.setHeaderParam("Accept", ObjectSerializer.serialize(accept, "'application/json' | 'text/html' | 'media/_*'", ""));


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

export class MenuItemsApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to autocompleteMenuItemSearch
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async autocompleteMenuItemSearch(response: ResponseContext): Promise<AutocompleteMenuItemSearch200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: AutocompleteMenuItemSearch200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "AutocompleteMenuItemSearch200Response", ""
            ) as AutocompleteMenuItemSearch200Response;
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
            const body: AutocompleteMenuItemSearch200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "AutocompleteMenuItemSearch200Response", ""
            ) as AutocompleteMenuItemSearch200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getMenuItemInformation
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getMenuItemInformation(response: ResponseContext): Promise<GetMenuItemInformation200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetMenuItemInformation200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetMenuItemInformation200Response", ""
            ) as GetMenuItemInformation200Response;
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
            const body: GetMenuItemInformation200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetMenuItemInformation200Response", ""
            ) as GetMenuItemInformation200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to menuItemNutritionByIDImage
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async menuItemNutritionByIDImage(response: ResponseContext): Promise<any > {
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
     * @params response Response returned by the server for a request to menuItemNutritionLabelImage
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async menuItemNutritionLabelImage(response: ResponseContext): Promise<any > {
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
     * @params response Response returned by the server for a request to menuItemNutritionLabelWidget
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async menuItemNutritionLabelWidget(response: ResponseContext): Promise<string > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
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
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to searchMenuItems
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchMenuItems(response: ResponseContext): Promise<SearchMenuItems200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SearchMenuItems200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchMenuItems200Response", ""
            ) as SearchMenuItems200Response;
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
            const body: SearchMenuItems200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchMenuItems200Response", ""
            ) as SearchMenuItems200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to visualizeMenuItemNutritionByID
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async visualizeMenuItemNutritionByID(response: ResponseContext): Promise<string > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
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
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

}
