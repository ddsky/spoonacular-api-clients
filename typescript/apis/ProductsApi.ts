// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError, COLLECTION_FORMATS} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile, HttpInfo} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { AutocompleteProductSearch200Response } from '../models/AutocompleteProductSearch200Response';
import { ClassifyGroceryProduct200Response } from '../models/ClassifyGroceryProduct200Response';
import { ClassifyGroceryProductBulk200ResponseInner } from '../models/ClassifyGroceryProductBulk200ResponseInner';
import { ClassifyGroceryProductBulkRequestInner } from '../models/ClassifyGroceryProductBulkRequestInner';
import { ClassifyGroceryProductRequest } from '../models/ClassifyGroceryProductRequest';
import { GetComparableProducts200Response } from '../models/GetComparableProducts200Response';
import { ProductInformation } from '../models/ProductInformation';
import { SearchGroceryProducts200Response } from '../models/SearchGroceryProducts200Response';
import { SearchGroceryProductsByUPC200Response } from '../models/SearchGroceryProductsByUPC200Response';

/**
 * no description
 */
export class ProductsApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.
     * Autocomplete Product Search
     * @param query The (partial) search query.
     * @param number The number of results to return (between 1 and 25).
     */
    public async autocompleteProductSearch(query: string, number?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'query' is not null or undefined
        if (query === null || query === undefined) {
            throw new RequiredError("ProductsApi", "autocompleteProductSearch", "query");
        }



        // Path Params
        const localVarPath = '/food/products/suggest';

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
     * This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.
     * Classify Grocery Product
     * @param classifyGroceryProductRequest 
     * @param locale The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
     */
    public async classifyGroceryProduct(classifyGroceryProductRequest: ClassifyGroceryProductRequest, locale?: 'en_US' | 'en_GB', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'classifyGroceryProductRequest' is not null or undefined
        if (classifyGroceryProductRequest === null || classifyGroceryProductRequest === undefined) {
            throw new RequiredError("ProductsApi", "classifyGroceryProduct", "classifyGroceryProductRequest");
        }



        // Path Params
        const localVarPath = '/food/products/classify';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (locale !== undefined) {
            requestContext.setQueryParam("locale", ObjectSerializer.serialize(locale, "'en_US' | 'en_GB'", ""));
        }


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(classifyGroceryProductRequest, "ClassifyGroceryProductRequest", ""),
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
     * Provide a set of product jsons, get back classified products.
     * Classify Grocery Product Bulk
     * @param classifyGroceryProductBulkRequestInner 
     * @param locale The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
     */
    public async classifyGroceryProductBulk(classifyGroceryProductBulkRequestInner: Set<ClassifyGroceryProductBulkRequestInner>, locale?: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'classifyGroceryProductBulkRequestInner' is not null or undefined
        if (classifyGroceryProductBulkRequestInner === null || classifyGroceryProductBulkRequestInner === undefined) {
            throw new RequiredError("ProductsApi", "classifyGroceryProductBulk", "classifyGroceryProductBulkRequestInner");
        }



        // Path Params
        const localVarPath = '/food/products/classifyBatch';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (locale !== undefined) {
            requestContext.setQueryParam("locale", ObjectSerializer.serialize(locale, "string", ""));
        }


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(classifyGroceryProductBulkRequestInner, "Set<ClassifyGroceryProductBulkRequestInner>", ""),
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
     * Find comparable products to the given one.
     * Get Comparable Products
     * @param upc The UPC of the product for which you want to find comparable products.
     */
    public async getComparableProducts(upc: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'upc' is not null or undefined
        if (upc === null || upc === undefined) {
            throw new RequiredError("ProductsApi", "getComparableProducts", "upc");
        }


        // Path Params
        const localVarPath = '/food/products/upc/{upc}/comparable'
            .replace('{' + 'upc' + '}', encodeURIComponent(String(upc)));

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
     * Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.
     * Get Product Information
     * @param id The id of the packaged food.
     */
    public async getProductInformation(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("ProductsApi", "getProductInformation", "id");
        }


        // Path Params
        const localVarPath = '/food/products/{id}'
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
     * Visualize a product\'s nutritional information as an image.
     * Product Nutrition by ID Image
     * @param id The id of the product.
     */
    public async productNutritionByIDImage(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("ProductsApi", "productNutritionByIDImage", "id");
        }


        // Path Params
        const localVarPath = '/food/products/{id}/nutritionWidget.png'
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
     * Get a product\'s nutrition label as an image.
     * Product Nutrition Label Image
     * @param id The product id.
     * @param showOptionalNutrients Whether to show optional nutrients.
     * @param showZeroValues Whether to show zero values.
     * @param showIngredients Whether to show a list of ingredients.
     */
    public async productNutritionLabelImage(id: number, showOptionalNutrients?: boolean, showZeroValues?: boolean, showIngredients?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("ProductsApi", "productNutritionLabelImage", "id");
        }





        // Path Params
        const localVarPath = '/food/products/{id}/nutritionLabel.png'
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
     * Get a product\'s nutrition label as an HTML widget.
     * Product Nutrition Label Widget
     * @param id The product id.
     * @param defaultCss Whether the default CSS should be added to the response.
     * @param showOptionalNutrients Whether to show optional nutrients.
     * @param showZeroValues Whether to show zero values.
     * @param showIngredients Whether to show a list of ingredients.
     */
    public async productNutritionLabelWidget(id: number, defaultCss?: boolean, showOptionalNutrients?: boolean, showZeroValues?: boolean, showIngredients?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("ProductsApi", "productNutritionLabelWidget", "id");
        }






        // Path Params
        const localVarPath = '/food/products/{id}/nutritionLabel'
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
     * Search packaged food products, such as frozen pizza or Greek yogurt.
     * Search Grocery Products
     * @param query The (natural language) search query.
     * @param minCalories The minimum amount of calories the product must have.
     * @param maxCalories The maximum amount of calories the product can have.
     * @param minCarbs The minimum amount of carbohydrates in grams the product must have.
     * @param maxCarbs The maximum amount of carbohydrates in grams the product can have.
     * @param minProtein The minimum amount of protein in grams the product must have.
     * @param maxProtein The maximum amount of protein in grams the product can have.
     * @param minFat The minimum amount of fat in grams the product must have.
     * @param maxFat The maximum amount of fat in grams the product can have.
     * @param addProductInformation If set to true, you get more information about the products returned.
     * @param offset The number of results to skip (between 0 and 900).
     * @param number The maximum number of items to return (between 1 and 100). Defaults to 10.
     */
    public async searchGroceryProducts(query: string, minCalories?: number, maxCalories?: number, minCarbs?: number, maxCarbs?: number, minProtein?: number, maxProtein?: number, minFat?: number, maxFat?: number, addProductInformation?: boolean, offset?: number, number?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'query' is not null or undefined
        if (query === null || query === undefined) {
            throw new RequiredError("ProductsApi", "searchGroceryProducts", "query");
        }













        // Path Params
        const localVarPath = '/food/products/search';

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
        if (addProductInformation !== undefined) {
            requestContext.setQueryParam("addProductInformation", ObjectSerializer.serialize(addProductInformation, "boolean", ""));
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
     * Get information about a packaged food using its UPC.
     * Search Grocery Products by UPC
     * @param upc The product\&#39;s UPC.
     */
    public async searchGroceryProductsByUPC(upc: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'upc' is not null or undefined
        if (upc === null || upc === undefined) {
            throw new RequiredError("ProductsApi", "searchGroceryProductsByUPC", "upc");
        }


        // Path Params
        const localVarPath = '/food/products/upc/{upc}'
            .replace('{' + 'upc' + '}', encodeURIComponent(String(upc)));

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
     * Visualize a product\'s nutritional information as HTML including CSS.
     * Product Nutrition by ID Widget
     * @param id The id of the product.
     * @param defaultCss Whether the default CSS should be added to the response.
     */
    public async visualizeProductNutritionByID(id: number, defaultCss?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("ProductsApi", "visualizeProductNutritionByID", "id");
        }



        // Path Params
        const localVarPath = '/food/products/{id}/nutritionWidget'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (defaultCss !== undefined) {
            requestContext.setQueryParam("defaultCss", ObjectSerializer.serialize(defaultCss, "boolean", ""));
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

export class ProductsApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to autocompleteProductSearch
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async autocompleteProductSearchWithHttpInfo(response: ResponseContext): Promise<HttpInfo<AutocompleteProductSearch200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: AutocompleteProductSearch200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "AutocompleteProductSearch200Response", ""
            ) as AutocompleteProductSearch200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
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
            const body: AutocompleteProductSearch200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "AutocompleteProductSearch200Response", ""
            ) as AutocompleteProductSearch200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to classifyGroceryProduct
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async classifyGroceryProductWithHttpInfo(response: ResponseContext): Promise<HttpInfo<ClassifyGroceryProduct200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ClassifyGroceryProduct200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ClassifyGroceryProduct200Response", ""
            ) as ClassifyGroceryProduct200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
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
            const body: ClassifyGroceryProduct200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ClassifyGroceryProduct200Response", ""
            ) as ClassifyGroceryProduct200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to classifyGroceryProductBulk
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async classifyGroceryProductBulkWithHttpInfo(response: ResponseContext): Promise<HttpInfo<Set<ClassifyGroceryProductBulk200ResponseInner> >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Set<ClassifyGroceryProductBulk200ResponseInner> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Set<ClassifyGroceryProductBulk200ResponseInner>", ""
            ) as Set<ClassifyGroceryProductBulk200ResponseInner>;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
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
            const body: Set<ClassifyGroceryProductBulk200ResponseInner> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Set<ClassifyGroceryProductBulk200ResponseInner>", ""
            ) as Set<ClassifyGroceryProductBulk200ResponseInner>;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getComparableProducts
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getComparableProductsWithHttpInfo(response: ResponseContext): Promise<HttpInfo<GetComparableProducts200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetComparableProducts200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetComparableProducts200Response", ""
            ) as GetComparableProducts200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
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
            const body: GetComparableProducts200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetComparableProducts200Response", ""
            ) as GetComparableProducts200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getProductInformation
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getProductInformationWithHttpInfo(response: ResponseContext): Promise<HttpInfo<ProductInformation >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ProductInformation = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ProductInformation", ""
            ) as ProductInformation;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
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
            const body: ProductInformation = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ProductInformation", ""
            ) as ProductInformation;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to productNutritionByIDImage
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async productNutritionByIDImageWithHttpInfo(response: ResponseContext): Promise<HttpInfo<HttpFile >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: HttpFile = await response.getBodyAsFile() as any as HttpFile;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
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
            const body: HttpFile = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "HttpFile", "binary"
            ) as HttpFile;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to productNutritionLabelImage
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async productNutritionLabelImageWithHttpInfo(response: ResponseContext): Promise<HttpInfo<HttpFile >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: HttpFile = await response.getBodyAsFile() as any as HttpFile;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
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
            const body: HttpFile = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "HttpFile", "binary"
            ) as HttpFile;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to productNutritionLabelWidget
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async productNutritionLabelWidgetWithHttpInfo(response: ResponseContext): Promise<HttpInfo<string >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
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
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to searchGroceryProducts
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchGroceryProductsWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SearchGroceryProducts200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SearchGroceryProducts200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchGroceryProducts200Response", ""
            ) as SearchGroceryProducts200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
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
            const body: SearchGroceryProducts200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchGroceryProducts200Response", ""
            ) as SearchGroceryProducts200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to searchGroceryProductsByUPC
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchGroceryProductsByUPCWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SearchGroceryProductsByUPC200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SearchGroceryProductsByUPC200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchGroceryProductsByUPC200Response", ""
            ) as SearchGroceryProductsByUPC200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
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
            const body: SearchGroceryProductsByUPC200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchGroceryProductsByUPC200Response", ""
            ) as SearchGroceryProductsByUPC200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to visualizeProductNutritionByID
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async visualizeProductNutritionByIDWithHttpInfo(response: ResponseContext): Promise<HttpInfo<string >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
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
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

}
