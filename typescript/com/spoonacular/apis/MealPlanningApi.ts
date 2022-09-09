// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { AddMealPlanTemplate200Response } from '..com/spoonacular/client/model/models/AddMealPlanTemplate200Response';
import { AddToMealPlanRequest } from '..com/spoonacular/client/model/models/AddToMealPlanRequest';
import { AddToMealPlanRequest1 } from '..com/spoonacular/client/model/models/AddToMealPlanRequest1';
import { AddToShoppingListRequest } from '..com/spoonacular/client/model/models/AddToShoppingListRequest';
import { ClearMealPlanDayRequest } from '..com/spoonacular/client/model/models/ClearMealPlanDayRequest';
import { ConnectUser200Response } from '..com/spoonacular/client/model/models/ConnectUser200Response';
import { ConnectUserRequest } from '..com/spoonacular/client/model/models/ConnectUserRequest';
import { DeleteFromMealPlanRequest } from '..com/spoonacular/client/model/models/DeleteFromMealPlanRequest';
import { GenerateMealPlan200Response } from '..com/spoonacular/client/model/models/GenerateMealPlan200Response';
import { GenerateShoppingList200Response } from '..com/spoonacular/client/model/models/GenerateShoppingList200Response';
import { GenerateShoppingListRequest } from '..com/spoonacular/client/model/models/GenerateShoppingListRequest';
import { GetMealPlanTemplate200Response } from '..com/spoonacular/client/model/models/GetMealPlanTemplate200Response';
import { GetMealPlanTemplates200Response } from '..com/spoonacular/client/model/models/GetMealPlanTemplates200Response';
import { GetMealPlanWeek200Response } from '..com/spoonacular/client/model/models/GetMealPlanWeek200Response';
import { GetShoppingList200Response } from '..com/spoonacular/client/model/models/GetShoppingList200Response';

/**
 * no description
 */
