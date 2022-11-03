import { ResponseContext, RequestContext, HttpFile } from '../http/http';
import * as models from '../models/all';
import { Configuration} from '../configuration'

import { AddMealPlanTemplate200Response } from '../models/AddMealPlanTemplate200Response';
import { AddMealPlanTemplate200ResponseItemsInner } from '../models/AddMealPlanTemplate200ResponseItemsInner';
import { AddMealPlanTemplate200ResponseItemsInnerValue } from '../models/AddMealPlanTemplate200ResponseItemsInnerValue';
import { AddToMealPlanRequest } from '../models/AddToMealPlanRequest';
import { AddToMealPlanRequest1 } from '../models/AddToMealPlanRequest1';
import { AddToMealPlanRequest1Value } from '../models/AddToMealPlanRequest1Value';
import { AddToMealPlanRequest1ValueIngredientsInner } from '../models/AddToMealPlanRequest1ValueIngredientsInner';
import { AddToShoppingListRequest } from '../models/AddToShoppingListRequest';
import { AnalyzeARecipeSearchQuery200Response } from '../models/AnalyzeARecipeSearchQuery200Response';
import { AnalyzeARecipeSearchQuery200ResponseDishesInner } from '../models/AnalyzeARecipeSearchQuery200ResponseDishesInner';
import { AnalyzeARecipeSearchQuery200ResponseIngredientsInner } from '../models/AnalyzeARecipeSearchQuery200ResponseIngredientsInner';
import { AnalyzeRecipeInstructions200Response } from '../models/AnalyzeRecipeInstructions200Response';
import { AnalyzeRecipeInstructions200ResponseIngredientsInner } from '../models/AnalyzeRecipeInstructions200ResponseIngredientsInner';
import { AnalyzeRecipeInstructions200ResponseParsedInstructionsInner } from '../models/AnalyzeRecipeInstructions200ResponseParsedInstructionsInner';
import { AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner } from '../models/AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner';
import { AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner } from '../models/AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner';
import { AnalyzeRecipeRequest } from '../models/AnalyzeRecipeRequest';
import { AnalyzeRecipeRequest1 } from '../models/AnalyzeRecipeRequest1';
import { AutocompleteIngredientSearch200ResponseInner } from '../models/AutocompleteIngredientSearch200ResponseInner';
import { AutocompleteMenuItemSearch200Response } from '../models/AutocompleteMenuItemSearch200Response';
import { AutocompleteProductSearch200Response } from '../models/AutocompleteProductSearch200Response';
import { AutocompleteProductSearch200ResponseResultsInner } from '../models/AutocompleteProductSearch200ResponseResultsInner';
import { AutocompleteRecipeSearch200ResponseInner } from '../models/AutocompleteRecipeSearch200ResponseInner';
import { ClassifyCuisine200Response } from '../models/ClassifyCuisine200Response';
import { ClassifyGroceryProduct200Response } from '../models/ClassifyGroceryProduct200Response';
import { ClassifyGroceryProductBulk200ResponseInner } from '../models/ClassifyGroceryProductBulk200ResponseInner';
import { ClassifyGroceryProductBulkRequestInner } from '../models/ClassifyGroceryProductBulkRequestInner';
import { ClassifyGroceryProductRequest } from '../models/ClassifyGroceryProductRequest';
import { ClearMealPlanDayRequest } from '../models/ClearMealPlanDayRequest';
import { ComputeGlycemicLoad200Response } from '../models/ComputeGlycemicLoad200Response';
import { ComputeGlycemicLoad200ResponseIngredientsInner } from '../models/ComputeGlycemicLoad200ResponseIngredientsInner';
import { ComputeGlycemicLoadRequest } from '../models/ComputeGlycemicLoadRequest';
import { ComputeIngredientAmount200Response } from '../models/ComputeIngredientAmount200Response';
import { ConnectUser200Response } from '../models/ConnectUser200Response';
import { ConnectUserRequest } from '../models/ConnectUserRequest';
import { ConvertAmounts200Response } from '../models/ConvertAmounts200Response';
import { CreateRecipeCard200Response } from '../models/CreateRecipeCard200Response';
import { DeleteFromMealPlanRequest } from '../models/DeleteFromMealPlanRequest';
import { DetectFoodInText200Response } from '../models/DetectFoodInText200Response';
import { DetectFoodInText200ResponseAnnotationsInner } from '../models/DetectFoodInText200ResponseAnnotationsInner';
import { GenerateMealPlan200Response } from '../models/GenerateMealPlan200Response';
import { GenerateMealPlan200ResponseNutrients } from '../models/GenerateMealPlan200ResponseNutrients';
import { GenerateShoppingList200Response } from '../models/GenerateShoppingList200Response';
import { GenerateShoppingListRequest } from '../models/GenerateShoppingListRequest';
import { GetARandomFoodJoke200Response } from '../models/GetARandomFoodJoke200Response';
import { GetAnalyzedRecipeInstructions200Response } from '../models/GetAnalyzedRecipeInstructions200Response';
import { GetAnalyzedRecipeInstructions200ResponseIngredientsInner } from '../models/GetAnalyzedRecipeInstructions200ResponseIngredientsInner';
import { GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner } from '../models/GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner';
import { GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner } from '../models/GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner';
import { GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner } from '../models/GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner';
import { GetComparableProducts200Response } from '../models/GetComparableProducts200Response';
import { GetComparableProducts200ResponseComparableProducts } from '../models/GetComparableProducts200ResponseComparableProducts';
import { GetComparableProducts200ResponseComparableProductsProteinInner } from '../models/GetComparableProducts200ResponseComparableProductsProteinInner';
import { GetConversationSuggests200Response } from '../models/GetConversationSuggests200Response';
import { GetConversationSuggests200ResponseSuggests } from '../models/GetConversationSuggests200ResponseSuggests';
import { GetConversationSuggests200ResponseSuggestsInner } from '../models/GetConversationSuggests200ResponseSuggestsInner';
import { GetDishPairingForWine200Response } from '../models/GetDishPairingForWine200Response';
import { GetIngredientInformation200Response } from '../models/GetIngredientInformation200Response';
import { GetIngredientInformation200ResponseNutrition } from '../models/GetIngredientInformation200ResponseNutrition';
import { GetIngredientSubstitutes200Response } from '../models/GetIngredientSubstitutes200Response';
import { GetMealPlanTemplate200Response } from '../models/GetMealPlanTemplate200Response';
import { GetMealPlanTemplate200ResponseDaysInner } from '../models/GetMealPlanTemplate200ResponseDaysInner';
import { GetMealPlanTemplate200ResponseDaysInnerItemsInner } from '../models/GetMealPlanTemplate200ResponseDaysInnerItemsInner';
import { GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue } from '../models/GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue';
import { GetMealPlanTemplates200Response } from '../models/GetMealPlanTemplates200Response';
import { GetMealPlanWeek200Response } from '../models/GetMealPlanWeek200Response';
import { GetMealPlanWeek200ResponseDaysInner } from '../models/GetMealPlanWeek200ResponseDaysInner';
import { GetMealPlanWeek200ResponseDaysInnerItemsInner } from '../models/GetMealPlanWeek200ResponseDaysInnerItemsInner';
import { GetMealPlanWeek200ResponseDaysInnerItemsInnerValue } from '../models/GetMealPlanWeek200ResponseDaysInnerItemsInnerValue';
import { GetMealPlanWeek200ResponseDaysInnerNutritionSummary } from '../models/GetMealPlanWeek200ResponseDaysInnerNutritionSummary';
import { GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner } from '../models/GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner';
import { GetMenuItemInformation200Response } from '../models/GetMenuItemInformation200Response';
import { GetProductInformation200Response } from '../models/GetProductInformation200Response';
import { GetProductInformation200ResponseIngredientsInner } from '../models/GetProductInformation200ResponseIngredientsInner';
import { GetRandomFoodTrivia200Response } from '../models/GetRandomFoodTrivia200Response';
import { GetRandomRecipes200Response } from '../models/GetRandomRecipes200Response';
import { GetRandomRecipes200ResponseRecipesInner } from '../models/GetRandomRecipes200ResponseRecipesInner';
import { GetRecipeEquipmentByID200Response } from '../models/GetRecipeEquipmentByID200Response';
import { GetRecipeEquipmentByID200ResponseEquipmentInner } from '../models/GetRecipeEquipmentByID200ResponseEquipmentInner';
import { GetRecipeInformation200Response } from '../models/GetRecipeInformation200Response';
import { GetRecipeInformation200ResponseExtendedIngredientsInner } from '../models/GetRecipeInformation200ResponseExtendedIngredientsInner';
import { GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures } from '../models/GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures';
import { GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric } from '../models/GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric';
import { GetRecipeInformation200ResponseWinePairing } from '../models/GetRecipeInformation200ResponseWinePairing';
import { GetRecipeInformation200ResponseWinePairingProductMatchesInner } from '../models/GetRecipeInformation200ResponseWinePairingProductMatchesInner';
import { GetRecipeInformationBulk200ResponseInner } from '../models/GetRecipeInformationBulk200ResponseInner';
import { GetRecipeIngredientsByID200Response } from '../models/GetRecipeIngredientsByID200Response';
import { GetRecipeIngredientsByID200ResponseIngredientsInner } from '../models/GetRecipeIngredientsByID200ResponseIngredientsInner';
import { GetRecipeNutritionWidgetByID200Response } from '../models/GetRecipeNutritionWidgetByID200Response';
import { GetRecipeNutritionWidgetByID200ResponseBadInner } from '../models/GetRecipeNutritionWidgetByID200ResponseBadInner';
import { GetRecipeNutritionWidgetByID200ResponseGoodInner } from '../models/GetRecipeNutritionWidgetByID200ResponseGoodInner';
import { GetRecipePriceBreakdownByID200Response } from '../models/GetRecipePriceBreakdownByID200Response';
import { GetRecipePriceBreakdownByID200ResponseIngredientsInner } from '../models/GetRecipePriceBreakdownByID200ResponseIngredientsInner';
import { GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount } from '../models/GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount';
import { GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric } from '../models/GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric';
import { GetRecipeTasteByID200Response } from '../models/GetRecipeTasteByID200Response';
import { GetShoppingList200Response } from '../models/GetShoppingList200Response';
import { GetShoppingList200ResponseAislesInner } from '../models/GetShoppingList200ResponseAislesInner';
import { GetShoppingList200ResponseAislesInnerItemsInner } from '../models/GetShoppingList200ResponseAislesInnerItemsInner';
import { GetShoppingList200ResponseAislesInnerItemsInnerMeasures } from '../models/GetShoppingList200ResponseAislesInnerItemsInnerMeasures';
import { GetSimilarRecipes200ResponseInner } from '../models/GetSimilarRecipes200ResponseInner';
import { GetWineDescription200Response } from '../models/GetWineDescription200Response';
import { GetWinePairing200Response } from '../models/GetWinePairing200Response';
import { GetWinePairing200ResponseProductMatchesInner } from '../models/GetWinePairing200ResponseProductMatchesInner';
import { GetWineRecommendation200Response } from '../models/GetWineRecommendation200Response';
import { GetWineRecommendation200ResponseRecommendedWinesInner } from '../models/GetWineRecommendation200ResponseRecommendedWinesInner';
import { GuessNutritionByDishName200Response } from '../models/GuessNutritionByDishName200Response';
import { GuessNutritionByDishName200ResponseCalories } from '../models/GuessNutritionByDishName200ResponseCalories';
import { GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent } from '../models/GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent';
import { ImageAnalysisByURL200Response } from '../models/ImageAnalysisByURL200Response';
import { ImageAnalysisByURL200ResponseCategory } from '../models/ImageAnalysisByURL200ResponseCategory';
import { ImageAnalysisByURL200ResponseNutrition } from '../models/ImageAnalysisByURL200ResponseNutrition';
import { ImageAnalysisByURL200ResponseNutritionCalories } from '../models/ImageAnalysisByURL200ResponseNutritionCalories';
import { ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent } from '../models/ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent';
import { ImageAnalysisByURL200ResponseRecipesInner } from '../models/ImageAnalysisByURL200ResponseRecipesInner';
import { ImageClassificationByURL200Response } from '../models/ImageClassificationByURL200Response';
import { IngredientSearch200Response } from '../models/IngredientSearch200Response';
import { IngredientSearch200ResponseResultsInner } from '../models/IngredientSearch200ResponseResultsInner';
import { MapIngredientsToGroceryProducts200ResponseInner } from '../models/MapIngredientsToGroceryProducts200ResponseInner';
import { MapIngredientsToGroceryProducts200ResponseInnerProductsInner } from '../models/MapIngredientsToGroceryProducts200ResponseInnerProductsInner';
import { MapIngredientsToGroceryProductsRequest } from '../models/MapIngredientsToGroceryProductsRequest';
import { ParseIngredients200ResponseInner } from '../models/ParseIngredients200ResponseInner';
import { ParseIngredients200ResponseInnerEstimatedCost } from '../models/ParseIngredients200ResponseInnerEstimatedCost';
import { ParseIngredients200ResponseInnerNutrition } from '../models/ParseIngredients200ResponseInnerNutrition';
import { ParseIngredients200ResponseInnerNutritionCaloricBreakdown } from '../models/ParseIngredients200ResponseInnerNutritionCaloricBreakdown';
import { ParseIngredients200ResponseInnerNutritionNutrientsInner } from '../models/ParseIngredients200ResponseInnerNutritionNutrientsInner';
import { ParseIngredients200ResponseInnerNutritionPropertiesInner } from '../models/ParseIngredients200ResponseInnerNutritionPropertiesInner';
import { ParseIngredients200ResponseInnerNutritionWeightPerServing } from '../models/ParseIngredients200ResponseInnerNutritionWeightPerServing';
import { QuickAnswer200Response } from '../models/QuickAnswer200Response';
import { SearchAllFood200Response } from '../models/SearchAllFood200Response';
import { SearchAllFood200ResponseSearchResultsInner } from '../models/SearchAllFood200ResponseSearchResultsInner';
import { SearchAllFood200ResponseSearchResultsInnerResultsInner } from '../models/SearchAllFood200ResponseSearchResultsInnerResultsInner';
import { SearchCustomFoods200Response } from '../models/SearchCustomFoods200Response';
import { SearchCustomFoods200ResponseCustomFoodsInner } from '../models/SearchCustomFoods200ResponseCustomFoodsInner';
import { SearchFoodVideos200Response } from '../models/SearchFoodVideos200Response';
import { SearchFoodVideos200ResponseVideosInner } from '../models/SearchFoodVideos200ResponseVideosInner';
import { SearchGroceryProducts200Response } from '../models/SearchGroceryProducts200Response';
import { SearchGroceryProductsByUPC200Response } from '../models/SearchGroceryProductsByUPC200Response';
import { SearchGroceryProductsByUPC200ResponseIngredientsInner } from '../models/SearchGroceryProductsByUPC200ResponseIngredientsInner';
import { SearchGroceryProductsByUPC200ResponseNutrition } from '../models/SearchGroceryProductsByUPC200ResponseNutrition';
import { SearchGroceryProductsByUPC200ResponseServings } from '../models/SearchGroceryProductsByUPC200ResponseServings';
import { SearchMenuItems200Response } from '../models/SearchMenuItems200Response';
import { SearchMenuItems200ResponseMenuItemsInner } from '../models/SearchMenuItems200ResponseMenuItemsInner';
import { SearchRecipes200Response } from '../models/SearchRecipes200Response';
import { SearchRecipes200ResponseResultsInner } from '../models/SearchRecipes200ResponseResultsInner';
import { SearchRecipesByIngredients200ResponseInner } from '../models/SearchRecipesByIngredients200ResponseInner';
import { SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner } from '../models/SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner';
import { SearchRecipesByNutrients200ResponseInner } from '../models/SearchRecipesByNutrients200ResponseInner';
import { SearchRestaurants200Response } from '../models/SearchRestaurants200Response';
import { SearchRestaurants200ResponseRestaurantsInner } from '../models/SearchRestaurants200ResponseRestaurantsInner';
import { SearchRestaurants200ResponseRestaurantsInnerAddress } from '../models/SearchRestaurants200ResponseRestaurantsInnerAddress';
import { SearchRestaurants200ResponseRestaurantsInnerLocalHours } from '../models/SearchRestaurants200ResponseRestaurantsInnerLocalHours';
import { SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational } from '../models/SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational';
import { SearchSiteContent200Response } from '../models/SearchSiteContent200Response';
import { SearchSiteContent200ResponseArticlesInner } from '../models/SearchSiteContent200ResponseArticlesInner';
import { SearchSiteContent200ResponseGroceryProductsInner } from '../models/SearchSiteContent200ResponseGroceryProductsInner';
import { SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner } from '../models/SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner';
import { SummarizeRecipe200Response } from '../models/SummarizeRecipe200Response';
import { TalkToChatbot200Response } from '../models/TalkToChatbot200Response';
import { ObservableDefaultApi } from './ObservableAPI';

