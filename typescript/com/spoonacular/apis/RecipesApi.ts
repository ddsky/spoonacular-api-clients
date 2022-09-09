// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { AnalyzeARecipeSearchQuery200Response } from '..com/spoonacular/client/model/models/AnalyzeARecipeSearchQuery200Response';
import { AnalyzeRecipeInstructions200Response } from '..com/spoonacular/client/model/models/AnalyzeRecipeInstructions200Response';
import { AutocompleteRecipeSearch200ResponseInner } from '..com/spoonacular/client/model/models/AutocompleteRecipeSearch200ResponseInner';
import { ClassifyCuisine200Response } from '..com/spoonacular/client/model/models/ClassifyCuisine200Response';
import { ComputeGlycemicLoad200Response } from '..com/spoonacular/client/model/models/ComputeGlycemicLoad200Response';
import { ComputeGlycemicLoadRequest } from '..com/spoonacular/client/model/models/ComputeGlycemicLoadRequest';
import { ConvertAmounts200Response } from '..com/spoonacular/client/model/models/ConvertAmounts200Response';
import { CreateRecipeCard200Response } from '..com/spoonacular/client/model/models/CreateRecipeCard200Response';
import { GetAnalyzedRecipeInstructions200Response } from '..com/spoonacular/client/model/models/GetAnalyzedRecipeInstructions200Response';
import { GetRandomRecipes200Response } from '..com/spoonacular/client/model/models/GetRandomRecipes200Response';
import { GetRecipeEquipmentByID200Response } from '..com/spoonacular/client/model/models/GetRecipeEquipmentByID200Response';
import { GetRecipeInformation200Response } from '..com/spoonacular/client/model/models/GetRecipeInformation200Response';
import { GetRecipeInformationBulk200ResponseInner } from '..com/spoonacular/client/model/models/GetRecipeInformationBulk200ResponseInner';
import { GetRecipeIngredientsByID200Response } from '..com/spoonacular/client/model/models/GetRecipeIngredientsByID200Response';
import { GetRecipeNutritionWidgetByID200Response } from '..com/spoonacular/client/model/models/GetRecipeNutritionWidgetByID200Response';
import { GetRecipePriceBreakdownByID200Response } from '..com/spoonacular/client/model/models/GetRecipePriceBreakdownByID200Response';
import { GetRecipeTasteByID200Response } from '..com/spoonacular/client/model/models/GetRecipeTasteByID200Response';
import { GetSimilarRecipes200ResponseInner } from '..com/spoonacular/client/model/models/GetSimilarRecipes200ResponseInner';
import { GuessNutritionByDishName200Response } from '..com/spoonacular/client/model/models/GuessNutritionByDishName200Response';
import { ParseIngredients200ResponseInner } from '..com/spoonacular/client/model/models/ParseIngredients200ResponseInner';
import { QuickAnswer200Response } from '..com/spoonacular/client/model/models/QuickAnswer200Response';
import { SearchRecipes200Response } from '..com/spoonacular/client/model/models/SearchRecipes200Response';
import { SearchRecipesByIngredients200ResponseInner } from '..com/spoonacular/client/model/models/SearchRecipesByIngredients200ResponseInner';
import { SearchRecipesByNutrients200ResponseInner } from '..com/spoonacular/client/model/models/SearchRecipesByNutrients200ResponseInner';
import { SummarizeRecipe200Response } from '..com/spoonacular/client/model/models/SummarizeRecipe200Response';

/**
 * no description
 */