export class MealPlanningApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * Add a meal plan template for a user.
     * Add Meal Plan Template
     * @param username The username.
     * @param hash The private hash for the username.
     * @param addToMealPlanRequest 
     */
    public async addMealPlanTemplate(username: string, hash: string, addToMealPlanRequest: AddToMealPlanRequest, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'username' is not null or undefined
        if (username === null || username === undefined) {
            throw new RequiredError("MealPlanningApi", "addMealPlanTemplate", "username");
        }


        // verify required parameter 'hash' is not null or undefined
        if (hash === null || hash === undefined) {
            throw new RequiredError("MealPlanningApi", "addMealPlanTemplate", "hash");
        }


        // verify required parameter 'addToMealPlanRequest' is not null or undefined
        if (addToMealPlanRequest === null || addToMealPlanRequest === undefined) {
            throw new RequiredError("MealPlanningApi", "addMealPlanTemplate", "addToMealPlanRequest");
        }


        // Path Params
        const localVarPath = '/mealplanner/{username}/templates'
            .replace('{' + 'username' + '}', encodeURIComponent(String(username)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (hash !== undefined) {
            requestContext.setQueryParam("hash", ObjectSerializer.serialize(hash, "string", ""));
        }


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            ""
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(addToMealPlanRequest, "AddToMealPlanRequest", ""),
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
     * Add an item to the user's meal plan.
     * Add to Meal Plan
     * @param username The username.
     * @param hash The private hash for the username.
     * @param addToMealPlanRequest 
     */
    public async addToMealPlan(username: string, hash: string, addToMealPlanRequest: AddToMealPlanRequest, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'username' is not null or undefined
        if (username === null || username === undefined) {
            throw new RequiredError("MealPlanningApi", "addToMealPlan", "username");
        }


        // verify required parameter 'hash' is not null or undefined
        if (hash === null || hash === undefined) {
            throw new RequiredError("MealPlanningApi", "addToMealPlan", "hash");
        }


        // verify required parameter 'addToMealPlanRequest' is not null or undefined
        if (addToMealPlanRequest === null || addToMealPlanRequest === undefined) {
            throw new RequiredError("MealPlanningApi", "addToMealPlan", "addToMealPlanRequest");
        }


        // Path Params
        const localVarPath = '/mealplanner/{username}/items'
            .replace('{' + 'username' + '}', encodeURIComponent(String(username)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (hash !== undefined) {
            requestContext.setQueryParam("hash", ObjectSerializer.serialize(hash, "string", ""));
        }


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "",
        
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(addToMealPlanRequest, "AddToMealPlanRequest", ""),
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
     * Add an item to the current shopping list of a user.
     * Add to Shopping List
     * @param username The username.
     * @param hash The private hash for the username.
     * @param addToMealPlanRequest 
     */
    public async addToShoppingList(username: string, hash: string, addToMealPlanRequest: AddToMealPlanRequest, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'username' is not null or undefined
        if (username === null || username === undefined) {
            throw new RequiredError("MealPlanningApi", "addToShoppingList", "username");
        }


        // verify required parameter 'hash' is not null or undefined
        if (hash === null || hash === undefined) {
            throw new RequiredError("MealPlanningApi", "addToShoppingList", "hash");
        }


        // verify required parameter 'addToMealPlanRequest' is not null or undefined
        if (addToMealPlanRequest === null || addToMealPlanRequest === undefined) {
            throw new RequiredError("MealPlanningApi", "addToShoppingList", "addToMealPlanRequest");
        }


        // Path Params
        const localVarPath = '/mealplanner/{username}/shopping-list/items'
            .replace('{' + 'username' + '}', encodeURIComponent(String(username)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (hash !== undefined) {
            requestContext.setQueryParam("hash", ObjectSerializer.serialize(hash, "string", ""));
        }


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "",
        
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(addToMealPlanRequest, "AddToMealPlanRequest", ""),
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
     * Delete all planned items from the user's meal plan for a specific day.
     * Clear Meal Plan Day
     * @param username The username.
     * @param date The date in the format yyyy-mm-dd.
     * @param hash The private hash for the username.
     * @param clearMealPlanDayRequest 
     */
    public async clearMealPlanDay(username: string, date: string, hash: string, clearMealPlanDayRequest: ClearMealPlanDayRequest, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'username' is not null or undefined
        if (username === null || username === undefined) {
            throw new RequiredError("MealPlanningApi", "clearMealPlanDay", "username");
        }


        // verify required parameter 'date' is not null or undefined
        if (date === null || date === undefined) {
            throw new RequiredError("MealPlanningApi", "clearMealPlanDay", "date");
        }


        // verify required parameter 'hash' is not null or undefined
        if (hash === null || hash === undefined) {
            throw new RequiredError("MealPlanningApi", "clearMealPlanDay", "hash");
        }


        // verify required parameter 'clearMealPlanDayRequest' is not null or undefined
        if (clearMealPlanDayRequest === null || clearMealPlanDayRequest === undefined) {
            throw new RequiredError("MealPlanningApi", "clearMealPlanDay", "clearMealPlanDayRequest");
        }


        // Path Params
        const localVarPath = '/mealplanner/{username}/day/{date}'
            .replace('{' + 'username' + '}', encodeURIComponent(String(username)))
            .replace('{' + 'date' + '}', encodeURIComponent(String(date)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.DELETE);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (hash !== undefined) {
            requestContext.setQueryParam("hash", ObjectSerializer.serialize(hash, "string", ""));
        }


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            ""
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(clearMealPlanDayRequest, "ClearMealPlanDayRequest", ""),
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
     * In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.
     * Connect User
     * @param body 
     */
    public async connectUser(body: any, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'body' is not null or undefined
        if (body === null || body === undefined) {
            throw new RequiredError("MealPlanningApi", "connectUser", "body");
        }


        // Path Params
        const localVarPath = '/users/connect';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "",
        
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(body, "any", ""),
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
     * Delete an item from the user's meal plan.
     * Delete from Meal Plan
     * @param username The username.
     * @param id The shopping list item id.
     * @param hash The private hash for the username.
     * @param deleteFromMealPlanRequest 
     */
    public async deleteFromMealPlan(username: string, id: number, hash: string, deleteFromMealPlanRequest: DeleteFromMealPlanRequest, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'username' is not null or undefined
        if (username === null || username === undefined) {
            throw new RequiredError("MealPlanningApi", "deleteFromMealPlan", "username");
        }


        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("MealPlanningApi", "deleteFromMealPlan", "id");
        }


        // verify required parameter 'hash' is not null or undefined
        if (hash === null || hash === undefined) {
            throw new RequiredError("MealPlanningApi", "deleteFromMealPlan", "hash");
        }


        // verify required parameter 'deleteFromMealPlanRequest' is not null or undefined
        if (deleteFromMealPlanRequest === null || deleteFromMealPlanRequest === undefined) {
            throw new RequiredError("MealPlanningApi", "deleteFromMealPlan", "deleteFromMealPlanRequest");
        }


        // Path Params
        const localVarPath = '/mealplanner/{username}/items/{id}'
            .replace('{' + 'username' + '}', encodeURIComponent(String(username)))
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.DELETE);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (hash !== undefined) {
            requestContext.setQueryParam("hash", ObjectSerializer.serialize(hash, "string", ""));
        }


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            ""
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(deleteFromMealPlanRequest, "DeleteFromMealPlanRequest", ""),
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
     * Delete an item from the current shopping list of the user.
     * Delete from Shopping List
     * @param username The username.
     * @param id The item&#39;s id.
     * @param hash The private hash for the username.
     * @param deleteFromMealPlanRequest 
     */
    public async deleteFromShoppingList(username: string, id: number, hash: string, deleteFromMealPlanRequest: DeleteFromMealPlanRequest, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'username' is not null or undefined
        if (username === null || username === undefined) {
            throw new RequiredError("MealPlanningApi", "deleteFromShoppingList", "username");
        }


        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("MealPlanningApi", "deleteFromShoppingList", "id");
        }


        // verify required parameter 'hash' is not null or undefined
        if (hash === null || hash === undefined) {
            throw new RequiredError("MealPlanningApi", "deleteFromShoppingList", "hash");
        }


        // verify required parameter 'deleteFromMealPlanRequest' is not null or undefined
        if (deleteFromMealPlanRequest === null || deleteFromMealPlanRequest === undefined) {
            throw new RequiredError("MealPlanningApi", "deleteFromShoppingList", "deleteFromMealPlanRequest");
        }


        // Path Params
        const localVarPath = '/mealplanner/{username}/shopping-list/items/{id}'
            .replace('{' + 'username' + '}', encodeURIComponent(String(username)))
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.DELETE);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (hash !== undefined) {
            requestContext.setQueryParam("hash", ObjectSerializer.serialize(hash, "string", ""));
        }


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            ""
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(deleteFromMealPlanRequest, "DeleteFromMealPlanRequest", ""),
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
     * Delete a meal plan template for a user.
     * Delete Meal Plan Template
     * @param username The username.
     * @param id The item&#39;s id.
     * @param hash The private hash for the username.
     * @param deleteFromMealPlanRequest 
     */
    public async deleteMealPlanTemplate(username: string, id: number, hash: string, deleteFromMealPlanRequest: DeleteFromMealPlanRequest, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'username' is not null or undefined
        if (username === null || username === undefined) {
            throw new RequiredError("MealPlanningApi", "deleteMealPlanTemplate", "username");
        }


        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("MealPlanningApi", "deleteMealPlanTemplate", "id");
        }


        // verify required parameter 'hash' is not null or undefined
        if (hash === null || hash === undefined) {
            throw new RequiredError("MealPlanningApi", "deleteMealPlanTemplate", "hash");
        }


        // verify required parameter 'deleteFromMealPlanRequest' is not null or undefined
        if (deleteFromMealPlanRequest === null || deleteFromMealPlanRequest === undefined) {
            throw new RequiredError("MealPlanningApi", "deleteMealPlanTemplate", "deleteFromMealPlanRequest");
        }


        // Path Params
        const localVarPath = '/mealplanner/{username}/templates/{id}'
            .replace('{' + 'username' + '}', encodeURIComponent(String(username)))
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.DELETE);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (hash !== undefined) {
            requestContext.setQueryParam("hash", ObjectSerializer.serialize(hash, "string", ""));
        }


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            ""
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(deleteFromMealPlanRequest, "DeleteFromMealPlanRequest", ""),
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
     * Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
     * Generate Meal Plan
     * @param timeFrame Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;.
     * @param targetCalories What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
     * @param diet Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
     * @param exclude A comma-separated list of allergens or ingredients that must be excluded.
     */
    public async generateMealPlan(timeFrame?: string, targetCalories?: number, diet?: string, exclude?: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;





        // Path Params
        const localVarPath = '/mealplanner/generate';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (timeFrame !== undefined) {
            requestContext.setQueryParam("timeFrame", ObjectSerializer.serialize(timeFrame, "string", ""));
        }

        // Query Params
        if (targetCalories !== undefined) {
            requestContext.setQueryParam("targetCalories", ObjectSerializer.serialize(targetCalories, "number", ""));
        }

        // Query Params
        if (diet !== undefined) {
            requestContext.setQueryParam("diet", ObjectSerializer.serialize(diet, "string", ""));
        }

        // Query Params
        if (exclude !== undefined) {
            requestContext.setQueryParam("exclude", ObjectSerializer.serialize(exclude, "string", ""));
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
     * Generate the shopping list for a user from the meal planner in a given time frame.
     * Generate Shopping List
     * @param username The username.
     * @param startDate The start date in the format yyyy-mm-dd.
     * @param endDate The end date in the format yyyy-mm-dd.
     * @param hash The private hash for the username.
     * @param generateShoppingListRequest 
     */
    public async generateShoppingList(username: string, startDate: string, endDate: string, hash: string, generateShoppingListRequest: GenerateShoppingListRequest, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'username' is not null or undefined
        if (username === null || username === undefined) {
            throw new RequiredError("MealPlanningApi", "generateShoppingList", "username");
        }


        // verify required parameter 'startDate' is not null or undefined
        if (startDate === null || startDate === undefined) {
            throw new RequiredError("MealPlanningApi", "generateShoppingList", "startDate");
        }


        // verify required parameter 'endDate' is not null or undefined
        if (endDate === null || endDate === undefined) {
            throw new RequiredError("MealPlanningApi", "generateShoppingList", "endDate");
        }


        // verify required parameter 'hash' is not null or undefined
        if (hash === null || hash === undefined) {
            throw new RequiredError("MealPlanningApi", "generateShoppingList", "hash");
        }


        // verify required parameter 'generateShoppingListRequest' is not null or undefined
        if (generateShoppingListRequest === null || generateShoppingListRequest === undefined) {
            throw new RequiredError("MealPlanningApi", "generateShoppingList", "generateShoppingListRequest");
        }


        // Path Params
        const localVarPath = '/mealplanner/{username}/shopping-list/{start-date}/{end-date}'
            .replace('{' + 'username' + '}', encodeURIComponent(String(username)))
            .replace('{' + 'start-date' + '}', encodeURIComponent(String(startDate)))
            .replace('{' + 'end-date' + '}', encodeURIComponent(String(endDate)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (hash !== undefined) {
            requestContext.setQueryParam("hash", ObjectSerializer.serialize(hash, "string", ""));
        }


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            ""
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(generateShoppingListRequest, "GenerateShoppingListRequest", ""),
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
     * Get information about a meal plan template.
     * Get Meal Plan Template
     * @param username The username.
     * @param id The item&#39;s id.
     * @param hash The private hash for the username.
     */
    public async getMealPlanTemplate(username: string, id: number, hash: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'username' is not null or undefined
        if (username === null || username === undefined) {
            throw new RequiredError("MealPlanningApi", "getMealPlanTemplate", "username");
        }


        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("MealPlanningApi", "getMealPlanTemplate", "id");
        }


        // verify required parameter 'hash' is not null or undefined
        if (hash === null || hash === undefined) {
            throw new RequiredError("MealPlanningApi", "getMealPlanTemplate", "hash");
        }


        // Path Params
        const localVarPath = '/mealplanner/{username}/templates/{id}'
            .replace('{' + 'username' + '}', encodeURIComponent(String(username)))
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (hash !== undefined) {
            requestContext.setQueryParam("hash", ObjectSerializer.serialize(hash, "string", ""));
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
     * Get meal plan templates from user or public ones.
     * Get Meal Plan Templates
     * @param username The username.
     * @param hash The private hash for the username.
     */
    public async getMealPlanTemplates(username: string, hash: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'username' is not null or undefined
        if (username === null || username === undefined) {
            throw new RequiredError("MealPlanningApi", "getMealPlanTemplates", "username");
        }


        // verify required parameter 'hash' is not null or undefined
        if (hash === null || hash === undefined) {
            throw new RequiredError("MealPlanningApi", "getMealPlanTemplates", "hash");
        }


        // Path Params
        const localVarPath = '/mealplanner/{username}/templates'
            .replace('{' + 'username' + '}', encodeURIComponent(String(username)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (hash !== undefined) {
            requestContext.setQueryParam("hash", ObjectSerializer.serialize(hash, "string", ""));
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
     * Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.
     * Get Meal Plan Week
     * @param username The username.
     * @param startDate The start date of the meal planned week in the format yyyy-mm-dd.
     * @param hash The private hash for the username.
     */
    public async getMealPlanWeek(username: string, startDate: string, hash: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'username' is not null or undefined
        if (username === null || username === undefined) {
            throw new RequiredError("MealPlanningApi", "getMealPlanWeek", "username");
        }


        // verify required parameter 'startDate' is not null or undefined
        if (startDate === null || startDate === undefined) {
            throw new RequiredError("MealPlanningApi", "getMealPlanWeek", "startDate");
        }


        // verify required parameter 'hash' is not null or undefined
        if (hash === null || hash === undefined) {
            throw new RequiredError("MealPlanningApi", "getMealPlanWeek", "hash");
        }


        // Path Params
        const localVarPath = '/mealplanner/{username}/week/{start-date}'
            .replace('{' + 'username' + '}', encodeURIComponent(String(username)))
            .replace('{' + 'start-date' + '}', encodeURIComponent(String(startDate)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (hash !== undefined) {
            requestContext.setQueryParam("hash", ObjectSerializer.serialize(hash, "string", ""));
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
     * Get the current shopping list for the given user.
     * Get Shopping List
     * @param username The username.
     * @param hash The private hash for the username.
     */
    public async getShoppingList(username: string, hash: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'username' is not null or undefined
        if (username === null || username === undefined) {
            throw new RequiredError("MealPlanningApi", "getShoppingList", "username");
        }


        // verify required parameter 'hash' is not null or undefined
        if (hash === null || hash === undefined) {
            throw new RequiredError("MealPlanningApi", "getShoppingList", "hash");
        }


        // Path Params
        const localVarPath = '/mealplanner/{username}/shopping-list'
            .replace('{' + 'username' + '}', encodeURIComponent(String(username)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (hash !== undefined) {
            requestContext.setQueryParam("hash", ObjectSerializer.serialize(hash, "string", ""));
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

export class MealPlanningApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to addMealPlanTemplate
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async addMealPlanTemplate(response: ResponseContext): Promise<AddMealPlanTemplate200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: AddMealPlanTemplate200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "AddMealPlanTemplate200Response", ""
            ) as AddMealPlanTemplate200Response;
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
            const body: AddMealPlanTemplate200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "AddMealPlanTemplate200Response", ""
            ) as AddMealPlanTemplate200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to addToMealPlan
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async addToMealPlan(response: ResponseContext): Promise<any > {
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
     * @params response Response returned by the server for a request to addToShoppingList
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async addToShoppingList(response: ResponseContext): Promise<GenerateShoppingList200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GenerateShoppingList200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GenerateShoppingList200Response", ""
            ) as GenerateShoppingList200Response;
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
            const body: GenerateShoppingList200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GenerateShoppingList200Response", ""
            ) as GenerateShoppingList200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to clearMealPlanDay
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async clearMealPlanDay(response: ResponseContext): Promise<any > {
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
     * @params response Response returned by the server for a request to connectUser
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async connectUser(response: ResponseContext): Promise<ConnectUser200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ConnectUser200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ConnectUser200Response", ""
            ) as ConnectUser200Response;
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
            const body: ConnectUser200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ConnectUser200Response", ""
            ) as ConnectUser200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to deleteFromMealPlan
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async deleteFromMealPlan(response: ResponseContext): Promise<any > {
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
     * @params response Response returned by the server for a request to deleteFromShoppingList
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async deleteFromShoppingList(response: ResponseContext): Promise<any > {
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
     * @params response Response returned by the server for a request to deleteMealPlanTemplate
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async deleteMealPlanTemplate(response: ResponseContext): Promise<any > {
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
     * @params response Response returned by the server for a request to generateMealPlan
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async generateMealPlan(response: ResponseContext): Promise<GenerateMealPlan200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GenerateMealPlan200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GenerateMealPlan200Response", ""
            ) as GenerateMealPlan200Response;
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
            const body: GenerateMealPlan200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GenerateMealPlan200Response", ""
            ) as GenerateMealPlan200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to generateShoppingList
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async generateShoppingList(response: ResponseContext): Promise<GenerateShoppingList200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GenerateShoppingList200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GenerateShoppingList200Response", ""
            ) as GenerateShoppingList200Response;
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
            const body: GenerateShoppingList200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GenerateShoppingList200Response", ""
            ) as GenerateShoppingList200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getMealPlanTemplate
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getMealPlanTemplate(response: ResponseContext): Promise<GetMealPlanTemplate200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetMealPlanTemplate200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetMealPlanTemplate200Response", ""
            ) as GetMealPlanTemplate200Response;
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
            const body: GetMealPlanTemplate200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetMealPlanTemplate200Response", ""
            ) as GetMealPlanTemplate200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getMealPlanTemplates
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getMealPlanTemplates(response: ResponseContext): Promise<GetMealPlanTemplates200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetMealPlanTemplates200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetMealPlanTemplates200Response", ""
            ) as GetMealPlanTemplates200Response;
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
            const body: GetMealPlanTemplates200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetMealPlanTemplates200Response", ""
            ) as GetMealPlanTemplates200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getMealPlanWeek
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getMealPlanWeek(response: ResponseContext): Promise<GetMealPlanWeek200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetMealPlanWeek200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetMealPlanWeek200Response", ""
            ) as GetMealPlanWeek200Response;
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
            const body: GetMealPlanWeek200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetMealPlanWeek200Response", ""
            ) as GetMealPlanWeek200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getShoppingList
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getShoppingList(response: ResponseContext): Promise<GetShoppingList200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetShoppingList200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetShoppingList200Response", ""
            ) as GetShoppingList200Response;
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
            const body: GetShoppingList200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetShoppingList200Response", ""
            ) as GetShoppingList200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

}
