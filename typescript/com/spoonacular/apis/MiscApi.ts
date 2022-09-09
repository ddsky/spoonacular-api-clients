// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { DetectFoodInText200Response } from '..com/spoonacular/client/model/models/DetectFoodInText200Response';
import { GetARandomFoodJoke200Response } from '..com/spoonacular/client/model/models/GetARandomFoodJoke200Response';
import { GetConversationSuggests200Response } from '..com/spoonacular/client/model/models/GetConversationSuggests200Response';
import { GetRandomFoodTrivia200Response } from '..com/spoonacular/client/model/models/GetRandomFoodTrivia200Response';
import { ImageAnalysisByURL200Response } from '..com/spoonacular/client/model/models/ImageAnalysisByURL200Response';
import { ImageClassificationByURL200Response } from '..com/spoonacular/client/model/models/ImageClassificationByURL200Response';
import { SearchAllFood200Response } from '..com/spoonacular/client/model/models/SearchAllFood200Response';
import { SearchCustomFoods200Response } from '..com/spoonacular/client/model/models/SearchCustomFoods200Response';
import { SearchFoodVideos200Response } from '..com/spoonacular/client/model/models/SearchFoodVideos200Response';
import { SearchSiteContent200Response } from '..com/spoonacular/client/model/models/SearchSiteContent200Response';
import { TalkToChatbot200Response } from '..com/spoonacular/client/model/models/TalkToChatbot200Response';

/**
 * no description
 */