import { DefaultApiRequestFactory, DefaultApiResponseProcessor} from "../apis/DefaultApi";
export class PromiseDefaultApi {
    private api: ObservableDefaultApi

    public constructor(
        configuration: Configuration,
        requestFactory?: DefaultApiRequestFactory,
        responseProcessor?: DefaultApiResponseProcessor
    ) {
        this.api = new ObservableDefaultApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
     * Analyze Recipe
     * @param analyzeRecipeRequest Example request body.
     * @param language The input language, either \&quot;en\&quot; or \&quot;de\&quot;.
     * @param includeNutrition Whether nutrition data should be added to correctly parsed ingredients.
     * @param includeTaste Whether taste data should be added to correctly parsed ingredients.
     */
    public analyzeRecipe(analyzeRecipeRequest: AnalyzeRecipeRequest, language?: string, includeNutrition?: boolean, includeTaste?: boolean, _options?: Configuration): Promise<any> {
        const result = this.api.analyzeRecipe(analyzeRecipeRequest, language, includeNutrition, includeTaste, _options);
        return result.toPromise();
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
    public createRecipeCardGet(id: number, mask?: string, backgroundImage?: string, backgroundColor?: string, fontColor?: string, _options?: Configuration): Promise<any> {
        const result = this.api.createRecipeCardGet(id, mask, backgroundImage, backgroundColor, fontColor, _options);
        return result.toPromise();
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
    public searchRestaurants(query?: string, lat?: number, lng?: number, distance?: number, budget?: number, cuisine?: string, minRating?: number, isOpen?: boolean, sort?: string, page?: number, _options?: Configuration): Promise<SearchRestaurants200Response> {
        const result = this.api.searchRestaurants(query, lat, lng, distance, budget, cuisine, minRating, isOpen, sort, page, _options);
        return result.toPromise();
    }


}



import { ObservableIngredientsApi } from './ObservableAPI';

import { IngredientsApiRequestFactory, IngredientsApiResponseProcessor} from "../apis/IngredientsApi";
export class PromiseIngredientsApi {
    private api: ObservableIngredientsApi

    public constructor(
        configuration: Configuration,
        requestFactory?: IngredientsApiRequestFactory,
        responseProcessor?: IngredientsApiResponseProcessor
    ) {
        this.api = new ObservableIngredientsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Autocomplete the entry of an ingredient.
     * Autocomplete Ingredient Search
     * @param query The (natural language) search query.
     * @param number The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @param metaInformation Whether to return more meta information about the ingredients.
     * @param intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
     * @param language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     */
    public autocompleteIngredientSearch(query?: string, number?: number, metaInformation?: boolean, intolerances?: string, language?: 'en' | 'de', _options?: Configuration): Promise<Set<AutocompleteIngredientSearch200ResponseInner>> {
        const result = this.api.autocompleteIngredientSearch(query, number, metaInformation, intolerances, language, _options);
        return result.toPromise();
    }

    /**
     * Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?
     * Compute Ingredient Amount
     * @param id The id of the ingredient you want the amount for.
     * @param nutrient The target nutrient. See a list of supported nutrients.
     * @param target The target number of the given nutrient.
     * @param unit The target unit.
     */
    public computeIngredientAmount(id: number, nutrient: string, target: number, unit?: string, _options?: Configuration): Promise<ComputeIngredientAmount200Response> {
        const result = this.api.computeIngredientAmount(id, nutrient, target, unit, _options);
        return result.toPromise();
    }

    /**
     * Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
     * Get Ingredient Information
     * @param id The item&#39;s id.
     * @param amount The amount of this ingredient.
     * @param unit The unit for the given amount.
     */
    public getIngredientInformation(id: number, amount?: number, unit?: string, _options?: Configuration): Promise<GetIngredientInformation200Response> {
        const result = this.api.getIngredientInformation(id, amount, unit, _options);
        return result.toPromise();
    }

    /**
     * Search for substitutes for a given ingredient.
     * Get Ingredient Substitutes
     * @param ingredientName The name of the ingredient you want to replace.
     */
    public getIngredientSubstitutes(ingredientName: string, _options?: Configuration): Promise<GetIngredientSubstitutes200Response> {
        const result = this.api.getIngredientSubstitutes(ingredientName, _options);
        return result.toPromise();
    }

    /**
     * Search for substitutes for a given ingredient.
     * Get Ingredient Substitutes by ID
     * @param id The item&#39;s id.
     */
    public getIngredientSubstitutesByID(id: number, _options?: Configuration): Promise<GetIngredientSubstitutes200Response> {
        const result = this.api.getIngredientSubstitutesByID(id, _options);
        return result.toPromise();
    }

    /**
     * Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
     * Ingredient Search
     * @param query The (natural language) search query.
     * @param addChildren Whether to add children of found foods.
     * @param minProteinPercent The minimum percentage of protein the food must have (between 0 and 100).
     * @param maxProteinPercent The maximum percentage of protein the food can have (between 0 and 100).
     * @param minFatPercent The minimum percentage of fat the food must have (between 0 and 100).
     * @param maxFatPercent The maximum percentage of fat the food can have (between 0 and 100).
     * @param minCarbsPercent The minimum percentage of carbs the food must have (between 0 and 100).
     * @param maxCarbsPercent The maximum percentage of carbs the food can have (between 0 and 100).
     * @param metaInformation Whether to return more meta information about the ingredients.
     * @param intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
     * @param sort The strategy to sort recipes by. See a full list of supported sorting options.
     * @param sortDirection The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending).
     * @param offset The number of results to skip (between 0 and 900).
     * @param number The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @param language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     */
    public ingredientSearch(query?: string, addChildren?: boolean, minProteinPercent?: number, maxProteinPercent?: number, minFatPercent?: number, maxFatPercent?: number, minCarbsPercent?: number, maxCarbsPercent?: number, metaInformation?: boolean, intolerances?: string, sort?: string, sortDirection?: string, offset?: number, number?: number, language?: 'en' | 'de', _options?: Configuration): Promise<IngredientSearch200Response> {
        const result = this.api.ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number, language, _options);
        return result.toPromise();
    }

    /**
     * Visualize a recipe's ingredient list.
     * Ingredients by ID Image
     * @param id The recipe id.
     * @param measure Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.
     */
    public ingredientsByIDImage(id: number, measure?: 'us' | 'metric', _options?: Configuration): Promise<any> {
        const result = this.api.ingredientsByIDImage(id, measure, _options);
        return result.toPromise();
    }

    /**
     * Map a set of ingredients to products you can buy in the grocery store.
     * Map Ingredients to Grocery Products
     * @param mapIngredientsToGroceryProductsRequest 
     */
    public mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest: MapIngredientsToGroceryProductsRequest, _options?: Configuration): Promise<Set<MapIngredientsToGroceryProducts200ResponseInner>> {
        const result = this.api.mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest, _options);
        return result.toPromise();
    }

    /**
     * Visualize ingredients of a recipe. You can play around with that endpoint!
     * Ingredients Widget
     * @param contentType The content type.
     * @param language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     * @param accept Accept header.
     */
    public visualizeIngredients(contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', language?: 'en' | 'de', accept?: 'application/json' | 'text/html' | 'media/_*', _options?: Configuration): Promise<string> {
        const result = this.api.visualizeIngredients(contentType, language, accept, _options);
        return result.toPromise();
    }


}



import { ObservableMealPlanningApi } from './ObservableAPI';

import { MealPlanningApiRequestFactory, MealPlanningApiResponseProcessor} from "../apis/MealPlanningApi";
export class PromiseMealPlanningApi {
    private api: ObservableMealPlanningApi