export class RecipesApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * Parse a recipe search query to find out its intention.
     * Analyze a Recipe Search Query
     * @param q The recipe search query.
     */
    public async analyzeARecipeSearchQuery(q: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'q' is not null or undefined
        if (q === null || q === undefined) {
            throw new RequiredError("RecipesApi", "analyzeARecipeSearchQuery", "q");
        }


        // Path Params
        const localVarPath = '/recipes/queries/analyze';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (q !== undefined) {
            requestContext.setQueryParam("q", ObjectSerializer.serialize(q, "string", ""));
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
     * This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.
     * Analyze Recipe Instructions
     * @param contentType The content type.
     */
    public async analyzeRecipeInstructions(contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;


        // Path Params
        const localVarPath = '/recipes/analyzeInstructions';

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
     * Autocomplete a partial input to suggest possible recipe names.
     * Autocomplete Recipe Search
     * @param query The (natural language) search query.
     * @param number The maximum number of items to return (between 1 and 100). Defaults to 10.
     */
    public async autocompleteRecipeSearch(query?: string, number?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;



        // Path Params
        const localVarPath = '/recipes/autocomplete';

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
     * Classify the recipe's cuisine.
     * Classify Cuisine
     * @param contentType The content type.
     */
    public async classifyCuisine(contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;


        // Path Params
        const localVarPath = '/recipes/cuisine';

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
     * Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.
     * Compute Glycemic Load
     * @param computeGlycemicLoadRequest 
     * @param language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     */
    public async computeGlycemicLoad(computeGlycemicLoadRequest: ComputeGlycemicLoadRequest, language?: 'en' | 'de', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'computeGlycemicLoadRequest' is not null or undefined
        if (computeGlycemicLoadRequest === null || computeGlycemicLoadRequest === undefined) {
            throw new RequiredError("RecipesApi", "computeGlycemicLoad", "computeGlycemicLoadRequest");
        }



        // Path Params
        const localVarPath = '/food/ingredients/glycemicLoad';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (language !== undefined) {
            requestContext.setQueryParam("language", ObjectSerializer.serialize(language, "'en' | 'de'", ""));
        }


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(computeGlycemicLoadRequest, "ComputeGlycemicLoadRequest", ""),
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
     * Convert amounts like \"2 cups of flour to grams\".
     * Convert Amounts
     * @param ingredientName The ingredient which you want to convert.
     * @param sourceAmount The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;.
     * @param sourceUnit The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot;
     * @param targetUnit The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot;
     */
    public async convertAmounts(ingredientName: string, sourceAmount: number, sourceUnit: string, targetUnit: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'ingredientName' is not null or undefined
        if (ingredientName === null || ingredientName === undefined) {
            throw new RequiredError("RecipesApi", "convertAmounts", "ingredientName");
        }


        // verify required parameter 'sourceAmount' is not null or undefined
        if (sourceAmount === null || sourceAmount === undefined) {
            throw new RequiredError("RecipesApi", "convertAmounts", "sourceAmount");
        }


        // verify required parameter 'sourceUnit' is not null or undefined
        if (sourceUnit === null || sourceUnit === undefined) {
            throw new RequiredError("RecipesApi", "convertAmounts", "sourceUnit");
        }


        // verify required parameter 'targetUnit' is not null or undefined
        if (targetUnit === null || targetUnit === undefined) {
            throw new RequiredError("RecipesApi", "convertAmounts", "targetUnit");
        }


        // Path Params
        const localVarPath = '/recipes/convert';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (ingredientName !== undefined) {
            requestContext.setQueryParam("ingredientName", ObjectSerializer.serialize(ingredientName, "string", ""));
        }

        // Query Params
        if (sourceAmount !== undefined) {
            requestContext.setQueryParam("sourceAmount", ObjectSerializer.serialize(sourceAmount, "number", ""));
        }

        // Query Params
        if (sourceUnit !== undefined) {
            requestContext.setQueryParam("sourceUnit", ObjectSerializer.serialize(sourceUnit, "string", ""));
        }

        // Query Params
        if (targetUnit !== undefined) {
            requestContext.setQueryParam("targetUnit", ObjectSerializer.serialize(targetUnit, "string", ""));
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
     * Generate a recipe card for a recipe.
     * Create Recipe Card
     * @param contentType The content type.
     */
    public async createRecipeCard(contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;


        // Path Params
        const localVarPath = '/recipes/visualizeRecipe';

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
     * Visualize a recipe's equipment list as an image.
     * Equipment by ID Image
     * @param id The recipe id.
     */
    public async equipmentByIDImage(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "equipmentByIDImage", "id");
        }


        // Path Params
        const localVarPath = '/recipes/{id}/equipmentWidget.png'
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
     * This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.
     * Extract Recipe from Website
     * @param url The URL of the recipe page.
     * @param forceExtraction If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.
     * @param analyze If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.
     * @param includeNutrition Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
     * @param includeTaste Whether taste data should be added to correctly parsed ingredients.
     */
    public async extractRecipeFromWebsite(url: string, forceExtraction?: boolean, analyze?: boolean, includeNutrition?: boolean, includeTaste?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'url' is not null or undefined
        if (url === null || url === undefined) {
            throw new RequiredError("RecipesApi", "extractRecipeFromWebsite", "url");
        }






        // Path Params
        const localVarPath = '/recipes/extract';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (url !== undefined) {
            requestContext.setQueryParam("url", ObjectSerializer.serialize(url, "string", ""));
        }

        // Query Params
        if (forceExtraction !== undefined) {
            requestContext.setQueryParam("forceExtraction", ObjectSerializer.serialize(forceExtraction, "boolean", ""));
        }

        // Query Params
        if (analyze !== undefined) {
            requestContext.setQueryParam("analyze", ObjectSerializer.serialize(analyze, "boolean", ""));
        }

        // Query Params
        if (includeNutrition !== undefined) {
            requestContext.setQueryParam("includeNutrition", ObjectSerializer.serialize(includeNutrition, "boolean", ""));
        }

        // Query Params
        if (includeTaste !== undefined) {
            requestContext.setQueryParam("includeTaste", ObjectSerializer.serialize(includeTaste, "boolean", ""));
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
     * Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.
     * Get Analyzed Recipe Instructions
     * @param id The item&#39;s id.
     * @param stepBreakdown Whether to break down the recipe steps even more.
     */
    public async getAnalyzedRecipeInstructions(id: number, stepBreakdown?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "getAnalyzedRecipeInstructions", "id");
        }



        // Path Params
        const localVarPath = '/recipes/{id}/analyzedInstructions'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (stepBreakdown !== undefined) {
            requestContext.setQueryParam("stepBreakdown", ObjectSerializer.serialize(stepBreakdown, "boolean", ""));
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
     * Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.
     * Get Random Recipes
     * @param limitLicense Whether the recipes should have an open license that allows display with proper attribution.
     * @param tags The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
     * @param number The maximum number of items to return (between 1 and 100). Defaults to 10.
     */
    public async getRandomRecipes(limitLicense?: boolean, tags?: string, number?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;




        // Path Params
        const localVarPath = '/recipes/random';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (limitLicense !== undefined) {
            requestContext.setQueryParam("limitLicense", ObjectSerializer.serialize(limitLicense, "boolean", ""));
        }

        // Query Params
        if (tags !== undefined) {
            requestContext.setQueryParam("tags", ObjectSerializer.serialize(tags, "string", ""));
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
     * Get a recipe's equipment list.
     * Equipment by ID
     * @param id The item&#39;s id.
     */
    public async getRecipeEquipmentByID(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "getRecipeEquipmentByID", "id");
        }


        // Path Params
        const localVarPath = '/recipes/{id}/equipmentWidget.json'
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
     * Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.
     * Get Recipe Information
     * @param id The item&#39;s id.
     * @param includeNutrition Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
     */
    public async getRecipeInformation(id: number, includeNutrition?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "getRecipeInformation", "id");
        }



        // Path Params
        const localVarPath = '/recipes/{id}/information'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (includeNutrition !== undefined) {
            requestContext.setQueryParam("includeNutrition", ObjectSerializer.serialize(includeNutrition, "boolean", ""));
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
     * Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.
     * Get Recipe Information Bulk
     * @param ids A comma-separated list of recipe ids.
     * @param includeNutrition Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
     */
    public async getRecipeInformationBulk(ids: string, includeNutrition?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'ids' is not null or undefined
        if (ids === null || ids === undefined) {
            throw new RequiredError("RecipesApi", "getRecipeInformationBulk", "ids");
        }



        // Path Params
        const localVarPath = '/recipes/informationBulk';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (ids !== undefined) {
            requestContext.setQueryParam("ids", ObjectSerializer.serialize(ids, "string", ""));
        }

        // Query Params
        if (includeNutrition !== undefined) {
            requestContext.setQueryParam("includeNutrition", ObjectSerializer.serialize(includeNutrition, "boolean", ""));
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
     * Get a recipe's ingredient list.
     * Ingredients by ID
     * @param id The item&#39;s id.
     */
    public async getRecipeIngredientsByID(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "getRecipeIngredientsByID", "id");
        }


        // Path Params
        const localVarPath = '/recipes/{id}/ingredientWidget.json'
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
     * Get a recipe's nutrition data.
     * Nutrition by ID
     * @param id The item&#39;s id.
     */
    public async getRecipeNutritionWidgetByID(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "getRecipeNutritionWidgetByID", "id");
        }


        // Path Params
        const localVarPath = '/recipes/{id}/nutritionWidget.json'
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
     * Get a recipe's price breakdown data.
     * Price Breakdown by ID
     * @param id The item&#39;s id.
     */
    public async getRecipePriceBreakdownByID(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "getRecipePriceBreakdownByID", "id");
        }


        // Path Params
        const localVarPath = '/recipes/{id}/priceBreakdownWidget.json'
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
     * Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
     * Taste by ID
     * @param id The item&#39;s id.
     * @param normalize Normalize to the strongest taste.
     */
    public async getRecipeTasteByID(id: number, normalize?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "getRecipeTasteByID", "id");
        }



        // Path Params
        const localVarPath = '/recipes/{id}/tasteWidget.json'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (normalize !== undefined) {
            requestContext.setQueryParam("normalize", ObjectSerializer.serialize(normalize, "boolean", ""));
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
     * Find recipes which are similar to the given one.
     * Get Similar Recipes
     * @param id The item&#39;s id.
     * @param number The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @param limitLicense Whether the recipes should have an open license that allows display with proper attribution.
     */
    public async getSimilarRecipes(id: number, number?: number, limitLicense?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "getSimilarRecipes", "id");
        }




        // Path Params
        const localVarPath = '/recipes/{id}/similar'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (number !== undefined) {
            requestContext.setQueryParam("number", ObjectSerializer.serialize(number, "number", ""));
        }

        // Query Params
        if (limitLicense !== undefined) {
            requestContext.setQueryParam("limitLicense", ObjectSerializer.serialize(limitLicense, "boolean", ""));
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
     * Estimate the macronutrients of a dish based on its title.
     * Guess Nutrition by Dish Name
     * @param title The title of the dish.
     */
    public async guessNutritionByDishName(title: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'title' is not null or undefined
        if (title === null || title === undefined) {
            throw new RequiredError("RecipesApi", "guessNutritionByDishName", "title");
        }


        // Path Params
        const localVarPath = '/recipes/guessNutrition';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (title !== undefined) {
            requestContext.setQueryParam("title", ObjectSerializer.serialize(title, "string", ""));
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
     * Visualize a recipe's ingredient list.
     * Ingredients by ID Image
     * @param id The recipe id.
     * @param measure Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.
     */
    public async ingredientsByIDImage(id: number, measure?: 'us' | 'metric', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "ingredientsByIDImage", "id");
        }



        // Path Params
        const localVarPath = '/recipes/{id}/ingredientWidget.png'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (measure !== undefined) {
            requestContext.setQueryParam("measure", ObjectSerializer.serialize(measure, "'us' | 'metric'", ""));
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
     * Extract an ingredient from plain text.
     * Parse Ingredients
     * @param contentType The content type.
     * @param language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     */
    public async parseIngredients(contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', language?: 'en' | 'de', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;



        // Path Params
        const localVarPath = '/recipes/parseIngredients';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (language !== undefined) {
            requestContext.setQueryParam("language", ObjectSerializer.serialize(language, "'en' | 'de'", ""));
        }

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
     * Visualize a recipe's price breakdown.
     * Price Breakdown by ID Image
     * @param id The recipe id.
     */
    public async priceBreakdownByIDImage(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "priceBreakdownByIDImage", "id");
        }


        // Path Params
        const localVarPath = '/recipes/{id}/priceBreakdownWidget.png'
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
     * Answer a nutrition related natural language question.
     * Quick Answer
     * @param q The nutrition related question.
     */
    public async quickAnswer(q: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'q' is not null or undefined
        if (q === null || q === undefined) {
            throw new RequiredError("RecipesApi", "quickAnswer", "q");
        }


        // Path Params
        const localVarPath = '/recipes/quickAnswer';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (q !== undefined) {
            requestContext.setQueryParam("q", ObjectSerializer.serialize(q, "string", ""));
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
     * Visualize a recipe's nutritional information as an image.
     * Recipe Nutrition by ID Image
     * @param id The recipe id.
     */
    public async recipeNutritionByIDImage(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "recipeNutritionByIDImage", "id");
        }


        // Path Params
        const localVarPath = '/recipes/{id}/nutritionWidget.png'
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
     * Get a recipe's nutrition label as an image.
     * Recipe Nutrition Label Image
     * @param id The recipe id.
     * @param showOptionalNutrients Whether to show optional nutrients.
     * @param showZeroValues Whether to show zero values.
     * @param showIngredients Whether to show a list of ingredients.
     */
    public async recipeNutritionLabelImage(id: number, showOptionalNutrients?: boolean, showZeroValues?: boolean, showIngredients?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "recipeNutritionLabelImage", "id");
        }





        // Path Params
        const localVarPath = '/recipes/{id}/nutritionLabel.png'
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
     * Get a recipe's nutrition label as an HTML widget.
     * Recipe Nutrition Label Widget
     * @param id The recipe id.
     * @param defaultCss Whether the default CSS should be added to the response.
     * @param showOptionalNutrients Whether to show optional nutrients.
     * @param showZeroValues Whether to show zero values.
     * @param showIngredients Whether to show a list of ingredients.
     */
    public async recipeNutritionLabelWidget(id: number, defaultCss?: boolean, showOptionalNutrients?: boolean, showZeroValues?: boolean, showIngredients?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "recipeNutritionLabelWidget", "id");
        }






        // Path Params
        const localVarPath = '/recipes/{id}/nutritionLabel'
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
     * Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
     * Recipe Taste by ID Image
     * @param id The recipe id.
     * @param normalize Normalize to the strongest taste.
     * @param rgb Red, green, blue values for the chart color.
     */
    public async recipeTasteByIDImage(id: number, normalize?: boolean, rgb?: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "recipeTasteByIDImage", "id");
        }




        // Path Params
        const localVarPath = '/recipes/{id}/tasteWidget.png'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (normalize !== undefined) {
            requestContext.setQueryParam("normalize", ObjectSerializer.serialize(normalize, "boolean", ""));
        }

        // Query Params
        if (rgb !== undefined) {
            requestContext.setQueryParam("rgb", ObjectSerializer.serialize(rgb, "string", ""));
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
     * Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.
     * Search Recipes
     * @param query The (natural language) search query.
     * @param cuisine The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines.
     * @param excludeCuisine The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines.
     * @param diet The diet for which the recipes must be suitable. See a full list of supported diets.
     * @param intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
     * @param equipment The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;.
     * @param includeIngredients A comma-separated list of ingredients that should/must be used in the recipes.
     * @param excludeIngredients A comma-separated list of ingredients or ingredient types that the recipes must not contain.
     * @param type The type of recipe. See a full list of supported meal types.
     * @param instructionsRequired Whether the recipes must have instructions.
     * @param fillIngredients Add information about the ingredients and whether they are used or missing in relation to the query.
     * @param addRecipeInformation If set to true, you get more information about the recipes returned.
     * @param addRecipeNutrition If set to true, you get nutritional information about each recipes returned.
     * @param author The username of the recipe author.
     * @param tags The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
     * @param recipeBoxId The id of the recipe box to which the search should be limited to.
     * @param titleMatch Enter text that must be found in the title of the recipes.
     * @param maxReadyTime The maximum time in minutes it should take to prepare and cook the recipe.
     * @param ignorePantry Whether to ignore typical pantry items, such as water, salt, flour, etc.
     * @param sort The strategy to sort recipes by. See a full list of supported sorting options.
     * @param sortDirection The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending).
     * @param minCarbs The minimum amount of carbohydrates in grams the recipe must have.
     * @param maxCarbs The maximum amount of carbohydrates in grams the recipe can have.
     * @param minProtein The minimum amount of protein in grams the recipe must have.
     * @param maxProtein The maximum amount of protein in grams the recipe can have.
     * @param minCalories The minimum amount of calories the recipe must have.
     * @param maxCalories The maximum amount of calories the recipe can have.
     * @param minFat The minimum amount of fat in grams the recipe must have.
     * @param maxFat The maximum amount of fat in grams the recipe can have.
     * @param minAlcohol The minimum amount of alcohol in grams the recipe must have.
     * @param maxAlcohol The maximum amount of alcohol in grams the recipe can have.
     * @param minCaffeine The minimum amount of caffeine in milligrams the recipe must have.
     * @param maxCaffeine The maximum amount of caffeine in milligrams the recipe can have.
     * @param minCopper The minimum amount of copper in milligrams the recipe must have.
     * @param maxCopper The maximum amount of copper in milligrams the recipe can have.
     * @param minCalcium The minimum amount of calcium in milligrams the recipe must have.
     * @param maxCalcium The maximum amount of calcium in milligrams the recipe can have.
     * @param minCholine The minimum amount of choline in milligrams the recipe must have.
     * @param maxCholine The maximum amount of choline in milligrams the recipe can have.
     * @param minCholesterol The minimum amount of cholesterol in milligrams the recipe must have.
     * @param maxCholesterol The maximum amount of cholesterol in milligrams the recipe can have.
     * @param minFluoride The minimum amount of fluoride in milligrams the recipe must have.
     * @param maxFluoride The maximum amount of fluoride in milligrams the recipe can have.
     * @param minSaturatedFat The minimum amount of saturated fat in grams the recipe must have.
     * @param maxSaturatedFat The maximum amount of saturated fat in grams the recipe can have.
     * @param minVitaminA The minimum amount of Vitamin A in IU the recipe must have.
     * @param maxVitaminA The maximum amount of Vitamin A in IU the recipe can have.
     * @param minVitaminC The minimum amount of Vitamin C milligrams the recipe must have.
     * @param maxVitaminC The maximum amount of Vitamin C in milligrams the recipe can have.
     * @param minVitaminD The minimum amount of Vitamin D in micrograms the recipe must have.
     * @param maxVitaminD The maximum amount of Vitamin D in micrograms the recipe can have.
     * @param minVitaminE The minimum amount of Vitamin E in milligrams the recipe must have.
     * @param maxVitaminE The maximum amount of Vitamin E in milligrams the recipe can have.
     * @param minVitaminK The minimum amount of Vitamin K in micrograms the recipe must have.
     * @param maxVitaminK The maximum amount of Vitamin K in micrograms the recipe can have.
     * @param minVitaminB1 The minimum amount of Vitamin B1 in milligrams the recipe must have.
     * @param maxVitaminB1 The maximum amount of Vitamin B1 in milligrams the recipe can have.
     * @param minVitaminB2 The minimum amount of Vitamin B2 in milligrams the recipe must have.
     * @param maxVitaminB2 The maximum amount of Vitamin B2 in milligrams the recipe can have.
     * @param minVitaminB5 The minimum amount of Vitamin B5 in milligrams the recipe must have.
     * @param maxVitaminB5 The maximum amount of Vitamin B5 in milligrams the recipe can have.
     * @param minVitaminB3 The minimum amount of Vitamin B3 in milligrams the recipe must have.
     * @param maxVitaminB3 The maximum amount of Vitamin B3 in milligrams the recipe can have.
     * @param minVitaminB6 The minimum amount of Vitamin B6 in milligrams the recipe must have.
     * @param maxVitaminB6 The maximum amount of Vitamin B6 in milligrams the recipe can have.
     * @param minVitaminB12 The minimum amount of Vitamin B12 in micrograms the recipe must have.
     * @param maxVitaminB12 The maximum amount of Vitamin B12 in micrograms the recipe can have.
     * @param minFiber The minimum amount of fiber in grams the recipe must have.
     * @param maxFiber The maximum amount of fiber in grams the recipe can have.
     * @param minFolate The minimum amount of folate in micrograms the recipe must have.
     * @param maxFolate The maximum amount of folate in micrograms the recipe can have.
     * @param minFolicAcid The minimum amount of folic acid in micrograms the recipe must have.
     * @param maxFolicAcid The maximum amount of folic acid in micrograms the recipe can have.
     * @param minIodine The minimum amount of iodine in micrograms the recipe must have.
     * @param maxIodine The maximum amount of iodine in micrograms the recipe can have.
     * @param minIron The minimum amount of iron in milligrams the recipe must have.
     * @param maxIron The maximum amount of iron in milligrams the recipe can have.
     * @param minMagnesium The minimum amount of magnesium in milligrams the recipe must have.
     * @param maxMagnesium The maximum amount of magnesium in milligrams the recipe can have.
     * @param minManganese The minimum amount of manganese in milligrams the recipe must have.
     * @param maxManganese The maximum amount of manganese in milligrams the recipe can have.
     * @param minPhosphorus The minimum amount of phosphorus in milligrams the recipe must have.
     * @param maxPhosphorus The maximum amount of phosphorus in milligrams the recipe can have.
     * @param minPotassium The minimum amount of potassium in milligrams the recipe must have.
     * @param maxPotassium The maximum amount of potassium in milligrams the recipe can have.
     * @param minSelenium The minimum amount of selenium in micrograms the recipe must have.
     * @param maxSelenium The maximum amount of selenium in micrograms the recipe can have.
     * @param minSodium The minimum amount of sodium in milligrams the recipe must have.
     * @param maxSodium The maximum amount of sodium in milligrams the recipe can have.
     * @param minSugar The minimum amount of sugar in grams the recipe must have.
     * @param maxSugar The maximum amount of sugar in grams the recipe can have.
     * @param minZinc The minimum amount of zinc in milligrams the recipe must have.
     * @param maxZinc The maximum amount of zinc in milligrams the recipe can have.
     * @param offset The number of results to skip (between 0 and 900).
     * @param number The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @param limitLicense Whether the recipes should have an open license that allows display with proper attribution.
     */
    public async searchRecipes(query?: string, cuisine?: string, excludeCuisine?: string, diet?: string, intolerances?: string, equipment?: string, includeIngredients?: string, excludeIngredients?: string, type?: string, instructionsRequired?: boolean, fillIngredients?: boolean, addRecipeInformation?: boolean, addRecipeNutrition?: boolean, author?: string, tags?: string, recipeBoxId?: number, titleMatch?: string, maxReadyTime?: number, ignorePantry?: boolean, sort?: string, sortDirection?: string, minCarbs?: number, maxCarbs?: number, minProtein?: number, maxProtein?: number, minCalories?: number, maxCalories?: number, minFat?: number, maxFat?: number, minAlcohol?: number, maxAlcohol?: number, minCaffeine?: number, maxCaffeine?: number, minCopper?: number, maxCopper?: number, minCalcium?: number, maxCalcium?: number, minCholine?: number, maxCholine?: number, minCholesterol?: number, maxCholesterol?: number, minFluoride?: number, maxFluoride?: number, minSaturatedFat?: number, maxSaturatedFat?: number, minVitaminA?: number, maxVitaminA?: number, minVitaminC?: number, maxVitaminC?: number, minVitaminD?: number, maxVitaminD?: number, minVitaminE?: number, maxVitaminE?: number, minVitaminK?: number, maxVitaminK?: number, minVitaminB1?: number, maxVitaminB1?: number, minVitaminB2?: number, maxVitaminB2?: number, minVitaminB5?: number, maxVitaminB5?: number, minVitaminB3?: number, maxVitaminB3?: number, minVitaminB6?: number, maxVitaminB6?: number, minVitaminB12?: number, maxVitaminB12?: number, minFiber?: number, maxFiber?: number, minFolate?: number, maxFolate?: number, minFolicAcid?: number, maxFolicAcid?: number, minIodine?: number, maxIodine?: number, minIron?: number, maxIron?: number, minMagnesium?: number, maxMagnesium?: number, minManganese?: number, maxManganese?: number, minPhosphorus?: number, maxPhosphorus?: number, minPotassium?: number, maxPotassium?: number, minSelenium?: number, maxSelenium?: number, minSodium?: number, maxSodium?: number, minSugar?: number, maxSugar?: number, minZinc?: number, maxZinc?: number, offset?: number, number?: number, limitLicense?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

































































































        // Path Params
        const localVarPath = '/recipes/complexSearch';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (query !== undefined) {
            requestContext.setQueryParam("query", ObjectSerializer.serialize(query, "string", ""));
        }

        // Query Params
        if (cuisine !== undefined) {
            requestContext.setQueryParam("cuisine", ObjectSerializer.serialize(cuisine, "string", ""));
        }

        // Query Params
        if (excludeCuisine !== undefined) {
            requestContext.setQueryParam("excludeCuisine", ObjectSerializer.serialize(excludeCuisine, "string", ""));
        }

        // Query Params
        if (diet !== undefined) {
            requestContext.setQueryParam("diet", ObjectSerializer.serialize(diet, "string", ""));
        }

        // Query Params
        if (intolerances !== undefined) {
            requestContext.setQueryParam("intolerances", ObjectSerializer.serialize(intolerances, "string", ""));
        }

        // Query Params
        if (equipment !== undefined) {
            requestContext.setQueryParam("equipment", ObjectSerializer.serialize(equipment, "string", ""));
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
        if (type !== undefined) {
            requestContext.setQueryParam("type", ObjectSerializer.serialize(type, "string", ""));
        }

        // Query Params
        if (instructionsRequired !== undefined) {
            requestContext.setQueryParam("instructionsRequired", ObjectSerializer.serialize(instructionsRequired, "boolean", ""));
        }

        // Query Params
        if (fillIngredients !== undefined) {
            requestContext.setQueryParam("fillIngredients", ObjectSerializer.serialize(fillIngredients, "boolean", ""));
        }

        // Query Params
        if (addRecipeInformation !== undefined) {
            requestContext.setQueryParam("addRecipeInformation", ObjectSerializer.serialize(addRecipeInformation, "boolean", ""));
        }

        // Query Params
        if (addRecipeNutrition !== undefined) {
            requestContext.setQueryParam("addRecipeNutrition", ObjectSerializer.serialize(addRecipeNutrition, "boolean", ""));
        }

        // Query Params
        if (author !== undefined) {
            requestContext.setQueryParam("author", ObjectSerializer.serialize(author, "string", ""));
        }

        // Query Params
        if (tags !== undefined) {
            requestContext.setQueryParam("tags", ObjectSerializer.serialize(tags, "string", ""));
        }

        // Query Params
        if (recipeBoxId !== undefined) {
            requestContext.setQueryParam("recipeBoxId", ObjectSerializer.serialize(recipeBoxId, "number", ""));
        }

        // Query Params
        if (titleMatch !== undefined) {
            requestContext.setQueryParam("titleMatch", ObjectSerializer.serialize(titleMatch, "string", ""));
        }

        // Query Params
        if (maxReadyTime !== undefined) {
            requestContext.setQueryParam("maxReadyTime", ObjectSerializer.serialize(maxReadyTime, "number", ""));
        }

        // Query Params
        if (ignorePantry !== undefined) {
            requestContext.setQueryParam("ignorePantry", ObjectSerializer.serialize(ignorePantry, "boolean", ""));
        }

        // Query Params
        if (sort !== undefined) {
            requestContext.setQueryParam("sort", ObjectSerializer.serialize(sort, "string", ""));
        }

        // Query Params
        if (sortDirection !== undefined) {
            requestContext.setQueryParam("sortDirection", ObjectSerializer.serialize(sortDirection, "string", ""));
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
        if (minCalories !== undefined) {
            requestContext.setQueryParam("minCalories", ObjectSerializer.serialize(minCalories, "number", ""));
        }

        // Query Params
        if (maxCalories !== undefined) {
            requestContext.setQueryParam("maxCalories", ObjectSerializer.serialize(maxCalories, "number", ""));
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
        if (minAlcohol !== undefined) {
            requestContext.setQueryParam("minAlcohol", ObjectSerializer.serialize(minAlcohol, "number", ""));
        }

        // Query Params
        if (maxAlcohol !== undefined) {
            requestContext.setQueryParam("maxAlcohol", ObjectSerializer.serialize(maxAlcohol, "number", ""));
        }

        // Query Params
        if (minCaffeine !== undefined) {
            requestContext.setQueryParam("minCaffeine", ObjectSerializer.serialize(minCaffeine, "number", ""));
        }

        // Query Params
        if (maxCaffeine !== undefined) {
            requestContext.setQueryParam("maxCaffeine", ObjectSerializer.serialize(maxCaffeine, "number", ""));
        }

        // Query Params
        if (minCopper !== undefined) {
            requestContext.setQueryParam("minCopper", ObjectSerializer.serialize(minCopper, "number", ""));
        }

        // Query Params
        if (maxCopper !== undefined) {
            requestContext.setQueryParam("maxCopper", ObjectSerializer.serialize(maxCopper, "number", ""));
        }

        // Query Params
        if (minCalcium !== undefined) {
            requestContext.setQueryParam("minCalcium", ObjectSerializer.serialize(minCalcium, "number", ""));
        }

        // Query Params
        if (maxCalcium !== undefined) {
            requestContext.setQueryParam("maxCalcium", ObjectSerializer.serialize(maxCalcium, "number", ""));
        }

        // Query Params
        if (minCholine !== undefined) {
            requestContext.setQueryParam("minCholine", ObjectSerializer.serialize(minCholine, "number", ""));
        }

        // Query Params
        if (maxCholine !== undefined) {
            requestContext.setQueryParam("maxCholine", ObjectSerializer.serialize(maxCholine, "number", ""));
        }

        // Query Params
        if (minCholesterol !== undefined) {
            requestContext.setQueryParam("minCholesterol", ObjectSerializer.serialize(minCholesterol, "number", ""));
        }

        // Query Params
        if (maxCholesterol !== undefined) {
            requestContext.setQueryParam("maxCholesterol", ObjectSerializer.serialize(maxCholesterol, "number", ""));
        }

        // Query Params
        if (minFluoride !== undefined) {
            requestContext.setQueryParam("minFluoride", ObjectSerializer.serialize(minFluoride, "number", ""));
        }

        // Query Params
        if (maxFluoride !== undefined) {
            requestContext.setQueryParam("maxFluoride", ObjectSerializer.serialize(maxFluoride, "number", ""));
        }

        // Query Params
        if (minSaturatedFat !== undefined) {
            requestContext.setQueryParam("minSaturatedFat", ObjectSerializer.serialize(minSaturatedFat, "number", ""));
        }

        // Query Params
        if (maxSaturatedFat !== undefined) {
            requestContext.setQueryParam("maxSaturatedFat", ObjectSerializer.serialize(maxSaturatedFat, "number", ""));
        }

        // Query Params
        if (minVitaminA !== undefined) {
            requestContext.setQueryParam("minVitaminA", ObjectSerializer.serialize(minVitaminA, "number", ""));
        }

        // Query Params
        if (maxVitaminA !== undefined) {
            requestContext.setQueryParam("maxVitaminA", ObjectSerializer.serialize(maxVitaminA, "number", ""));
        }

        // Query Params
        if (minVitaminC !== undefined) {
            requestContext.setQueryParam("minVitaminC", ObjectSerializer.serialize(minVitaminC, "number", ""));
        }

        // Query Params
        if (maxVitaminC !== undefined) {
            requestContext.setQueryParam("maxVitaminC", ObjectSerializer.serialize(maxVitaminC, "number", ""));
        }

        // Query Params
        if (minVitaminD !== undefined) {
            requestContext.setQueryParam("minVitaminD", ObjectSerializer.serialize(minVitaminD, "number", ""));
        }

        // Query Params
        if (maxVitaminD !== undefined) {
            requestContext.setQueryParam("maxVitaminD", ObjectSerializer.serialize(maxVitaminD, "number", ""));
        }

        // Query Params
        if (minVitaminE !== undefined) {
            requestContext.setQueryParam("minVitaminE", ObjectSerializer.serialize(minVitaminE, "number", ""));
        }

        // Query Params
        if (maxVitaminE !== undefined) {
            requestContext.setQueryParam("maxVitaminE", ObjectSerializer.serialize(maxVitaminE, "number", ""));
        }

        // Query Params
        if (minVitaminK !== undefined) {
            requestContext.setQueryParam("minVitaminK", ObjectSerializer.serialize(minVitaminK, "number", ""));
        }

        // Query Params
        if (maxVitaminK !== undefined) {
            requestContext.setQueryParam("maxVitaminK", ObjectSerializer.serialize(maxVitaminK, "number", ""));
        }

        // Query Params
        if (minVitaminB1 !== undefined) {
            requestContext.setQueryParam("minVitaminB1", ObjectSerializer.serialize(minVitaminB1, "number", ""));
        }

        // Query Params
        if (maxVitaminB1 !== undefined) {
            requestContext.setQueryParam("maxVitaminB1", ObjectSerializer.serialize(maxVitaminB1, "number", ""));
        }

        // Query Params
        if (minVitaminB2 !== undefined) {
            requestContext.setQueryParam("minVitaminB2", ObjectSerializer.serialize(minVitaminB2, "number", ""));
        }

        // Query Params
        if (maxVitaminB2 !== undefined) {
            requestContext.setQueryParam("maxVitaminB2", ObjectSerializer.serialize(maxVitaminB2, "number", ""));
        }

        // Query Params
        if (minVitaminB5 !== undefined) {
            requestContext.setQueryParam("minVitaminB5", ObjectSerializer.serialize(minVitaminB5, "number", ""));
        }

        // Query Params
        if (maxVitaminB5 !== undefined) {
            requestContext.setQueryParam("maxVitaminB5", ObjectSerializer.serialize(maxVitaminB5, "number", ""));
        }

        // Query Params
        if (minVitaminB3 !== undefined) {
            requestContext.setQueryParam("minVitaminB3", ObjectSerializer.serialize(minVitaminB3, "number", ""));
        }

        // Query Params
        if (maxVitaminB3 !== undefined) {
            requestContext.setQueryParam("maxVitaminB3", ObjectSerializer.serialize(maxVitaminB3, "number", ""));
        }

        // Query Params
        if (minVitaminB6 !== undefined) {
            requestContext.setQueryParam("minVitaminB6", ObjectSerializer.serialize(minVitaminB6, "number", ""));
        }

        // Query Params
        if (maxVitaminB6 !== undefined) {
            requestContext.setQueryParam("maxVitaminB6", ObjectSerializer.serialize(maxVitaminB6, "number", ""));
        }

        // Query Params
        if (minVitaminB12 !== undefined) {
            requestContext.setQueryParam("minVitaminB12", ObjectSerializer.serialize(minVitaminB12, "number", ""));
        }

        // Query Params
        if (maxVitaminB12 !== undefined) {
            requestContext.setQueryParam("maxVitaminB12", ObjectSerializer.serialize(maxVitaminB12, "number", ""));
        }

        // Query Params
        if (minFiber !== undefined) {
            requestContext.setQueryParam("minFiber", ObjectSerializer.serialize(minFiber, "number", ""));
        }

        // Query Params
        if (maxFiber !== undefined) {
            requestContext.setQueryParam("maxFiber", ObjectSerializer.serialize(maxFiber, "number", ""));
        }

        // Query Params
        if (minFolate !== undefined) {
            requestContext.setQueryParam("minFolate", ObjectSerializer.serialize(minFolate, "number", ""));
        }

        // Query Params
        if (maxFolate !== undefined) {
            requestContext.setQueryParam("maxFolate", ObjectSerializer.serialize(maxFolate, "number", ""));
        }

        // Query Params
        if (minFolicAcid !== undefined) {
            requestContext.setQueryParam("minFolicAcid", ObjectSerializer.serialize(minFolicAcid, "number", ""));
        }

        // Query Params
        if (maxFolicAcid !== undefined) {
            requestContext.setQueryParam("maxFolicAcid", ObjectSerializer.serialize(maxFolicAcid, "number", ""));
        }

        // Query Params
        if (minIodine !== undefined) {
            requestContext.setQueryParam("minIodine", ObjectSerializer.serialize(minIodine, "number", ""));
        }

        // Query Params
        if (maxIodine !== undefined) {
            requestContext.setQueryParam("maxIodine", ObjectSerializer.serialize(maxIodine, "number", ""));
        }

        // Query Params
        if (minIron !== undefined) {
            requestContext.setQueryParam("minIron", ObjectSerializer.serialize(minIron, "number", ""));
        }

        // Query Params
        if (maxIron !== undefined) {
            requestContext.setQueryParam("maxIron", ObjectSerializer.serialize(maxIron, "number", ""));
        }

        // Query Params
        if (minMagnesium !== undefined) {
            requestContext.setQueryParam("minMagnesium", ObjectSerializer.serialize(minMagnesium, "number", ""));
        }

        // Query Params
        if (maxMagnesium !== undefined) {
            requestContext.setQueryParam("maxMagnesium", ObjectSerializer.serialize(maxMagnesium, "number", ""));
        }

        // Query Params
        if (minManganese !== undefined) {
            requestContext.setQueryParam("minManganese", ObjectSerializer.serialize(minManganese, "number", ""));
        }

        // Query Params
        if (maxManganese !== undefined) {
            requestContext.setQueryParam("maxManganese", ObjectSerializer.serialize(maxManganese, "number", ""));
        }

        // Query Params
        if (minPhosphorus !== undefined) {
            requestContext.setQueryParam("minPhosphorus", ObjectSerializer.serialize(minPhosphorus, "number", ""));
        }

        // Query Params
        if (maxPhosphorus !== undefined) {
            requestContext.setQueryParam("maxPhosphorus", ObjectSerializer.serialize(maxPhosphorus, "number", ""));
        }

        // Query Params
        if (minPotassium !== undefined) {
            requestContext.setQueryParam("minPotassium", ObjectSerializer.serialize(minPotassium, "number", ""));
        }

        // Query Params
        if (maxPotassium !== undefined) {
            requestContext.setQueryParam("maxPotassium", ObjectSerializer.serialize(maxPotassium, "number", ""));
        }

        // Query Params
        if (minSelenium !== undefined) {
            requestContext.setQueryParam("minSelenium", ObjectSerializer.serialize(minSelenium, "number", ""));
        }

        // Query Params
        if (maxSelenium !== undefined) {
            requestContext.setQueryParam("maxSelenium", ObjectSerializer.serialize(maxSelenium, "number", ""));
        }

        // Query Params
        if (minSodium !== undefined) {
            requestContext.setQueryParam("minSodium", ObjectSerializer.serialize(minSodium, "number", ""));
        }

        // Query Params
        if (maxSodium !== undefined) {
            requestContext.setQueryParam("maxSodium", ObjectSerializer.serialize(maxSodium, "number", ""));
        }

        // Query Params
        if (minSugar !== undefined) {
            requestContext.setQueryParam("minSugar", ObjectSerializer.serialize(minSugar, "number", ""));
        }

        // Query Params
        if (maxSugar !== undefined) {
            requestContext.setQueryParam("maxSugar", ObjectSerializer.serialize(maxSugar, "number", ""));
        }

        // Query Params
        if (minZinc !== undefined) {
            requestContext.setQueryParam("minZinc", ObjectSerializer.serialize(minZinc, "number", ""));
        }

        // Query Params
        if (maxZinc !== undefined) {
            requestContext.setQueryParam("maxZinc", ObjectSerializer.serialize(maxZinc, "number", ""));
        }

        // Query Params
        if (offset !== undefined) {
            requestContext.setQueryParam("offset", ObjectSerializer.serialize(offset, "number", ""));
        }

        // Query Params
        if (number !== undefined) {
            requestContext.setQueryParam("number", ObjectSerializer.serialize(number, "number", ""));
        }

        // Query Params
        if (limitLicense !== undefined) {
            requestContext.setQueryParam("limitLicense", ObjectSerializer.serialize(limitLicense, "boolean", ""));
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
     *  Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         
     * Search Recipes by Ingredients
     * @param ingredients A comma-separated list of ingredients that the recipes should contain.
     * @param number The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @param limitLicense Whether the recipes should have an open license that allows display with proper attribution.
     * @param ranking Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
     * @param ignorePantry Whether to ignore typical pantry items, such as water, salt, flour, etc.
     */
    public async searchRecipesByIngredients(ingredients?: string, number?: number, limitLicense?: boolean, ranking?: number, ignorePantry?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;






        // Path Params
        const localVarPath = '/recipes/findByIngredients';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (ingredients !== undefined) {
            requestContext.setQueryParam("ingredients", ObjectSerializer.serialize(ingredients, "string", ""));
        }

        // Query Params
        if (number !== undefined) {
            requestContext.setQueryParam("number", ObjectSerializer.serialize(number, "number", ""));
        }

        // Query Params
        if (limitLicense !== undefined) {
            requestContext.setQueryParam("limitLicense", ObjectSerializer.serialize(limitLicense, "boolean", ""));
        }

        // Query Params
        if (ranking !== undefined) {
            requestContext.setQueryParam("ranking", ObjectSerializer.serialize(ranking, "number", ""));
        }

        // Query Params
        if (ignorePantry !== undefined) {
            requestContext.setQueryParam("ignorePantry", ObjectSerializer.serialize(ignorePantry, "boolean", ""));
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
     * Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.
     * Search Recipes by Nutrients
     * @param minCarbs The minimum amount of carbohydrates in grams the recipe must have.
     * @param maxCarbs The maximum amount of carbohydrates in grams the recipe can have.
     * @param minProtein The minimum amount of protein in grams the recipe must have.
     * @param maxProtein The maximum amount of protein in grams the recipe can have.
     * @param minCalories The minimum amount of calories the recipe must have.
     * @param maxCalories The maximum amount of calories the recipe can have.
     * @param minFat The minimum amount of fat in grams the recipe must have.
     * @param maxFat The maximum amount of fat in grams the recipe can have.
     * @param minAlcohol The minimum amount of alcohol in grams the recipe must have.
     * @param maxAlcohol The maximum amount of alcohol in grams the recipe can have.
     * @param minCaffeine The minimum amount of caffeine in milligrams the recipe must have.
     * @param maxCaffeine The maximum amount of caffeine in milligrams the recipe can have.
     * @param minCopper The minimum amount of copper in milligrams the recipe must have.
     * @param maxCopper The maximum amount of copper in milligrams the recipe can have.
     * @param minCalcium The minimum amount of calcium in milligrams the recipe must have.
     * @param maxCalcium The maximum amount of calcium in milligrams the recipe can have.
     * @param minCholine The minimum amount of choline in milligrams the recipe must have.
     * @param maxCholine The maximum amount of choline in milligrams the recipe can have.
     * @param minCholesterol The minimum amount of cholesterol in milligrams the recipe must have.
     * @param maxCholesterol The maximum amount of cholesterol in milligrams the recipe can have.
     * @param minFluoride The minimum amount of fluoride in milligrams the recipe must have.
     * @param maxFluoride The maximum amount of fluoride in milligrams the recipe can have.
     * @param minSaturatedFat The minimum amount of saturated fat in grams the recipe must have.
     * @param maxSaturatedFat The maximum amount of saturated fat in grams the recipe can have.
     * @param minVitaminA The minimum amount of Vitamin A in IU the recipe must have.
     * @param maxVitaminA The maximum amount of Vitamin A in IU the recipe can have.
     * @param minVitaminC The minimum amount of Vitamin C in milligrams the recipe must have.
     * @param maxVitaminC The maximum amount of Vitamin C in milligrams the recipe can have.
     * @param minVitaminD The minimum amount of Vitamin D in micrograms the recipe must have.
     * @param maxVitaminD The maximum amount of Vitamin D in micrograms the recipe can have.
     * @param minVitaminE The minimum amount of Vitamin E in milligrams the recipe must have.
     * @param maxVitaminE The maximum amount of Vitamin E in milligrams the recipe can have.
     * @param minVitaminK The minimum amount of Vitamin K in micrograms the recipe must have.
     * @param maxVitaminK The maximum amount of Vitamin K in micrograms the recipe can have.
     * @param minVitaminB1 The minimum amount of Vitamin B1 in milligrams the recipe must have.
     * @param maxVitaminB1 The maximum amount of Vitamin B1 in milligrams the recipe can have.
     * @param minVitaminB2 The minimum amount of Vitamin B2 in milligrams the recipe must have.
     * @param maxVitaminB2 The maximum amount of Vitamin B2 in milligrams the recipe can have.
     * @param minVitaminB5 The minimum amount of Vitamin B5 in milligrams the recipe must have.
     * @param maxVitaminB5 The maximum amount of Vitamin B5 in milligrams the recipe can have.
     * @param minVitaminB3 The minimum amount of Vitamin B3 in milligrams the recipe must have.
     * @param maxVitaminB3 The maximum amount of Vitamin B3 in milligrams the recipe can have.
     * @param minVitaminB6 The minimum amount of Vitamin B6 in milligrams the recipe must have.
     * @param maxVitaminB6 The maximum amount of Vitamin B6 in milligrams the recipe can have.
     * @param minVitaminB12 The minimum amount of Vitamin B12 in micrograms the recipe must have.
     * @param maxVitaminB12 The maximum amount of Vitamin B12 in micrograms the recipe can have.
     * @param minFiber The minimum amount of fiber in grams the recipe must have.
     * @param maxFiber The maximum amount of fiber in grams the recipe can have.
     * @param minFolate The minimum amount of folate in micrograms the recipe must have.
     * @param maxFolate The maximum amount of folate in micrograms the recipe can have.
     * @param minFolicAcid The minimum amount of folic acid in micrograms the recipe must have.
     * @param maxFolicAcid The maximum amount of folic acid in micrograms the recipe can have.
     * @param minIodine The minimum amount of iodine in micrograms the recipe must have.
     * @param maxIodine The maximum amount of iodine in micrograms the recipe can have.
     * @param minIron The minimum amount of iron in milligrams the recipe must have.
     * @param maxIron The maximum amount of iron in milligrams the recipe can have.
     * @param minMagnesium The minimum amount of magnesium in milligrams the recipe must have.
     * @param maxMagnesium The maximum amount of magnesium in milligrams the recipe can have.
     * @param minManganese The minimum amount of manganese in milligrams the recipe must have.
     * @param maxManganese The maximum amount of manganese in milligrams the recipe can have.
     * @param minPhosphorus The minimum amount of phosphorus in milligrams the recipe must have.
     * @param maxPhosphorus The maximum amount of phosphorus in milligrams the recipe can have.
     * @param minPotassium The minimum amount of potassium in milligrams the recipe must have.
     * @param maxPotassium The maximum amount of potassium in milligrams the recipe can have.
     * @param minSelenium The minimum amount of selenium in micrograms the recipe must have.
     * @param maxSelenium The maximum amount of selenium in micrograms the recipe can have.
     * @param minSodium The minimum amount of sodium in milligrams the recipe must have.
     * @param maxSodium The maximum amount of sodium in milligrams the recipe can have.
     * @param minSugar The minimum amount of sugar in grams the recipe must have.
     * @param maxSugar The maximum amount of sugar in grams the recipe can have.
     * @param minZinc The minimum amount of zinc in milligrams the recipe must have.
     * @param maxZinc The maximum amount of zinc in milligrams the recipe can have.
     * @param offset The number of results to skip (between 0 and 900).
     * @param number The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @param random If true, every request will give you a random set of recipes within the requested limits.
     * @param limitLicense Whether the recipes should have an open license that allows display with proper attribution.
     */
    public async searchRecipesByNutrients(minCarbs?: number, maxCarbs?: number, minProtein?: number, maxProtein?: number, minCalories?: number, maxCalories?: number, minFat?: number, maxFat?: number, minAlcohol?: number, maxAlcohol?: number, minCaffeine?: number, maxCaffeine?: number, minCopper?: number, maxCopper?: number, minCalcium?: number, maxCalcium?: number, minCholine?: number, maxCholine?: number, minCholesterol?: number, maxCholesterol?: number, minFluoride?: number, maxFluoride?: number, minSaturatedFat?: number, maxSaturatedFat?: number, minVitaminA?: number, maxVitaminA?: number, minVitaminC?: number, maxVitaminC?: number, minVitaminD?: number, maxVitaminD?: number, minVitaminE?: number, maxVitaminE?: number, minVitaminK?: number, maxVitaminK?: number, minVitaminB1?: number, maxVitaminB1?: number, minVitaminB2?: number, maxVitaminB2?: number, minVitaminB5?: number, maxVitaminB5?: number, minVitaminB3?: number, maxVitaminB3?: number, minVitaminB6?: number, maxVitaminB6?: number, minVitaminB12?: number, maxVitaminB12?: number, minFiber?: number, maxFiber?: number, minFolate?: number, maxFolate?: number, minFolicAcid?: number, maxFolicAcid?: number, minIodine?: number, maxIodine?: number, minIron?: number, maxIron?: number, minMagnesium?: number, maxMagnesium?: number, minManganese?: number, maxManganese?: number, minPhosphorus?: number, maxPhosphorus?: number, minPotassium?: number, maxPotassium?: number, minSelenium?: number, maxSelenium?: number, minSodium?: number, maxSodium?: number, minSugar?: number, maxSugar?: number, minZinc?: number, maxZinc?: number, offset?: number, number?: number, random?: boolean, limitLicense?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;













































































        // Path Params
        const localVarPath = '/recipes/findByNutrients';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

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
        if (minCalories !== undefined) {
            requestContext.setQueryParam("minCalories", ObjectSerializer.serialize(minCalories, "number", ""));
        }

        // Query Params
        if (maxCalories !== undefined) {
            requestContext.setQueryParam("maxCalories", ObjectSerializer.serialize(maxCalories, "number", ""));
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
        if (minAlcohol !== undefined) {
            requestContext.setQueryParam("minAlcohol", ObjectSerializer.serialize(minAlcohol, "number", ""));
        }

        // Query Params
        if (maxAlcohol !== undefined) {
            requestContext.setQueryParam("maxAlcohol", ObjectSerializer.serialize(maxAlcohol, "number", ""));
        }

        // Query Params
        if (minCaffeine !== undefined) {
            requestContext.setQueryParam("minCaffeine", ObjectSerializer.serialize(minCaffeine, "number", ""));
        }

        // Query Params
        if (maxCaffeine !== undefined) {
            requestContext.setQueryParam("maxCaffeine", ObjectSerializer.serialize(maxCaffeine, "number", ""));
        }

        // Query Params
        if (minCopper !== undefined) {
            requestContext.setQueryParam("minCopper", ObjectSerializer.serialize(minCopper, "number", ""));
        }

        // Query Params
        if (maxCopper !== undefined) {
            requestContext.setQueryParam("maxCopper", ObjectSerializer.serialize(maxCopper, "number", ""));
        }

        // Query Params
        if (minCalcium !== undefined) {
            requestContext.setQueryParam("minCalcium", ObjectSerializer.serialize(minCalcium, "number", ""));
        }

        // Query Params
        if (maxCalcium !== undefined) {
            requestContext.setQueryParam("maxCalcium", ObjectSerializer.serialize(maxCalcium, "number", ""));
        }

        // Query Params
        if (minCholine !== undefined) {
            requestContext.setQueryParam("minCholine", ObjectSerializer.serialize(minCholine, "number", ""));
        }

        // Query Params
        if (maxCholine !== undefined) {
            requestContext.setQueryParam("maxCholine", ObjectSerializer.serialize(maxCholine, "number", ""));
        }

        // Query Params
        if (minCholesterol !== undefined) {
            requestContext.setQueryParam("minCholesterol", ObjectSerializer.serialize(minCholesterol, "number", ""));
        }

        // Query Params
        if (maxCholesterol !== undefined) {
            requestContext.setQueryParam("maxCholesterol", ObjectSerializer.serialize(maxCholesterol, "number", ""));
        }

        // Query Params
        if (minFluoride !== undefined) {
            requestContext.setQueryParam("minFluoride", ObjectSerializer.serialize(minFluoride, "number", ""));
        }

        // Query Params
        if (maxFluoride !== undefined) {
            requestContext.setQueryParam("maxFluoride", ObjectSerializer.serialize(maxFluoride, "number", ""));
        }

        // Query Params
        if (minSaturatedFat !== undefined) {
            requestContext.setQueryParam("minSaturatedFat", ObjectSerializer.serialize(minSaturatedFat, "number", ""));
        }

        // Query Params
        if (maxSaturatedFat !== undefined) {
            requestContext.setQueryParam("maxSaturatedFat", ObjectSerializer.serialize(maxSaturatedFat, "number", ""));
        }

        // Query Params
        if (minVitaminA !== undefined) {
            requestContext.setQueryParam("minVitaminA", ObjectSerializer.serialize(minVitaminA, "number", ""));
        }

        // Query Params
        if (maxVitaminA !== undefined) {
            requestContext.setQueryParam("maxVitaminA", ObjectSerializer.serialize(maxVitaminA, "number", ""));
        }

        // Query Params
        if (minVitaminC !== undefined) {
            requestContext.setQueryParam("minVitaminC", ObjectSerializer.serialize(minVitaminC, "number", ""));
        }

        // Query Params
        if (maxVitaminC !== undefined) {
            requestContext.setQueryParam("maxVitaminC", ObjectSerializer.serialize(maxVitaminC, "number", ""));
        }

        // Query Params
        if (minVitaminD !== undefined) {
            requestContext.setQueryParam("minVitaminD", ObjectSerializer.serialize(minVitaminD, "number", ""));
        }

        // Query Params
        if (maxVitaminD !== undefined) {
            requestContext.setQueryParam("maxVitaminD", ObjectSerializer.serialize(maxVitaminD, "number", ""));
        }

        // Query Params
        if (minVitaminE !== undefined) {
            requestContext.setQueryParam("minVitaminE", ObjectSerializer.serialize(minVitaminE, "number", ""));
        }

        // Query Params
        if (maxVitaminE !== undefined) {
            requestContext.setQueryParam("maxVitaminE", ObjectSerializer.serialize(maxVitaminE, "number", ""));
        }

        // Query Params
        if (minVitaminK !== undefined) {
            requestContext.setQueryParam("minVitaminK", ObjectSerializer.serialize(minVitaminK, "number", ""));
        }

        // Query Params
        if (maxVitaminK !== undefined) {
            requestContext.setQueryParam("maxVitaminK", ObjectSerializer.serialize(maxVitaminK, "number", ""));
        }

        // Query Params
        if (minVitaminB1 !== undefined) {
            requestContext.setQueryParam("minVitaminB1", ObjectSerializer.serialize(minVitaminB1, "number", ""));
        }

        // Query Params
        if (maxVitaminB1 !== undefined) {
            requestContext.setQueryParam("maxVitaminB1", ObjectSerializer.serialize(maxVitaminB1, "number", ""));
        }

        // Query Params
        if (minVitaminB2 !== undefined) {
            requestContext.setQueryParam("minVitaminB2", ObjectSerializer.serialize(minVitaminB2, "number", ""));
        }

        // Query Params
        if (maxVitaminB2 !== undefined) {
            requestContext.setQueryParam("maxVitaminB2", ObjectSerializer.serialize(maxVitaminB2, "number", ""));
        }

        // Query Params
        if (minVitaminB5 !== undefined) {
            requestContext.setQueryParam("minVitaminB5", ObjectSerializer.serialize(minVitaminB5, "number", ""));
        }

        // Query Params
        if (maxVitaminB5 !== undefined) {
            requestContext.setQueryParam("maxVitaminB5", ObjectSerializer.serialize(maxVitaminB5, "number", ""));
        }

        // Query Params
        if (minVitaminB3 !== undefined) {
            requestContext.setQueryParam("minVitaminB3", ObjectSerializer.serialize(minVitaminB3, "number", ""));
        }

        // Query Params
        if (maxVitaminB3 !== undefined) {
            requestContext.setQueryParam("maxVitaminB3", ObjectSerializer.serialize(maxVitaminB3, "number", ""));
        }

        // Query Params
        if (minVitaminB6 !== undefined) {
            requestContext.setQueryParam("minVitaminB6", ObjectSerializer.serialize(minVitaminB6, "number", ""));
        }

        // Query Params
        if (maxVitaminB6 !== undefined) {
            requestContext.setQueryParam("maxVitaminB6", ObjectSerializer.serialize(maxVitaminB6, "number", ""));
        }

        // Query Params
        if (minVitaminB12 !== undefined) {
            requestContext.setQueryParam("minVitaminB12", ObjectSerializer.serialize(minVitaminB12, "number", ""));
        }

        // Query Params
        if (maxVitaminB12 !== undefined) {
            requestContext.setQueryParam("maxVitaminB12", ObjectSerializer.serialize(maxVitaminB12, "number", ""));
        }

        // Query Params
        if (minFiber !== undefined) {
            requestContext.setQueryParam("minFiber", ObjectSerializer.serialize(minFiber, "number", ""));
        }

        // Query Params
        if (maxFiber !== undefined) {
            requestContext.setQueryParam("maxFiber", ObjectSerializer.serialize(maxFiber, "number", ""));
        }

        // Query Params
        if (minFolate !== undefined) {
            requestContext.setQueryParam("minFolate", ObjectSerializer.serialize(minFolate, "number", ""));
        }

        // Query Params
        if (maxFolate !== undefined) {
            requestContext.setQueryParam("maxFolate", ObjectSerializer.serialize(maxFolate, "number", ""));
        }

        // Query Params
        if (minFolicAcid !== undefined) {
            requestContext.setQueryParam("minFolicAcid", ObjectSerializer.serialize(minFolicAcid, "number", ""));
        }

        // Query Params
        if (maxFolicAcid !== undefined) {
            requestContext.setQueryParam("maxFolicAcid", ObjectSerializer.serialize(maxFolicAcid, "number", ""));
        }

        // Query Params
        if (minIodine !== undefined) {
            requestContext.setQueryParam("minIodine", ObjectSerializer.serialize(minIodine, "number", ""));
        }

        // Query Params
        if (maxIodine !== undefined) {
            requestContext.setQueryParam("maxIodine", ObjectSerializer.serialize(maxIodine, "number", ""));
        }

        // Query Params
        if (minIron !== undefined) {
            requestContext.setQueryParam("minIron", ObjectSerializer.serialize(minIron, "number", ""));
        }

        // Query Params
        if (maxIron !== undefined) {
            requestContext.setQueryParam("maxIron", ObjectSerializer.serialize(maxIron, "number", ""));
        }

        // Query Params
        if (minMagnesium !== undefined) {
            requestContext.setQueryParam("minMagnesium", ObjectSerializer.serialize(minMagnesium, "number", ""));
        }

        // Query Params
        if (maxMagnesium !== undefined) {
            requestContext.setQueryParam("maxMagnesium", ObjectSerializer.serialize(maxMagnesium, "number", ""));
        }

        // Query Params
        if (minManganese !== undefined) {
            requestContext.setQueryParam("minManganese", ObjectSerializer.serialize(minManganese, "number", ""));
        }

        // Query Params
        if (maxManganese !== undefined) {
            requestContext.setQueryParam("maxManganese", ObjectSerializer.serialize(maxManganese, "number", ""));
        }

        // Query Params
        if (minPhosphorus !== undefined) {
            requestContext.setQueryParam("minPhosphorus", ObjectSerializer.serialize(minPhosphorus, "number", ""));
        }

        // Query Params
        if (maxPhosphorus !== undefined) {
            requestContext.setQueryParam("maxPhosphorus", ObjectSerializer.serialize(maxPhosphorus, "number", ""));
        }

        // Query Params
        if (minPotassium !== undefined) {
            requestContext.setQueryParam("minPotassium", ObjectSerializer.serialize(minPotassium, "number", ""));
        }

        // Query Params
        if (maxPotassium !== undefined) {
            requestContext.setQueryParam("maxPotassium", ObjectSerializer.serialize(maxPotassium, "number", ""));
        }

        // Query Params
        if (minSelenium !== undefined) {
            requestContext.setQueryParam("minSelenium", ObjectSerializer.serialize(minSelenium, "number", ""));
        }

        // Query Params
        if (maxSelenium !== undefined) {
            requestContext.setQueryParam("maxSelenium", ObjectSerializer.serialize(maxSelenium, "number", ""));
        }

        // Query Params
        if (minSodium !== undefined) {
            requestContext.setQueryParam("minSodium", ObjectSerializer.serialize(minSodium, "number", ""));
        }

        // Query Params
        if (maxSodium !== undefined) {
            requestContext.setQueryParam("maxSodium", ObjectSerializer.serialize(maxSodium, "number", ""));
        }

        // Query Params
        if (minSugar !== undefined) {
            requestContext.setQueryParam("minSugar", ObjectSerializer.serialize(minSugar, "number", ""));
        }

        // Query Params
        if (maxSugar !== undefined) {
            requestContext.setQueryParam("maxSugar", ObjectSerializer.serialize(maxSugar, "number", ""));
        }

        // Query Params
        if (minZinc !== undefined) {
            requestContext.setQueryParam("minZinc", ObjectSerializer.serialize(minZinc, "number", ""));
        }

        // Query Params
        if (maxZinc !== undefined) {
            requestContext.setQueryParam("maxZinc", ObjectSerializer.serialize(maxZinc, "number", ""));
        }

        // Query Params
        if (offset !== undefined) {
            requestContext.setQueryParam("offset", ObjectSerializer.serialize(offset, "number", ""));
        }

        // Query Params
        if (number !== undefined) {
            requestContext.setQueryParam("number", ObjectSerializer.serialize(number, "number", ""));
        }

        // Query Params
        if (random !== undefined) {
            requestContext.setQueryParam("random", ObjectSerializer.serialize(random, "boolean", ""));
        }

        // Query Params
        if (limitLicense !== undefined) {
            requestContext.setQueryParam("limitLicense", ObjectSerializer.serialize(limitLicense, "boolean", ""));
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
     * Automatically generate a short description that summarizes key information about the recipe.
     * Summarize Recipe
     * @param id The item&#39;s id.
     */
    public async summarizeRecipe(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "summarizeRecipe", "id");
        }


        // Path Params
        const localVarPath = '/recipes/{id}/summary'
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
     * Visualize the equipment used to make a recipe.
     * Equipment Widget
     * @param contentType The content type.
     * @param accept Accept header.
     */
    public async visualizeEquipment(contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', accept?: 'application/json' | 'text/html' | 'media/_*', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;



        // Path Params
        const localVarPath = '/recipes/visualizeEquipment';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Header Params
        requestContext.setHeaderParam("Content-Type", ObjectSerializer.serialize(contentType, "'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data'", ""));

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

    /**
     * Visualize the price breakdown of a recipe.
     * Price Breakdown Widget
     * @param contentType The content type.
     * @param accept Accept header.
     * @param language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     */
    public async visualizePriceBreakdown(contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', accept?: 'application/json' | 'text/html' | 'media/_*', language?: 'en' | 'de', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;




        // Path Params
        const localVarPath = '/recipes/visualizePriceEstimator';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (language !== undefined) {
            requestContext.setQueryParam("language", ObjectSerializer.serialize(language, "'en' | 'de'", ""));
        }

        // Header Params
        requestContext.setHeaderParam("Content-Type", ObjectSerializer.serialize(contentType, "'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data'", ""));

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

    /**
     * Visualize a recipe's equipment list.
     * Equipment by ID Widget
     * @param id The item&#39;s id.
     * @param defaultCss Whether the default CSS should be added to the response.
     */
    public async visualizeRecipeEquipmentByID(id: number, defaultCss?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "visualizeRecipeEquipmentByID", "id");
        }



        // Path Params
        const localVarPath = '/recipes/{id}/equipmentWidget'
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

    /**
     * Visualize a recipe's ingredient list.
     * Ingredients by ID Widget
     * @param id The item&#39;s id.
     * @param defaultCss Whether the default CSS should be added to the response.
     * @param measure Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.
     */
    public async visualizeRecipeIngredientsByID(id: number, defaultCss?: boolean, measure?: 'us' | 'metric', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "visualizeRecipeIngredientsByID", "id");
        }




        // Path Params
        const localVarPath = '/recipes/{id}/ingredientWidget'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (defaultCss !== undefined) {
            requestContext.setQueryParam("defaultCss", ObjectSerializer.serialize(defaultCss, "boolean", ""));
        }

        // Query Params
        if (measure !== undefined) {
            requestContext.setQueryParam("measure", ObjectSerializer.serialize(measure, "'us' | 'metric'", ""));
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
     * Visualize a recipe's nutritional information as HTML including CSS.
     * Recipe Nutrition Widget
     * @param contentType The content type.
     * @param accept Accept header.
     * @param language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     */
    public async visualizeRecipeNutrition(contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', accept?: 'application/json' | 'text/html' | 'media/_*', language?: 'en' | 'de', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;




        // Path Params
        const localVarPath = '/recipes/visualizeNutrition';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (language !== undefined) {
            requestContext.setQueryParam("language", ObjectSerializer.serialize(language, "'en' | 'de'", ""));
        }

        // Header Params
        requestContext.setHeaderParam("Content-Type", ObjectSerializer.serialize(contentType, "'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data'", ""));

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

    /**
     * Visualize a recipe's nutritional information as HTML including CSS.
     * Recipe Nutrition by ID Widget
     * @param id The item&#39;s id.
     * @param defaultCss Whether the default CSS should be added to the response.
     * @param accept Accept header.
     */
    public async visualizeRecipeNutritionByID(id: number, defaultCss?: boolean, accept?: 'application/json' | 'text/html' | 'media/_*', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "visualizeRecipeNutritionByID", "id");
        }




        // Path Params
        const localVarPath = '/recipes/{id}/nutritionWidget'
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

    /**
     * Visualize a recipe's price breakdown.
     * Price Breakdown by ID Widget
     * @param id The item&#39;s id.
     * @param defaultCss Whether the default CSS should be added to the response.
     */
    public async visualizeRecipePriceBreakdownByID(id: number, defaultCss?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "visualizeRecipePriceBreakdownByID", "id");
        }



        // Path Params
        const localVarPath = '/recipes/{id}/priceBreakdownWidget'
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

    /**
     * Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!
     * Recipe Taste Widget
     * @param language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     * @param contentType The content type.
     * @param accept Accept header.
     * @param normalize Whether to normalize to the strongest taste.
     * @param rgb Red, green, blue values for the chart color.
     */
    public async visualizeRecipeTaste(language?: 'en' | 'de', contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', accept?: 'application/json' | 'text/html' | 'media/_*', normalize?: boolean, rgb?: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;






        // Path Params
        const localVarPath = '/recipes/visualizeTaste';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (language !== undefined) {
            requestContext.setQueryParam("language", ObjectSerializer.serialize(language, "'en' | 'de'", ""));
        }

        // Query Params
        if (normalize !== undefined) {
            requestContext.setQueryParam("normalize", ObjectSerializer.serialize(normalize, "boolean", ""));
        }

        // Query Params
        if (rgb !== undefined) {
            requestContext.setQueryParam("rgb", ObjectSerializer.serialize(rgb, "string", ""));
        }

        // Header Params
        requestContext.setHeaderParam("Content-Type", ObjectSerializer.serialize(contentType, "'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data'", ""));

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

    /**
     * Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
     * Recipe Taste by ID Widget
     * @param id The item&#39;s id.
     * @param normalize Whether to normalize to the strongest taste.
     * @param rgb Red, green, blue values for the chart color.
     */
    public async visualizeRecipeTasteByID(id: number, normalize?: boolean, rgb?: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("RecipesApi", "visualizeRecipeTasteByID", "id");
        }




        // Path Params
        const localVarPath = '/recipes/{id}/tasteWidget'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (normalize !== undefined) {
            requestContext.setQueryParam("normalize", ObjectSerializer.serialize(normalize, "boolean", ""));
        }

        // Query Params
        if (rgb !== undefined) {
            requestContext.setQueryParam("rgb", ObjectSerializer.serialize(rgb, "string", ""));
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

export class RecipesApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to analyzeARecipeSearchQuery
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async analyzeARecipeSearchQuery(response: ResponseContext): Promise<AnalyzeARecipeSearchQuery200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: AnalyzeARecipeSearchQuery200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "AnalyzeARecipeSearchQuery200Response", ""
            ) as AnalyzeARecipeSearchQuery200Response;
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
            const body: AnalyzeARecipeSearchQuery200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "AnalyzeARecipeSearchQuery200Response", ""
            ) as AnalyzeARecipeSearchQuery200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to analyzeRecipeInstructions
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async analyzeRecipeInstructions(response: ResponseContext): Promise<AnalyzeRecipeInstructions200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: AnalyzeRecipeInstructions200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "AnalyzeRecipeInstructions200Response", ""
            ) as AnalyzeRecipeInstructions200Response;
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
            const body: AnalyzeRecipeInstructions200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "AnalyzeRecipeInstructions200Response", ""
            ) as AnalyzeRecipeInstructions200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to autocompleteRecipeSearch
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async autocompleteRecipeSearch(response: ResponseContext): Promise<Set<AutocompleteRecipeSearch200ResponseInner> > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Set<AutocompleteRecipeSearch200ResponseInner> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Set<AutocompleteRecipeSearch200ResponseInner>", ""
            ) as Set<AutocompleteRecipeSearch200ResponseInner>;
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
            const body: Set<AutocompleteRecipeSearch200ResponseInner> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Set<AutocompleteRecipeSearch200ResponseInner>", ""
            ) as Set<AutocompleteRecipeSearch200ResponseInner>;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to classifyCuisine
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async classifyCuisine(response: ResponseContext): Promise<ClassifyCuisine200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ClassifyCuisine200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ClassifyCuisine200Response", ""
            ) as ClassifyCuisine200Response;
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
            const body: ClassifyCuisine200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ClassifyCuisine200Response", ""
            ) as ClassifyCuisine200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to computeGlycemicLoad
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async computeGlycemicLoad(response: ResponseContext): Promise<ComputeGlycemicLoad200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ComputeGlycemicLoad200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ComputeGlycemicLoad200Response", ""
            ) as ComputeGlycemicLoad200Response;
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
            const body: ComputeGlycemicLoad200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ComputeGlycemicLoad200Response", ""
            ) as ComputeGlycemicLoad200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to convertAmounts
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async convertAmounts(response: ResponseContext): Promise<ConvertAmounts200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ConvertAmounts200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ConvertAmounts200Response", ""
            ) as ConvertAmounts200Response;
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
            const body: ConvertAmounts200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ConvertAmounts200Response", ""
            ) as ConvertAmounts200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to createRecipeCard
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async createRecipeCard(response: ResponseContext): Promise<CreateRecipeCard200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: CreateRecipeCard200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "CreateRecipeCard200Response", ""
            ) as CreateRecipeCard200Response;
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
            const body: CreateRecipeCard200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "CreateRecipeCard200Response", ""
            ) as CreateRecipeCard200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to equipmentByIDImage
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async equipmentByIDImage(response: ResponseContext): Promise<any > {
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
     * @params response Response returned by the server for a request to extractRecipeFromWebsite
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async extractRecipeFromWebsite(response: ResponseContext): Promise<GetRecipeInformation200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetRecipeInformation200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRecipeInformation200Response", ""
            ) as GetRecipeInformation200Response;
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
            const body: GetRecipeInformation200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRecipeInformation200Response", ""
            ) as GetRecipeInformation200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getAnalyzedRecipeInstructions
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getAnalyzedRecipeInstructions(response: ResponseContext): Promise<GetAnalyzedRecipeInstructions200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetAnalyzedRecipeInstructions200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAnalyzedRecipeInstructions200Response", ""
            ) as GetAnalyzedRecipeInstructions200Response;
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
            const body: GetAnalyzedRecipeInstructions200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAnalyzedRecipeInstructions200Response", ""
            ) as GetAnalyzedRecipeInstructions200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getRandomRecipes
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getRandomRecipes(response: ResponseContext): Promise<GetRandomRecipes200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetRandomRecipes200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRandomRecipes200Response", ""
            ) as GetRandomRecipes200Response;
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
            const body: GetRandomRecipes200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRandomRecipes200Response", ""
            ) as GetRandomRecipes200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getRecipeEquipmentByID
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getRecipeEquipmentByID(response: ResponseContext): Promise<GetRecipeEquipmentByID200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetRecipeEquipmentByID200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRecipeEquipmentByID200Response", ""
            ) as GetRecipeEquipmentByID200Response;
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
            const body: GetRecipeEquipmentByID200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRecipeEquipmentByID200Response", ""
            ) as GetRecipeEquipmentByID200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getRecipeInformation
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getRecipeInformation(response: ResponseContext): Promise<GetRecipeInformation200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetRecipeInformation200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRecipeInformation200Response", ""
            ) as GetRecipeInformation200Response;
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
            const body: GetRecipeInformation200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRecipeInformation200Response", ""
            ) as GetRecipeInformation200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getRecipeInformationBulk
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getRecipeInformationBulk(response: ResponseContext): Promise<Set<GetRecipeInformationBulk200ResponseInner> > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Set<GetRecipeInformationBulk200ResponseInner> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Set<GetRecipeInformationBulk200ResponseInner>", ""
            ) as Set<GetRecipeInformationBulk200ResponseInner>;
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
            const body: Set<GetRecipeInformationBulk200ResponseInner> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Set<GetRecipeInformationBulk200ResponseInner>", ""
            ) as Set<GetRecipeInformationBulk200ResponseInner>;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getRecipeIngredientsByID
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getRecipeIngredientsByID(response: ResponseContext): Promise<GetRecipeIngredientsByID200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetRecipeIngredientsByID200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRecipeIngredientsByID200Response", ""
            ) as GetRecipeIngredientsByID200Response;
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
            const body: GetRecipeIngredientsByID200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRecipeIngredientsByID200Response", ""
            ) as GetRecipeIngredientsByID200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getRecipeNutritionWidgetByID
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getRecipeNutritionWidgetByID(response: ResponseContext): Promise<GetRecipeNutritionWidgetByID200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetRecipeNutritionWidgetByID200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRecipeNutritionWidgetByID200Response", ""
            ) as GetRecipeNutritionWidgetByID200Response;
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
            const body: GetRecipeNutritionWidgetByID200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRecipeNutritionWidgetByID200Response", ""
            ) as GetRecipeNutritionWidgetByID200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getRecipePriceBreakdownByID
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getRecipePriceBreakdownByID(response: ResponseContext): Promise<GetRecipePriceBreakdownByID200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetRecipePriceBreakdownByID200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRecipePriceBreakdownByID200Response", ""
            ) as GetRecipePriceBreakdownByID200Response;
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
            const body: GetRecipePriceBreakdownByID200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRecipePriceBreakdownByID200Response", ""
            ) as GetRecipePriceBreakdownByID200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getRecipeTasteByID
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getRecipeTasteByID(response: ResponseContext): Promise<GetRecipeTasteByID200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetRecipeTasteByID200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRecipeTasteByID200Response", ""
            ) as GetRecipeTasteByID200Response;
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
            const body: GetRecipeTasteByID200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetRecipeTasteByID200Response", ""
            ) as GetRecipeTasteByID200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getSimilarRecipes
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getSimilarRecipes(response: ResponseContext): Promise<Set<GetSimilarRecipes200ResponseInner> > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Set<GetSimilarRecipes200ResponseInner> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Set<GetSimilarRecipes200ResponseInner>", ""
            ) as Set<GetSimilarRecipes200ResponseInner>;
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
            const body: Set<GetSimilarRecipes200ResponseInner> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Set<GetSimilarRecipes200ResponseInner>", ""
            ) as Set<GetSimilarRecipes200ResponseInner>;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to guessNutritionByDishName
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async guessNutritionByDishName(response: ResponseContext): Promise<GuessNutritionByDishName200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GuessNutritionByDishName200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GuessNutritionByDishName200Response", ""
            ) as GuessNutritionByDishName200Response;
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
            const body: GuessNutritionByDishName200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GuessNutritionByDishName200Response", ""
            ) as GuessNutritionByDishName200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to ingredientsByIDImage
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async ingredientsByIDImage(response: ResponseContext): Promise<any > {
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
     * @params response Response returned by the server for a request to parseIngredients
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async parseIngredients(response: ResponseContext): Promise<Set<ParseIngredients200ResponseInner> > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Set<ParseIngredients200ResponseInner> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Set<ParseIngredients200ResponseInner>", ""
            ) as Set<ParseIngredients200ResponseInner>;
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
            const body: Set<ParseIngredients200ResponseInner> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Set<ParseIngredients200ResponseInner>", ""
            ) as Set<ParseIngredients200ResponseInner>;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to priceBreakdownByIDImage
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async priceBreakdownByIDImage(response: ResponseContext): Promise<any > {
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
     * @params response Response returned by the server for a request to quickAnswer
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async quickAnswer(response: ResponseContext): Promise<QuickAnswer200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: QuickAnswer200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "QuickAnswer200Response", ""
            ) as QuickAnswer200Response;
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
            const body: QuickAnswer200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "QuickAnswer200Response", ""
            ) as QuickAnswer200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to recipeNutritionByIDImage
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async recipeNutritionByIDImage(response: ResponseContext): Promise<any > {
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
     * @params response Response returned by the server for a request to recipeNutritionLabelImage
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async recipeNutritionLabelImage(response: ResponseContext): Promise<any > {
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
     * @params response Response returned by the server for a request to recipeNutritionLabelWidget
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async recipeNutritionLabelWidget(response: ResponseContext): Promise<string > {
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
     * @params response Response returned by the server for a request to recipeTasteByIDImage
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async recipeTasteByIDImage(response: ResponseContext): Promise<any > {
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
     * @params response Response returned by the server for a request to searchRecipes
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchRecipes(response: ResponseContext): Promise<SearchRecipes200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SearchRecipes200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchRecipes200Response", ""
            ) as SearchRecipes200Response;
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
            const body: SearchRecipes200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchRecipes200Response", ""
            ) as SearchRecipes200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to searchRecipesByIngredients
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchRecipesByIngredients(response: ResponseContext): Promise<Set<SearchRecipesByIngredients200ResponseInner> > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Set<SearchRecipesByIngredients200ResponseInner> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Set<SearchRecipesByIngredients200ResponseInner>", ""
            ) as Set<SearchRecipesByIngredients200ResponseInner>;
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
            const body: Set<SearchRecipesByIngredients200ResponseInner> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Set<SearchRecipesByIngredients200ResponseInner>", ""
            ) as Set<SearchRecipesByIngredients200ResponseInner>;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to searchRecipesByNutrients
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchRecipesByNutrients(response: ResponseContext): Promise<Set<SearchRecipesByNutrients200ResponseInner> > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Set<SearchRecipesByNutrients200ResponseInner> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Set<SearchRecipesByNutrients200ResponseInner>", ""
            ) as Set<SearchRecipesByNutrients200ResponseInner>;
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
            const body: Set<SearchRecipesByNutrients200ResponseInner> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Set<SearchRecipesByNutrients200ResponseInner>", ""
            ) as Set<SearchRecipesByNutrients200ResponseInner>;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to summarizeRecipe
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async summarizeRecipe(response: ResponseContext): Promise<SummarizeRecipe200Response > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SummarizeRecipe200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SummarizeRecipe200Response", ""
            ) as SummarizeRecipe200Response;
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
            const body: SummarizeRecipe200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SummarizeRecipe200Response", ""
            ) as SummarizeRecipe200Response;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to visualizeEquipment
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async visualizeEquipment(response: ResponseContext): Promise<string > {
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
     * @params response Response returned by the server for a request to visualizePriceBreakdown
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async visualizePriceBreakdown(response: ResponseContext): Promise<string > {
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
     * @params response Response returned by the server for a request to visualizeRecipeEquipmentByID
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async visualizeRecipeEquipmentByID(response: ResponseContext): Promise<string > {
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
     * @params response Response returned by the server for a request to visualizeRecipeIngredientsByID
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async visualizeRecipeIngredientsByID(response: ResponseContext): Promise<string > {
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
     * @params response Response returned by the server for a request to visualizeRecipeNutrition
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async visualizeRecipeNutrition(response: ResponseContext): Promise<string > {
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
     * @params response Response returned by the server for a request to visualizeRecipeNutritionByID
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async visualizeRecipeNutritionByID(response: ResponseContext): Promise<string > {
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
     * @params response Response returned by the server for a request to visualizeRecipePriceBreakdownByID
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async visualizeRecipePriceBreakdownByID(response: ResponseContext): Promise<string > {
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
     * @params response Response returned by the server for a request to visualizeRecipeTaste
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async visualizeRecipeTaste(response: ResponseContext): Promise<string > {
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
     * @params response Response returned by the server for a request to visualizeRecipeTasteByID
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async visualizeRecipeTasteByID(response: ResponseContext): Promise<string > {
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