export class MiscApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.
     * Detect Food in Text
     * @param contentType The content type.
     */
    public async detectFoodInText(contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;


        // Path Params
        const localVarPath = '/food/detect';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Header Params
        requestContext.setHeaderParam("Content-Type", ObjectSerializer.serialize(contentType, "'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data'", ""));


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
     * Get a random joke that is related to food. Caution: this is an endpoint for adults!
     * Random Food Joke
     */
    public async getARandomFoodJoke(_options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // Path Params
        const localVarPath = '/food/jokes/random';

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
     * This endpoint returns suggestions for things the user can say or ask the chatbot.
     * Conversation Suggests
     * @param query A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
     * @param number The number of suggestions to return (between 1 and 25).
     */
    public async getConversationSuggests(query: string, number?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'query' is not null or undefined
        if (query === null || query === undefined) {
            throw new RequiredError("MiscApi", "getConversationSuggests", "query");
        }



        // Path Params
        const localVarPath = '/food/converse/suggest';

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
     * Returns random food trivia.
     * Random Food Trivia
     */
    public async getRandomFoodTrivia(_options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // Path Params
        const localVarPath = '/food/trivia/random';

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
     * Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.
     * Image Analysis by URL
     * @param imageUrl The URL of the image to be analyzed.
     */
    public async imageAnalysisByURL(imageUrl: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'imageUrl' is not null or undefined
        if (imageUrl === null || imageUrl === undefined) {
            throw new RequiredError("MiscApi", "imageAnalysisByURL", "imageUrl");
        }


        // Path Params
        const localVarPath = '/food/images/analyze';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (imageUrl !== undefined) {
            requestContext.setQueryParam("imageUrl", ObjectSerializer.serialize(imageUrl, "string", ""));
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
     * Classify a food image.
     * Image Classification by URL
     * @param imageUrl The URL of the image to be classified.
     */
    public async imageClassificationByURL(imageUrl: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'imageUrl' is not null or undefined
        if (imageUrl === null || imageUrl === undefined) {
            throw new RequiredError("MiscApi", "imageClassificationByURL", "imageUrl");
        }


        // Path Params
        const localVarPath = '/food/images/classify';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (imageUrl !== undefined) {
            requestContext.setQueryParam("imageUrl", ObjectSerializer.serialize(imageUrl, "string", ""));
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
     * Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.
     * Search All Food
     * @param query The search query.
     * @param offset The number of results to skip (between 0 and 900).
     * @param number The maximum number of items to return (between 1 and 100). Defaults to 10.
     */
    public async searchAllFood(query: string, offset?: number, number?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'query' is not null or undefined
        if (query === null || query === undefined) {
            throw new RequiredError("MiscApi", "searchAllFood", "query");
        }




        // Path Params
        const localVarPath = '/food/search';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (query !== undefined) {
            requestContext.setQueryParam("query", ObjectSerializer.serialize(query, "string", ""));
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
     * Search custom foods in a user's account.
     * Search Custom Foods
     * @param username The username.
     * @param hash The private hash for the username.
     * @param query The (natural language) search query.
     * @param offset The number of results to skip (between 0 and 900).
     * @param number The maximum number of items to return (between 1 and 100). Defaults to 10.
     */
    public async searchCustomFoods(username: string, hash: string, query?: string, offset?: number, number?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'username' is not null or undefined
        if (username === null || username === undefined) {
            throw new RequiredError("MiscApi", "searchCustomFoods", "username");
        }


        // verify required parameter 'hash' is not null or undefined
        if (hash === null || hash === undefined) {
            throw new RequiredError("MiscApi", "searchCustomFoods", "hash");
        }





        // Path Params
        const localVarPath = '/food/customFoods/search';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (query !== undefined) {
            requestContext.setQueryParam("query", ObjectSerializer.serialize(query, "string", ""));
        }

        // Query Params
        if (username !== undefined) {
            requestContext.setQueryParam("username", ObjectSerializer.serialize(username, "string", ""));
        }

        // Query Params
        if (hash !== undefined) {
            requestContext.setQueryParam("hash", ObjectSerializer.serialize(hash, "string", ""));
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
     * Find recipe and other food related videos.
     * Search Food Videos
     * @param query The (natural language) search query.
     * @param type The type of the recipes. See a full list of supported meal types.
     * @param cuisine The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.
     * @param diet The diet for which the recipes must be suitable. See a full list of supported diets.
     * @param includeIngredients A comma-separated list of ingredients that the recipes should contain.
     * @param excludeIngredients A comma-separated list of ingredients or ingredient types that the recipes must not contain.
     * @param minLength Minimum video length in seconds.
     * @param maxLength Maximum video length in seconds.
     * @param offset The number of results to skip (between 0 and 900).
     * @param number The maximum number of items to return (between 1 and 100). Defaults to 10.
     */
    public async searchFoodVideos(query?: string, type?: string, cuisine?: string, diet?: string, includeIngredients?: string, excludeIngredients?: string, minLength?: number, maxLength?: number, offset?: number, number?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;











        // Path Params
        const localVarPath = '/food/videos/search';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (query !== undefined) {
            requestContext.setQueryParam("query", ObjectSerializer.serialize(query, "string", ""));
        }

        // Query Params
        if (type !== undefined) {
            requestContext.setQueryParam("type", ObjectSerializer.serialize(type, "string", ""));
        }

        // Query Params
        if (cuisine !== undefined) {
            requestContext.setQueryParam("cuisine", ObjectSerializer.serialize(cuisine, "string", ""));
        }

        // Query Params
        if (diet !== undefined) {
            requestContext.setQueryParam("diet", ObjectSerializer.serialize(diet, "string", ""));
        }

        // Query Params
        if (includeIngredients !== undefined) {
            requestContext.setQueryParam("includeIngredients", ObjectSerializer.serialize(includeIngredients, "string", ""));
        }

        // Query Params
        if (excludeIngredients !== undefined) {
            requestContext.setQueryParam("excludeIngredients", ObjectSerializer.serialize(excludeIngredients, "string", ""));
        }

        // Query Params
        if (minLength !== undefined) {
            requestContext.setQueryParam("minLength", ObjectSerializer.serialize(minLength, "number", ""));
        }

        // Query Params
        if (maxLength !== undefined) {
            requestContext.setQueryParam("maxLength", ObjectSerializer.serialize(maxLength, "number", ""));
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
     * Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.
     * Search Site Content
     * @param query The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content.
     */
    public async searchSiteContent(query: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'query' is not null or undefined
        if (query === null || query === undefined) {
            throw new RequiredError("MiscApi", "searchSiteContent", "query");
        }


        // Path Params
        const localVarPath = '/food/site/search';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (query !== undefined) {
            requestContext.setQueryParam("query", ObjectSerializer.serialize(query, "string", ""));
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
     * This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.
     * Talk to Chatbot
     * @param text The request / question / answer from the user to the chatbot.
     * @param contextId An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.
     */
    public async talkToChatbot(text: string, contextId?: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'text' is not null or undefined
        if (text === null || text === undefined) {
            throw new RequiredError("MiscApi", "talkToChatbot", "text");
        }



        // Path Params
        const localVarPath = '/food/converse';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (text !== undefined) {
            requestContext.setQueryParam("text", ObjectSerializer.serialize(text, "string", ""));
        }

        // Query Params
        if (contextId !== undefined) {
            requestContext.setQueryParam("contextId", ObjectSerializer.serialize(contextId, "string", ""));
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

export class MiscApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to detectFoodInText
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async detectFoodInText(response: ResponseContext): Promise<DetectFoodInText200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: DetectFoodInText200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "DetectFoodInText200Response", ""
            ) as DetectFoodInText200Response;
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
            const body: DetectFoodInText200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "DetectFoodInText200Response", ""
            ) as DetectFoodInText200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getARandomFoodJoke
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getARandomFoodJoke(response: ResponseContext): Promise<GetARandomFoodJoke200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetARandomFoodJoke200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetARandomFoodJoke200Response", ""
            ) as GetARandomFoodJoke200Response;
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
            const body: GetARandomFoodJoke200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetARandomFoodJoke200Response", ""
            ) as GetARandomFoodJoke200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getConversationSuggests
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getConversationSuggests(response: ResponseContext): Promise<GetConversationSuggests200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetConversationSuggests200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetConversationSuggests200Response", ""
            ) as GetConversationSuggests200Response;
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
            const body: GetConversationSuggests200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetConversationSuggests200Response", ""
            ) as GetConversationSuggests200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getRandomFoodTrivia
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getRandomFoodTrivia(response: ResponseContext): Promise<GetRandomFoodTrivia200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetRandomFoodTrivia200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRandomFoodTrivia200Response", ""
            ) as GetRandomFoodTrivia200Response;
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
            const body: GetRandomFoodTrivia200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRandomFoodTrivia200Response", ""
            ) as GetRandomFoodTrivia200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to imageAnalysisByURL
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async imageAnalysisByURL(response: ResponseContext): Promise<ImageAnalysisByURL200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ImageAnalysisByURL200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ImageAnalysisByURL200Response", ""
            ) as ImageAnalysisByURL200Response;
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
            const body: ImageAnalysisByURL200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ImageAnalysisByURL200Response", ""
            ) as ImageAnalysisByURL200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to imageClassificationByURL
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async imageClassificationByURL(response: ResponseContext): Promise<ImageClassificationByURL200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ImageClassificationByURL200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ImageClassificationByURL200Response", ""
            ) as ImageClassificationByURL200Response;
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
            const body: ImageClassificationByURL200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ImageClassificationByURL200Response", ""
            ) as ImageClassificationByURL200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to searchAllFood
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchAllFood(response: ResponseContext): Promise<SearchAllFood200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SearchAllFood200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchAllFood200Response", ""
            ) as SearchAllFood200Response;
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
            const body: SearchAllFood200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchAllFood200Response", ""
            ) as SearchAllFood200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to searchCustomFoods
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchCustomFoods(response: ResponseContext): Promise<SearchCustomFoods200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SearchCustomFoods200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchCustomFoods200Response", ""
            ) as SearchCustomFoods200Response;
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
            const body: SearchCustomFoods200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchCustomFoods200Response", ""
            ) as SearchCustomFoods200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to searchFoodVideos
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchFoodVideos(response: ResponseContext): Promise<SearchFoodVideos200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SearchFoodVideos200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchFoodVideos200Response", ""
            ) as SearchFoodVideos200Response;
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
            const body: SearchFoodVideos200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchFoodVideos200Response", ""
            ) as SearchFoodVideos200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to searchSiteContent
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchSiteContent(response: ResponseContext): Promise<SearchSiteContent200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SearchSiteContent200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchSiteContent200Response", ""
            ) as SearchSiteContent200Response;
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
            const body: SearchSiteContent200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchSiteContent200Response", ""
            ) as SearchSiteContent200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to talkToChatbot
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async talkToChatbot(response: ResponseContext): Promise<TalkToChatbot200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: TalkToChatbot200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "TalkToChatbot200Response", ""
            ) as TalkToChatbot200Response;
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
            const body: TalkToChatbot200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "TalkToChatbot200Response", ""
            ) as TalkToChatbot200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

}