    public constructor(
        configuration: Configuration,
        requestFactory?: MealPlanningApiRequestFactory,
        responseProcessor?: MealPlanningApiResponseProcessor
    ) {
        this.api = new ObservableMealPlanningApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Add a meal plan template for a user.
     * Add Meal Plan Template
     * @param username The username.
     * @param hash The private hash for the username.
     * @param addToMealPlanRequest 
     */
    public addMealPlanTemplate(username: string, hash: string, addToMealPlanRequest: AddToMealPlanRequest, _options?: Configuration): Promise<AddMealPlanTemplate200Response> {
        const result = this.api.addMealPlanTemplate(username, hash, addToMealPlanRequest, _options);
        return result.toPromise();
    }

    /**
     * Add an item to the user's meal plan.
     * Add to Meal Plan
     * @param username The username.
     * @param hash The private hash for the username.
     * @param addToMealPlanRequest 
     */
    public addToMealPlan(username: string, hash: string, addToMealPlanRequest: AddToMealPlanRequest, _options?: Configuration): Promise<any> {
        const result = this.api.addToMealPlan(username, hash, addToMealPlanRequest, _options);
        return result.toPromise();
    }

    /**
     * Add an item to the current shopping list of a user.
     * Add to Shopping List
     * @param username The username.
     * @param hash The private hash for the username.
     * @param addToMealPlanRequest 
     */
    public addToShoppingList(username: string, hash: string, addToMealPlanRequest: AddToMealPlanRequest, _options?: Configuration): Promise<GenerateShoppingList200Response> {
        const result = this.api.addToShoppingList(username, hash, addToMealPlanRequest, _options);
        return result.toPromise();
    }

    /**
     * Delete all planned items from the user's meal plan for a specific day.
     * Clear Meal Plan Day
     * @param username The username.
     * @param date The date in the format yyyy-mm-dd.
     * @param hash The private hash for the username.
     * @param clearMealPlanDayRequest 
     */
    public clearMealPlanDay(username: string, date: string, hash: string, clearMealPlanDayRequest: ClearMealPlanDayRequest, _options?: Configuration): Promise<any> {
        const result = this.api.clearMealPlanDay(username, date, hash, clearMealPlanDayRequest, _options);
        return result.toPromise();
    }

    /**
     * In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.
     * Connect User
     * @param body 
     */
    public connectUser(body: any, _options?: Configuration): Promise<ConnectUser200Response> {
        const result = this.api.connectUser(body, _options);
        return result.toPromise();
    }

    /**
     * Delete an item from the user's meal plan.
     * Delete from Meal Plan
     * @param username The username.
     * @param id The shopping list item id.
     * @param hash The private hash for the username.
     * @param deleteFromMealPlanRequest 
     */
    public deleteFromMealPlan(username: string, id: number, hash: string, deleteFromMealPlanRequest: DeleteFromMealPlanRequest, _options?: Configuration): Promise<any> {
        const result = this.api.deleteFromMealPlan(username, id, hash, deleteFromMealPlanRequest, _options);
        return result.toPromise();
    }

    /**
     * Delete an item from the current shopping list of the user.
     * Delete from Shopping List
     * @param username The username.
     * @param id The item&#39;s id.
     * @param hash The private hash for the username.
     * @param deleteFromMealPlanRequest 
     */
    public deleteFromShoppingList(username: string, id: number, hash: string, deleteFromMealPlanRequest: DeleteFromMealPlanRequest, _options?: Configuration): Promise<any> {
        const result = this.api.deleteFromShoppingList(username, id, hash, deleteFromMealPlanRequest, _options);
        return result.toPromise();
    }

    /**
     * Delete a meal plan template for a user.
     * Delete Meal Plan Template
     * @param username The username.
     * @param id The item&#39;s id.
     * @param hash The private hash for the username.
     * @param deleteFromMealPlanRequest 
     */
    public deleteMealPlanTemplate(username: string, id: number, hash: string, deleteFromMealPlanRequest: DeleteFromMealPlanRequest, _options?: Configuration): Promise<any> {
        const result = this.api.deleteMealPlanTemplate(username, id, hash, deleteFromMealPlanRequest, _options);
        return result.toPromise();
    }

    /**
     * Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
     * Generate Meal Plan
     * @param timeFrame Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;.
     * @param targetCalories What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
     * @param diet Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
     * @param exclude A comma-separated list of allergens or ingredients that must be excluded.
     */
    public generateMealPlan(timeFrame?: string, targetCalories?: number, diet?: string, exclude?: string, _options?: Configuration): Promise<GenerateMealPlan200Response> {
        const result = this.api.generateMealPlan(timeFrame, targetCalories, diet, exclude, _options);
        return result.toPromise();
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
    public generateShoppingList(username: string, startDate: string, endDate: string, hash: string, generateShoppingListRequest: GenerateShoppingListRequest, _options?: Configuration): Promise<GenerateShoppingList200Response> {
        const result = this.api.generateShoppingList(username, startDate, endDate, hash, generateShoppingListRequest, _options);
        return result.toPromise();
    }

    /**
     * Get information about a meal plan template.
     * Get Meal Plan Template
     * @param username The username.
     * @param id The item&#39;s id.
     * @param hash The private hash for the username.
     */
    public getMealPlanTemplate(username: string, id: number, hash: string, _options?: Configuration): Promise<GetMealPlanTemplate200Response> {
        const result = this.api.getMealPlanTemplate(username, id, hash, _options);
        return result.toPromise();
    }

    /**
     * Get meal plan templates from user or public ones.
     * Get Meal Plan Templates
     * @param username The username.
     * @param hash The private hash for the username.
     */
    public getMealPlanTemplates(username: string, hash: string, _options?: Configuration): Promise<GetMealPlanTemplates200Response> {
        const result = this.api.getMealPlanTemplates(username, hash, _options);
        return result.toPromise();
    }

    /**
     * Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.
     * Get Meal Plan Week
     * @param username The username.
     * @param startDate The start date of the meal planned week in the format yyyy-mm-dd.
     * @param hash The private hash for the username.
     */
    public getMealPlanWeek(username: string, startDate: string, hash: string, _options?: Configuration): Promise<GetMealPlanWeek200Response> {
        const result = this.api.getMealPlanWeek(username, startDate, hash, _options);
        return result.toPromise();
    }

    /**
     * Get the current shopping list for the given user.
     * Get Shopping List
     * @param username The username.
     * @param hash The private hash for the username.
     */
    public getShoppingList(username: string, hash: string, _options?: Configuration): Promise<GetShoppingList200Response> {
        const result = this.api.getShoppingList(username, hash, _options);
        return result.toPromise();
    }


}



import { ObservableMenuItemsApi } from './ObservableAPI';

import { MenuItemsApiRequestFactory, MenuItemsApiResponseProcessor} from "../apis/MenuItemsApi";
export class PromiseMenuItemsApi {
    private api: ObservableMenuItemsApi

    public constructor(
        configuration: Configuration,
        requestFactory?: MenuItemsApiRequestFactory,
        responseProcessor?: MenuItemsApiResponseProcessor
    ) {
        this.api = new ObservableMenuItemsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
     * Autocomplete Menu Item Search
     * @param query The (partial) search query.
     * @param number The number of results to return (between 1 and 25).
     */
    public autocompleteMenuItemSearch(query: string, number?: number, _options?: Configuration): Promise<AutocompleteMenuItemSearch200Response> {
        const result = this.api.autocompleteMenuItemSearch(query, number, _options);
        return result.toPromise();
    }

    /**
     * Use a menu item id to get all available information about a menu item, such as nutrition.
     * Get Menu Item Information
     * @param id The item&#39;s id.
     */
    public getMenuItemInformation(id: number, _options?: Configuration): Promise<GetMenuItemInformation200Response> {
        const result = this.api.getMenuItemInformation(id, _options);
        return result.toPromise();
    }

    /**
     * Visualize a menu item's nutritional information as HTML including CSS.
     * Menu Item Nutrition by ID Image
     * @param id The menu item id.
     */
    public menuItemNutritionByIDImage(id: number, _options?: Configuration): Promise<any> {
        const result = this.api.menuItemNutritionByIDImage(id, _options);
        return result.toPromise();
    }

    /**
     * Visualize a menu item's nutritional label information as an image.
     * Menu Item Nutrition Label Image
     * @param id The menu item id.
     * @param showOptionalNutrients Whether to show optional nutrients.
     * @param showZeroValues Whether to show zero values.
     * @param showIngredients Whether to show a list of ingredients.
     */
    public menuItemNutritionLabelImage(id: number, showOptionalNutrients?: boolean, showZeroValues?: boolean, showIngredients?: boolean, _options?: Configuration): Promise<any> {
        const result = this.api.menuItemNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients, _options);
        return result.toPromise();
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
    public menuItemNutritionLabelWidget(id: number, defaultCss?: boolean, showOptionalNutrients?: boolean, showZeroValues?: boolean, showIngredients?: boolean, _options?: Configuration): Promise<string> {
        const result = this.api.menuItemNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients, _options);
        return result.toPromise();
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
    public searchMenuItems(query?: string, minCalories?: number, maxCalories?: number, minCarbs?: number, maxCarbs?: number, minProtein?: number, maxProtein?: number, minFat?: number, maxFat?: number, addMenuItemInformation?: boolean, offset?: number, number?: number, _options?: Configuration): Promise<SearchMenuItems200Response> {
        const result = this.api.searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addMenuItemInformation, offset, number, _options);
        return result.toPromise();
    }

    /**
     * Visualize a menu item's nutritional information as HTML including CSS.
     * Menu Item Nutrition by ID Widget
     * @param id The item&#39;s id.
     * @param defaultCss Whether the default CSS should be added to the response.
     * @param accept Accept header.
     */
    public visualizeMenuItemNutritionByID(id: number, defaultCss?: boolean, accept?: 'application/json' | 'text/html' | 'media/_*', _options?: Configuration): Promise<string> {
        const result = this.api.visualizeMenuItemNutritionByID(id, defaultCss, accept, _options);
        return result.toPromise();
    }


}



import { ObservableMiscApi } from './ObservableAPI';

import { MiscApiRequestFactory, MiscApiResponseProcessor} from "../apis/MiscApi";
export class PromiseMiscApi {
    private api: ObservableMiscApi

    public constructor(
        configuration: Configuration,
        requestFactory?: MiscApiRequestFactory,
        responseProcessor?: MiscApiResponseProcessor
    ) {
        this.api = new ObservableMiscApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.
     * Detect Food in Text
     * @param contentType The content type.
     */
    public detectFoodInText(contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', _options?: Configuration): Promise<DetectFoodInText200Response> {
        const result = this.api.detectFoodInText(contentType, _options);
        return result.toPromise();
    }

    /**
     * Get a random joke that is related to food. Caution: this is an endpoint for adults!
     * Random Food Joke
     */
    public getARandomFoodJoke(_options?: Configuration): Promise<GetARandomFoodJoke200Response> {
        const result = this.api.getARandomFoodJoke(_options);
        return result.toPromise();
    }

    /**
     * This endpoint returns suggestions for things the user can say or ask the chatbot.
     * Conversation Suggests
     * @param query A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
     * @param number The number of suggestions to return (between 1 and 25).
     */
    public getConversationSuggests(query: string, number?: number, _options?: Configuration): Promise<GetConversationSuggests200Response> {
        const result = this.api.getConversationSuggests(query, number, _options);
        return result.toPromise();
    }

    /**
     * Returns random food trivia.
     * Random Food Trivia
     */
    public getRandomFoodTrivia(_options?: Configuration): Promise<GetRandomFoodTrivia200Response> {
        const result = this.api.getRandomFoodTrivia(_options);
        return result.toPromise();
    }

    /**
     * Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.
     * Image Analysis by URL
     * @param imageUrl The URL of the image to be analyzed.
     */
    public imageAnalysisByURL(imageUrl: string, _options?: Configuration): Promise<ImageAnalysisByURL200Response> {
        const result = this.api.imageAnalysisByURL(imageUrl, _options);
        return result.toPromise();
    }

    /**
     * Classify a food image.
     * Image Classification by URL
     * @param imageUrl The URL of the image to be classified.
     */
    public imageClassificationByURL(imageUrl: string, _options?: Configuration): Promise<ImageClassificationByURL200Response> {
        const result = this.api.imageClassificationByURL(imageUrl, _options);
        return result.toPromise();
    }

    /**
     * Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.
     * Search All Food
     * @param query The search query.
     * @param offset The number of results to skip (between 0 and 900).
     * @param number The maximum number of items to return (between 1 and 100). Defaults to 10.
     */
    public searchAllFood(query: string, offset?: number, number?: number, _options?: Configuration): Promise<SearchAllFood200Response> {
        const result = this.api.searchAllFood(query, offset, number, _options);
        return result.toPromise();
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
    public searchCustomFoods(username: string, hash: string, query?: string, offset?: number, number?: number, _options?: Configuration): Promise<SearchCustomFoods200Response> {
        const result = this.api.searchCustomFoods(username, hash, query, offset, number, _options);
        return result.toPromise();
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
    public searchFoodVideos(query?: string, type?: string, cuisine?: string, diet?: string, includeIngredients?: string, excludeIngredients?: string, minLength?: number, maxLength?: number, offset?: number, number?: number, _options?: Configuration): Promise<SearchFoodVideos200Response> {
        const result = this.api.searchFoodVideos(query, type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number, _options);
        return result.toPromise();
    }

    /**
     * Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.
     * Search Site Content
     * @param query The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content.
     */
    public searchSiteContent(query: string, _options?: Configuration): Promise<SearchSiteContent200Response> {
        const result = this.api.searchSiteContent(query, _options);
        return result.toPromise();
    }

    /**
     * This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.
     * Talk to Chatbot
     * @param text The request / question / answer from the user to the chatbot.
     * @param contextId An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.
     */
    public talkToChatbot(text: string, contextId?: string, _options?: Configuration): Promise<TalkToChatbot200Response> {
        const result = this.api.talkToChatbot(text, contextId, _options);
        return result.toPromise();
    }


}



import { ObservableProductsApi } from './ObservableAPI';

import { ProductsApiRequestFactory, ProductsApiResponseProcessor} from "../apis/ProductsApi";
export class PromiseProductsApi {
    private api: ObservableProductsApi

    public constructor(
        configuration: Configuration,
        requestFactory?: ProductsApiRequestFactory,
        responseProcessor?: ProductsApiResponseProcessor
    ) {
        this.api = new ObservableProductsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.
     * Autocomplete Product Search
     * @param query The (partial) search query.
     * @param number The number of results to return (between 1 and 25).
     */
    public autocompleteProductSearch(query: string, number?: number, _options?: Configuration): Promise<AutocompleteProductSearch200Response> {
        const result = this.api.autocompleteProductSearch(query, number, _options);
        return result.toPromise();
    }

    /**
     * This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.
     * Classify Grocery Product
     * @param classifyGroceryProductRequest 
     * @param locale The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
     */
    public classifyGroceryProduct(classifyGroceryProductRequest: ClassifyGroceryProductRequest, locale?: 'en_US' | 'en_GB', _options?: Configuration): Promise<ClassifyGroceryProduct200Response> {
        const result = this.api.classifyGroceryProduct(classifyGroceryProductRequest, locale, _options);
        return result.toPromise();
    }

    /**
     * Provide a set of product jsons, get back classified products.
     * Classify Grocery Product Bulk
     * @param classifyGroceryProductBulkRequestInner 
     * @param locale The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
     */
    public classifyGroceryProductBulk(classifyGroceryProductBulkRequestInner: Set<ClassifyGroceryProductBulkRequestInner>, locale?: string, _options?: Configuration): Promise<Set<ClassifyGroceryProductBulk200ResponseInner>> {
        const result = this.api.classifyGroceryProductBulk(classifyGroceryProductBulkRequestInner, locale, _options);
        return result.toPromise();
    }

    /**
     * Find comparable products to the given one.
     * Get Comparable Products
     * @param upc The UPC of the product for which you want to find comparable products.
     */
    public getComparableProducts(upc: number, _options?: Configuration): Promise<GetComparableProducts200Response> {
        const result = this.api.getComparableProducts(upc, _options);
        return result.toPromise();
    }

    /**
     * Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.
     * Get Product Information
     * @param id The item&#39;s id.
     */
    public getProductInformation(id: number, _options?: Configuration): Promise<GetProductInformation200Response> {
        const result = this.api.getProductInformation(id, _options);
        return result.toPromise();
    }

    /**
     * Visualize a product's nutritional information as an image.
     * Product Nutrition by ID Image
     * @param id The id of the product.
     */
    public productNutritionByIDImage(id: number, _options?: Configuration): Promise<any> {
        const result = this.api.productNutritionByIDImage(id, _options);
        return result.toPromise();
    }

    /**
     * Get a product's nutrition label as an image.
     * Product Nutrition Label Image
     * @param id The product id.
     * @param showOptionalNutrients Whether to show optional nutrients.
     * @param showZeroValues Whether to show zero values.
     * @param showIngredients Whether to show a list of ingredients.
     */
    public productNutritionLabelImage(id: number, showOptionalNutrients?: boolean, showZeroValues?: boolean, showIngredients?: boolean, _options?: Configuration): Promise<any> {
        const result = this.api.productNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients, _options);
        return result.toPromise();
    }

    /**
     * Get a product's nutrition label as an HTML widget.
     * Product Nutrition Label Widget
     * @param id The product id.
     * @param defaultCss Whether the default CSS should be added to the response.
     * @param showOptionalNutrients Whether to show optional nutrients.
     * @param showZeroValues Whether to show zero values.
     * @param showIngredients Whether to show a list of ingredients.
     */
    public productNutritionLabelWidget(id: number, defaultCss?: boolean, showOptionalNutrients?: boolean, showZeroValues?: boolean, showIngredients?: boolean, _options?: Configuration): Promise<string> {
        const result = this.api.productNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients, _options);
        return result.toPromise();
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
    public searchGroceryProducts(query?: string, minCalories?: number, maxCalories?: number, minCarbs?: number, maxCarbs?: number, minProtein?: number, maxProtein?: number, minFat?: number, maxFat?: number, addProductInformation?: boolean, offset?: number, number?: number, _options?: Configuration): Promise<SearchGroceryProducts200Response> {
        const result = this.api.searchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addProductInformation, offset, number, _options);
        return result.toPromise();
    }

    /**
     * Get information about a packaged food using its UPC.
     * Search Grocery Products by UPC
     * @param upc The product&#39;s UPC.
     */
    public searchGroceryProductsByUPC(upc: number, _options?: Configuration): Promise<SearchGroceryProductsByUPC200Response> {
        const result = this.api.searchGroceryProductsByUPC(upc, _options);
        return result.toPromise();
    }

    /**
     * Visualize a product's nutritional information as HTML including CSS.
     * Product Nutrition by ID Widget
     * @param id The item&#39;s id.
     * @param defaultCss Whether the default CSS should be added to the response.
     * @param accept Accept header.
     */
    public visualizeProductNutritionByID(id: number, defaultCss?: boolean, accept?: 'application/json' | 'text/html' | 'media/_*', _options?: Configuration): Promise<string> {
        const result = this.api.visualizeProductNutritionByID(id, defaultCss, accept, _options);
        return result.toPromise();
    }


}



import { ObservableRecipesApi } from './ObservableAPI';

import { RecipesApiRequestFactory, RecipesApiResponseProcessor} from "../apis/RecipesApi";
export class PromiseRecipesApi {
    private api: ObservableRecipesApi

    public constructor(
        configuration: Configuration,
        requestFactory?: RecipesApiRequestFactory,
        responseProcessor?: RecipesApiResponseProcessor
    ) {
        this.api = new ObservableRecipesApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Parse a recipe search query to find out its intention.
     * Analyze a Recipe Search Query
     * @param q The recipe search query.
     */
    public analyzeARecipeSearchQuery(q: string, _options?: Configuration): Promise<AnalyzeARecipeSearchQuery200Response> {
        const result = this.api.analyzeARecipeSearchQuery(q, _options);
        return result.toPromise();
    }

    /**
     * This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.
     * Analyze Recipe Instructions
     * @param contentType The content type.
     */
    public analyzeRecipeInstructions(contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', _options?: Configuration): Promise<AnalyzeRecipeInstructions200Response> {
        const result = this.api.analyzeRecipeInstructions(contentType, _options);
        return result.toPromise();
    }

    /**
     * Autocomplete a partial input to suggest possible recipe names.
     * Autocomplete Recipe Search
     * @param query The (natural language) search query.
     * @param number The maximum number of items to return (between 1 and 100). Defaults to 10.
     */
    public autocompleteRecipeSearch(query?: string, number?: number, _options?: Configuration): Promise<Set<AutocompleteRecipeSearch200ResponseInner>> {
        const result = this.api.autocompleteRecipeSearch(query, number, _options);
        return result.toPromise();
    }

    /**
     * Classify the recipe's cuisine.
     * Classify Cuisine
     * @param contentType The content type.
     */
    public classifyCuisine(contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', _options?: Configuration): Promise<ClassifyCuisine200Response> {
        const result = this.api.classifyCuisine(contentType, _options);
        return result.toPromise();
    }

    /**
     * Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.
     * Compute Glycemic Load
     * @param computeGlycemicLoadRequest 
     * @param language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     */
    public computeGlycemicLoad(computeGlycemicLoadRequest: ComputeGlycemicLoadRequest, language?: 'en' | 'de', _options?: Configuration): Promise<ComputeGlycemicLoad200Response> {
        const result = this.api.computeGlycemicLoad(computeGlycemicLoadRequest, language, _options);
        return result.toPromise();
    }

    /**
     * Convert amounts like \"2 cups of flour to grams\".
     * Convert Amounts
     * @param ingredientName The ingredient which you want to convert.
     * @param sourceAmount The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;.
     * @param sourceUnit The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot;
     * @param targetUnit The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot;
     */
    public convertAmounts(ingredientName: string, sourceAmount: number, sourceUnit: string, targetUnit: string, _options?: Configuration): Promise<ConvertAmounts200Response> {
        const result = this.api.convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit, _options);
        return result.toPromise();
    }

    /**
     * Generate a recipe card for a recipe.
     * Create Recipe Card
     * @param contentType The content type.
     */
    public createRecipeCard(contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', _options?: Configuration): Promise<CreateRecipeCard200Response> {
        const result = this.api.createRecipeCard(contentType, _options);
        return result.toPromise();
    }

    /**
     * Visualize a recipe's equipment list as an image.
     * Equipment by ID Image
     * @param id The recipe id.
     */
    public equipmentByIDImage(id: number, _options?: Configuration): Promise<any> {
        const result = this.api.equipmentByIDImage(id, _options);
        return result.toPromise();
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
    public extractRecipeFromWebsite(url: string, forceExtraction?: boolean, analyze?: boolean, includeNutrition?: boolean, includeTaste?: boolean, _options?: Configuration): Promise<GetRecipeInformation200Response> {
        const result = this.api.extractRecipeFromWebsite(url, forceExtraction, analyze, includeNutrition, includeTaste, _options);
        return result.toPromise();
    }

    /**
     * Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.
     * Get Analyzed Recipe Instructions
     * @param id The item&#39;s id.
     * @param stepBreakdown Whether to break down the recipe steps even more.
     */
    public getAnalyzedRecipeInstructions(id: number, stepBreakdown?: boolean, _options?: Configuration): Promise<GetAnalyzedRecipeInstructions200Response> {
        const result = this.api.getAnalyzedRecipeInstructions(id, stepBreakdown, _options);
        return result.toPromise();
    }

    /**
     * Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.
     * Get Random Recipes
     * @param limitLicense Whether the recipes should have an open license that allows display with proper attribution.
     * @param tags The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
     * @param number The maximum number of items to return (between 1 and 100). Defaults to 10.
     */
    public getRandomRecipes(limitLicense?: boolean, tags?: string, number?: number, _options?: Configuration): Promise<GetRandomRecipes200Response> {
        const result = this.api.getRandomRecipes(limitLicense, tags, number, _options);
        return result.toPromise();
    }

    /**
     * Get a recipe's equipment list.
     * Equipment by ID
     * @param id The item&#39;s id.
     */
    public getRecipeEquipmentByID(id: number, _options?: Configuration): Promise<GetRecipeEquipmentByID200Response> {
        const result = this.api.getRecipeEquipmentByID(id, _options);
        return result.toPromise();
    }

    /**
     * Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.
     * Get Recipe Information
     * @param id The item&#39;s id.
     * @param includeNutrition Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
     */
    public getRecipeInformation(id: number, includeNutrition?: boolean, _options?: Configuration): Promise<GetRecipeInformation200Response> {
        const result = this.api.getRecipeInformation(id, includeNutrition, _options);
        return result.toPromise();
    }

    /**
     * Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.
     * Get Recipe Information Bulk
     * @param ids A comma-separated list of recipe ids.
     * @param includeNutrition Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
     */
    public getRecipeInformationBulk(ids: string, includeNutrition?: boolean, _options?: Configuration): Promise<Set<GetRecipeInformationBulk200ResponseInner>> {
        const result = this.api.getRecipeInformationBulk(ids, includeNutrition, _options);
        return result.toPromise();
    }

    /**
     * Get a recipe's ingredient list.
     * Ingredients by ID
     * @param id The item&#39;s id.
     */
    public getRecipeIngredientsByID(id: number, _options?: Configuration): Promise<GetRecipeIngredientsByID200Response> {
        const result = this.api.getRecipeIngredientsByID(id, _options);
        return result.toPromise();
    }

    /**
     * Get a recipe's nutrition data.
     * Nutrition by ID
     * @param id The item&#39;s id.
     */
    public getRecipeNutritionWidgetByID(id: number, _options?: Configuration): Promise<GetRecipeNutritionWidgetByID200Response> {
        const result = this.api.getRecipeNutritionWidgetByID(id, _options);
        return result.toPromise();
    }

    /**
     * Get a recipe's price breakdown data.
     * Price Breakdown by ID
     * @param id The item&#39;s id.
     */
    public getRecipePriceBreakdownByID(id: number, _options?: Configuration): Promise<GetRecipePriceBreakdownByID200Response> {
        const result = this.api.getRecipePriceBreakdownByID(id, _options);
        return result.toPromise();
    }

    /**
     * Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
     * Taste by ID
     * @param id The item&#39;s id.
     * @param normalize Normalize to the strongest taste.
     */
    public getRecipeTasteByID(id: number, normalize?: boolean, _options?: Configuration): Promise<GetRecipeTasteByID200Response> {
        const result = this.api.getRecipeTasteByID(id, normalize, _options);
        return result.toPromise();
    }

    /**
     * Find recipes which are similar to the given one.
     * Get Similar Recipes
     * @param id The item&#39;s id.
     * @param number The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @param limitLicense Whether the recipes should have an open license that allows display with proper attribution.
     */
    public getSimilarRecipes(id: number, number?: number, limitLicense?: boolean, _options?: Configuration): Promise<Set<GetSimilarRecipes200ResponseInner>> {
        const result = this.api.getSimilarRecipes(id, number, limitLicense, _options);
        return result.toPromise();
    }

    /**
     * Estimate the macronutrients of a dish based on its title.
     * Guess Nutrition by Dish Name
     * @param title The title of the dish.
     */
    public guessNutritionByDishName(title: string, _options?: Configuration): Promise<GuessNutritionByDishName200Response> {
        const result = this.api.guessNutritionByDishName(title, _options);
        return result.toPromise();
    }

    /**
     * Visualize a recipe's ingredient list.
     * Ingredients by ID Image
     * @param id The recipe id.
     * @param measure Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.
     */
    public ingredientsByIDImage(id: number, measure?: 'us' | 'metric', _options?: Configuration): Promise<any> {
        const result = this.api.ingredientsByIDImage(id, measure, _options);
        return result.toPromise();
    }

    /**
     * Extract an ingredient from plain text.
     * Parse Ingredients
     * @param contentType The content type.
     * @param language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     */
    public parseIngredients(contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', language?: 'en' | 'de', _options?: Configuration): Promise<Set<ParseIngredients200ResponseInner>> {
        const result = this.api.parseIngredients(contentType, language, _options);
        return result.toPromise();
    }

    /**
     * Visualize a recipe's price breakdown.
     * Price Breakdown by ID Image
     * @param id The recipe id.
     */
    public priceBreakdownByIDImage(id: number, _options?: Configuration): Promise<any> {
        const result = this.api.priceBreakdownByIDImage(id, _options);
        return result.toPromise();
    }

    /**
     * Answer a nutrition related natural language question.
     * Quick Answer
     * @param q The nutrition related question.
     */
    public quickAnswer(q: string, _options?: Configuration): Promise<QuickAnswer200Response> {
        const result = this.api.quickAnswer(q, _options);
        return result.toPromise();
    }

    /**
     * Visualize a recipe's nutritional information as an image.
     * Recipe Nutrition by ID Image
     * @param id The recipe id.
     */
    public recipeNutritionByIDImage(id: number, _options?: Configuration): Promise<any> {
        const result = this.api.recipeNutritionByIDImage(id, _options);
        return result.toPromise();
    }

    /**
     * Get a recipe's nutrition label as an image.
     * Recipe Nutrition Label Image
     * @param id The recipe id.
     * @param showOptionalNutrients Whether to show optional nutrients.
     * @param showZeroValues Whether to show zero values.
     * @param showIngredients Whether to show a list of ingredients.
     */
    public recipeNutritionLabelImage(id: number, showOptionalNutrients?: boolean, showZeroValues?: boolean, showIngredients?: boolean, _options?: Configuration): Promise<any> {
        const result = this.api.recipeNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients, _options);
        return result.toPromise();
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
    public recipeNutritionLabelWidget(id: number, defaultCss?: boolean, showOptionalNutrients?: boolean, showZeroValues?: boolean, showIngredients?: boolean, _options?: Configuration): Promise<string> {
        const result = this.api.recipeNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients, _options);
        return result.toPromise();
    }

    /**
     * Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
     * Recipe Taste by ID Image
     * @param id The recipe id.
     * @param normalize Normalize to the strongest taste.
     * @param rgb Red, green, blue values for the chart color.
     */
    public recipeTasteByIDImage(id: number, normalize?: boolean, rgb?: string, _options?: Configuration): Promise<any> {
        const result = this.api.recipeTasteByIDImage(id, normalize, rgb, _options);
        return result.toPromise();
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
    public searchRecipes(query?: string, cuisine?: string, excludeCuisine?: string, diet?: string, intolerances?: string, equipment?: string, includeIngredients?: string, excludeIngredients?: string, type?: string, instructionsRequired?: boolean, fillIngredients?: boolean, addRecipeInformation?: boolean, addRecipeNutrition?: boolean, author?: string, tags?: string, recipeBoxId?: number, titleMatch?: string, maxReadyTime?: number, ignorePantry?: boolean, sort?: string, sortDirection?: string, minCarbs?: number, maxCarbs?: number, minProtein?: number, maxProtein?: number, minCalories?: number, maxCalories?: number, minFat?: number, maxFat?: number, minAlcohol?: number, maxAlcohol?: number, minCaffeine?: number, maxCaffeine?: number, minCopper?: number, maxCopper?: number, minCalcium?: number, maxCalcium?: number, minCholine?: number, maxCholine?: number, minCholesterol?: number, maxCholesterol?: number, minFluoride?: number, maxFluoride?: number, minSaturatedFat?: number, maxSaturatedFat?: number, minVitaminA?: number, maxVitaminA?: number, minVitaminC?: number, maxVitaminC?: number, minVitaminD?: number, maxVitaminD?: number, minVitaminE?: number, maxVitaminE?: number, minVitaminK?: number, maxVitaminK?: number, minVitaminB1?: number, maxVitaminB1?: number, minVitaminB2?: number, maxVitaminB2?: number, minVitaminB5?: number, maxVitaminB5?: number, minVitaminB3?: number, maxVitaminB3?: number, minVitaminB6?: number, maxVitaminB6?: number, minVitaminB12?: number, maxVitaminB12?: number, minFiber?: number, maxFiber?: number, minFolate?: number, maxFolate?: number, minFolicAcid?: number, maxFolicAcid?: number, minIodine?: number, maxIodine?: number, minIron?: number, maxIron?: number, minMagnesium?: number, maxMagnesium?: number, minManganese?: number, maxManganese?: number, minPhosphorus?: number, maxPhosphorus?: number, minPotassium?: number, maxPotassium?: number, minSelenium?: number, maxSelenium?: number, minSodium?: number, maxSodium?: number, minSugar?: number, maxSugar?: number, minZinc?: number, maxZinc?: number, offset?: number, number?: number, limitLicense?: boolean, _options?: Configuration): Promise<SearchRecipes200Response> {
        const result = this.api.searchRecipes(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense, _options);
        return result.toPromise();
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
    public searchRecipesByIngredients(ingredients?: string, number?: number, limitLicense?: boolean, ranking?: number, ignorePantry?: boolean, _options?: Configuration): Promise<Set<SearchRecipesByIngredients200ResponseInner>> {
        const result = this.api.searchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry, _options);
        return result.toPromise();
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
    public searchRecipesByNutrients(minCarbs?: number, maxCarbs?: number, minProtein?: number, maxProtein?: number, minCalories?: number, maxCalories?: number, minFat?: number, maxFat?: number, minAlcohol?: number, maxAlcohol?: number, minCaffeine?: number, maxCaffeine?: number, minCopper?: number, maxCopper?: number, minCalcium?: number, maxCalcium?: number, minCholine?: number, maxCholine?: number, minCholesterol?: number, maxCholesterol?: number, minFluoride?: number, maxFluoride?: number, minSaturatedFat?: number, maxSaturatedFat?: number, minVitaminA?: number, maxVitaminA?: number, minVitaminC?: number, maxVitaminC?: number, minVitaminD?: number, maxVitaminD?: number, minVitaminE?: number, maxVitaminE?: number, minVitaminK?: number, maxVitaminK?: number, minVitaminB1?: number, maxVitaminB1?: number, minVitaminB2?: number, maxVitaminB2?: number, minVitaminB5?: number, maxVitaminB5?: number, minVitaminB3?: number, maxVitaminB3?: number, minVitaminB6?: number, maxVitaminB6?: number, minVitaminB12?: number, maxVitaminB12?: number, minFiber?: number, maxFiber?: number, minFolate?: number, maxFolate?: number, minFolicAcid?: number, maxFolicAcid?: number, minIodine?: number, maxIodine?: number, minIron?: number, maxIron?: number, minMagnesium?: number, maxMagnesium?: number, minManganese?: number, maxManganese?: number, minPhosphorus?: number, maxPhosphorus?: number, minPotassium?: number, maxPotassium?: number, minSelenium?: number, maxSelenium?: number, minSodium?: number, maxSodium?: number, minSugar?: number, maxSugar?: number, minZinc?: number, maxZinc?: number, offset?: number, number?: number, random?: boolean, limitLicense?: boolean, _options?: Configuration): Promise<Set<SearchRecipesByNutrients200ResponseInner>> {
        const result = this.api.searchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense, _options);
        return result.toPromise();
    }

    /**
     * Automatically generate a short description that summarizes key information about the recipe.
     * Summarize Recipe
     * @param id The item&#39;s id.
     */
    public summarizeRecipe(id: number, _options?: Configuration): Promise<SummarizeRecipe200Response> {
        const result = this.api.summarizeRecipe(id, _options);
        return result.toPromise();
    }

    /**
     * Visualize the equipment used to make a recipe.
     * Equipment Widget
     * @param contentType The content type.
     * @param accept Accept header.
     */
    public visualizeEquipment(contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', accept?: 'application/json' | 'text/html' | 'media/_*', _options?: Configuration): Promise<string> {
        const result = this.api.visualizeEquipment(contentType, accept, _options);
        return result.toPromise();
    }

    /**
     * Visualize the price breakdown of a recipe.
     * Price Breakdown Widget
     * @param contentType The content type.
     * @param accept Accept header.
     * @param language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     */
    public visualizePriceBreakdown(contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', accept?: 'application/json' | 'text/html' | 'media/_*', language?: 'en' | 'de', _options?: Configuration): Promise<string> {
        const result = this.api.visualizePriceBreakdown(contentType, accept, language, _options);
        return result.toPromise();
    }

    /**
     * Visualize a recipe's equipment list.
     * Equipment by ID Widget
     * @param id The item&#39;s id.
     * @param defaultCss Whether the default CSS should be added to the response.
     */
    public visualizeRecipeEquipmentByID(id: number, defaultCss?: boolean, _options?: Configuration): Promise<string> {
        const result = this.api.visualizeRecipeEquipmentByID(id, defaultCss, _options);
        return result.toPromise();
    }

    /**
     * Visualize a recipe's ingredient list.
     * Ingredients by ID Widget
     * @param id The item&#39;s id.
     * @param defaultCss Whether the default CSS should be added to the response.
     * @param measure Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.
     */
    public visualizeRecipeIngredientsByID(id: number, defaultCss?: boolean, measure?: 'us' | 'metric', _options?: Configuration): Promise<string> {
        const result = this.api.visualizeRecipeIngredientsByID(id, defaultCss, measure, _options);
        return result.toPromise();
    }

    /**
     * Visualize a recipe's nutritional information as HTML including CSS.
     * Recipe Nutrition Widget
     * @param contentType The content type.
     * @param accept Accept header.
     * @param language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     */
    public visualizeRecipeNutrition(contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', accept?: 'application/json' | 'text/html' | 'media/_*', language?: 'en' | 'de', _options?: Configuration): Promise<string> {
        const result = this.api.visualizeRecipeNutrition(contentType, accept, language, _options);
        return result.toPromise();
    }

    /**
     * Visualize a recipe's nutritional information as HTML including CSS.
     * Recipe Nutrition by ID Widget
     * @param id The item&#39;s id.
     * @param defaultCss Whether the default CSS should be added to the response.
     * @param accept Accept header.
     */
    public visualizeRecipeNutritionByID(id: number, defaultCss?: boolean, accept?: 'application/json' | 'text/html' | 'media/_*', _options?: Configuration): Promise<string> {
        const result = this.api.visualizeRecipeNutritionByID(id, defaultCss, accept, _options);
        return result.toPromise();
    }

    /**
     * Visualize a recipe's price breakdown.
     * Price Breakdown by ID Widget
     * @param id The item&#39;s id.
     * @param defaultCss Whether the default CSS should be added to the response.
     */
    public visualizeRecipePriceBreakdownByID(id: number, defaultCss?: boolean, _options?: Configuration): Promise<string> {
        const result = this.api.visualizeRecipePriceBreakdownByID(id, defaultCss, _options);
        return result.toPromise();
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
    public visualizeRecipeTaste(language?: 'en' | 'de', contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data', accept?: 'application/json' | 'text/html' | 'media/_*', normalize?: boolean, rgb?: string, _options?: Configuration): Promise<string> {
        const result = this.api.visualizeRecipeTaste(language, contentType, accept, normalize, rgb, _options);
        return result.toPromise();
    }

    /**
     * Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
     * Recipe Taste by ID Widget
     * @param id The item&#39;s id.
     * @param normalize Whether to normalize to the strongest taste.
     * @param rgb Red, green, blue values for the chart color.
     */
    public visualizeRecipeTasteByID(id: number, normalize?: boolean, rgb?: string, _options?: Configuration): Promise<string> {
        const result = this.api.visualizeRecipeTasteByID(id, normalize, rgb, _options);
        return result.toPromise();
    }


}



import { ObservableWineApi } from './ObservableAPI';

import { WineApiRequestFactory, WineApiResponseProcessor} from "../apis/WineApi";
export class PromiseWineApi {
    private api: ObservableWineApi

    public constructor(
        configuration: Configuration,
        requestFactory?: WineApiRequestFactory,
        responseProcessor?: WineApiResponseProcessor
    ) {
        this.api = new ObservableWineApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Find a dish that goes well with a given wine.
     * Dish Pairing for Wine
     * @param wine The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.
     */
    public getDishPairingForWine(wine: string, _options?: Configuration): Promise<GetDishPairingForWine200Response> {
        const result = this.api.getDishPairingForWine(wine, _options);
        return result.toPromise();
    }

    /**
     * Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".
     * Wine Description
     * @param wine The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.
     */
    public getWineDescription(wine: string, _options?: Configuration): Promise<GetWineDescription200Response> {
        const result = this.api.getWineDescription(wine, _options);
        return result.toPromise();
    }

    /**
     * Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").
     * Wine Pairing
     * @param food The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).
     * @param maxPrice The maximum price for the specific wine recommendation in USD.
     */
    public getWinePairing(food: string, maxPrice?: number, _options?: Configuration): Promise<GetWinePairing200Response> {
        const result = this.api.getWinePairing(food, maxPrice, _options);
        return result.toPromise();
    }

    /**
     * Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".
     * Wine Recommendation
     * @param wine The type of wine to get a specific product recommendation for.
     * @param maxPrice The maximum price for the specific wine recommendation in USD.
     * @param minRating The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
     * @param number The number of wine recommendations expected (between 1 and 100).
     */
    public getWineRecommendation(wine: string, maxPrice?: number, minRating?: number, number?: number, _options?: Configuration): Promise<GetWineRecommendation200Response> {
        const result = this.api.getWineRecommendation(wine, maxPrice, minRating, number, _options);
        return result.toPromise();
    }


}



