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

import { ObservableDefaultApi } from "./ObservableAPI";
import { DefaultApiRequestFactory, DefaultApiResponseProcessor} from "../apis/DefaultApi";

export interface DefaultApiAnalyzeRecipeRequest {
    /**
     * Example request body.
     * @type AnalyzeRecipeRequest
     * @memberof DefaultApianalyzeRecipe
     */
    analyzeRecipeRequest: AnalyzeRecipeRequest
    /**
     * The input language, either \&quot;en\&quot; or \&quot;de\&quot;.
     * @type string
     * @memberof DefaultApianalyzeRecipe
     */
    language?: string
    /**
     * Whether nutrition data should be added to correctly parsed ingredients.
     * @type boolean
     * @memberof DefaultApianalyzeRecipe
     */
    includeNutrition?: boolean
    /**
     * Whether taste data should be added to correctly parsed ingredients.
     * @type boolean
     * @memberof DefaultApianalyzeRecipe
     */
    includeTaste?: boolean
}

export interface DefaultApiCreateRecipeCardGetRequest {
    /**
     * The recipe id.
     * @type number
     * @memberof DefaultApicreateRecipeCardGet
     */
    id: number
    /**
     * The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;).
     * @type string
     * @memberof DefaultApicreateRecipeCardGet
     */
    mask?: string
    /**
     * The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;).
     * @type string
     * @memberof DefaultApicreateRecipeCardGet
     */
    backgroundImage?: string
    /**
     * The background color for the recipe card as a hex-string.
     * @type string
     * @memberof DefaultApicreateRecipeCardGet
     */
    backgroundColor?: string
    /**
     * The font color for the recipe card as a hex-string.
     * @type string
     * @memberof DefaultApicreateRecipeCardGet
     */
    fontColor?: string
}

export interface DefaultApiSearchRestaurantsRequest {
    /**
     * The search query.
     * @type string
     * @memberof DefaultApisearchRestaurants
     */
    query?: string
    /**
     * The latitude of the user&#39;s location.
     * @type number
     * @memberof DefaultApisearchRestaurants
     */
    lat?: number
    /**
     * The longitude of the user&#39;s location.\&quot;.
     * @type number
     * @memberof DefaultApisearchRestaurants
     */
    lng?: number
    /**
     * The distance around the location in miles.
     * @type number
     * @memberof DefaultApisearchRestaurants
     */
    distance?: number
    /**
     * The user&#39;s budget for a meal in USD.
     * @type number
     * @memberof DefaultApisearchRestaurants
     */
    budget?: number
    /**
     * The cuisine of the restaurant.
     * @type string
     * @memberof DefaultApisearchRestaurants
     */
    cuisine?: string
    /**
     * The minimum rating of the restaurant between 0 and 5.
     * @type number
     * @memberof DefaultApisearchRestaurants
     */
    minRating?: number
    /**
     * Whether the restaurant must be open at the time of search.
     * @type boolean
     * @memberof DefaultApisearchRestaurants
     */
    isOpen?: boolean
    /**
     * How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;.
     * @type string
     * @memberof DefaultApisearchRestaurants
     */
    sort?: string
    /**
     * The page number of results.
     * @type number
     * @memberof DefaultApisearchRestaurants
     */
    page?: number
}

export class ObjectDefaultApi {
    private api: ObservableDefaultApi

    public constructor(configuration: Configuration, requestFactory?: DefaultApiRequestFactory, responseProcessor?: DefaultApiResponseProcessor) {
        this.api = new ObservableDefaultApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
     * Analyze Recipe
     * @param param the request object
     */
    public analyzeRecipe(param: DefaultApiAnalyzeRecipeRequest, options?: Configuration): Promise<any> {
        return this.api.analyzeRecipe(param.analyzeRecipeRequest, param.language, param.includeNutrition, param.includeTaste,  options).toPromise();
    }

    /**
     * Generate a recipe card for a recipe.
     * Create Recipe Card
     * @param param the request object
     */
    public createRecipeCardGet(param: DefaultApiCreateRecipeCardGetRequest, options?: Configuration): Promise<any> {
        return this.api.createRecipeCardGet(param.id, param.mask, param.backgroundImage, param.backgroundColor, param.fontColor,  options).toPromise();
    }

    /**
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     * Search Restaurants
     * @param param the request object
     */
    public searchRestaurants(param: DefaultApiSearchRestaurantsRequest = {}, options?: Configuration): Promise<SearchRestaurants200Response> {
        return this.api.searchRestaurants(param.query, param.lat, param.lng, param.distance, param.budget, param.cuisine, param.minRating, param.isOpen, param.sort, param.page,  options).toPromise();
    }

}

import { ObservableIngredientsApi } from "./ObservableAPI";
import { IngredientsApiRequestFactory, IngredientsApiResponseProcessor} from "../apis/IngredientsApi";

export interface IngredientsApiAutocompleteIngredientSearchRequest {
    /**
     * The (natural language) search query.
     * @type string
     * @memberof IngredientsApiautocompleteIngredientSearch
     */
    query?: string
    /**
     * The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @type number
     * @memberof IngredientsApiautocompleteIngredientSearch
     */
    number?: number
    /**
     * Whether to return more meta information about the ingredients.
     * @type boolean
     * @memberof IngredientsApiautocompleteIngredientSearch
     */
    metaInformation?: boolean
    /**
     * A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
     * @type string
     * @memberof IngredientsApiautocompleteIngredientSearch
     */
    intolerances?: string
    /**
     * The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     * @type &#39;en&#39; | &#39;de&#39;
     * @memberof IngredientsApiautocompleteIngredientSearch
     */
    language?: 'en' | 'de'
}

export interface IngredientsApiComputeIngredientAmountRequest {
    /**
     * The id of the ingredient you want the amount for.
     * @type number
     * @memberof IngredientsApicomputeIngredientAmount
     */
    id: number
    /**
     * The target nutrient. See a list of supported nutrients.
     * @type string
     * @memberof IngredientsApicomputeIngredientAmount
     */
    nutrient: string
    /**
     * The target number of the given nutrient.
     * @type number
     * @memberof IngredientsApicomputeIngredientAmount
     */
    target: number
    /**
     * The target unit.
     * @type string
     * @memberof IngredientsApicomputeIngredientAmount
     */
    unit?: string
}

export interface IngredientsApiGetIngredientInformationRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof IngredientsApigetIngredientInformation
     */
    id: number
    /**
     * The amount of this ingredient.
     * @type number
     * @memberof IngredientsApigetIngredientInformation
     */
    amount?: number
    /**
     * The unit for the given amount.
     * @type string
     * @memberof IngredientsApigetIngredientInformation
     */
    unit?: string
}

export interface IngredientsApiGetIngredientSubstitutesRequest {
    /**
     * The name of the ingredient you want to replace.
     * @type string
     * @memberof IngredientsApigetIngredientSubstitutes
     */
    ingredientName: string
}

export interface IngredientsApiGetIngredientSubstitutesByIDRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof IngredientsApigetIngredientSubstitutesByID
     */
    id: number
}

export interface IngredientsApiIngredientSearchRequest {
    /**
     * The (natural language) search query.
     * @type string
     * @memberof IngredientsApiingredientSearch
     */
    query?: string
    /**
     * Whether to add children of found foods.
     * @type boolean
     * @memberof IngredientsApiingredientSearch
     */
    addChildren?: boolean
    /**
     * The minimum percentage of protein the food must have (between 0 and 100).
     * @type number
     * @memberof IngredientsApiingredientSearch
     */
    minProteinPercent?: number
    /**
     * The maximum percentage of protein the food can have (between 0 and 100).
     * @type number
     * @memberof IngredientsApiingredientSearch
     */
    maxProteinPercent?: number
    /**
     * The minimum percentage of fat the food must have (between 0 and 100).
     * @type number
     * @memberof IngredientsApiingredientSearch
     */
    minFatPercent?: number
    /**
     * The maximum percentage of fat the food can have (between 0 and 100).
     * @type number
     * @memberof IngredientsApiingredientSearch
     */
    maxFatPercent?: number
    /**
     * The minimum percentage of carbs the food must have (between 0 and 100).
     * @type number
     * @memberof IngredientsApiingredientSearch
     */
    minCarbsPercent?: number
    /**
     * The maximum percentage of carbs the food can have (between 0 and 100).
     * @type number
     * @memberof IngredientsApiingredientSearch
     */
    maxCarbsPercent?: number
    /**
     * Whether to return more meta information about the ingredients.
     * @type boolean
     * @memberof IngredientsApiingredientSearch
     */
    metaInformation?: boolean
    /**
     * A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
     * @type string
     * @memberof IngredientsApiingredientSearch
     */
    intolerances?: string
    /**
     * The strategy to sort recipes by. See a full list of supported sorting options.
     * @type string
     * @memberof IngredientsApiingredientSearch
     */
    sort?: string
    /**
     * The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending).
     * @type string
     * @memberof IngredientsApiingredientSearch
     */
    sortDirection?: string
    /**
     * The number of results to skip (between 0 and 900).
     * @type number
     * @memberof IngredientsApiingredientSearch
     */
    offset?: number
    /**
     * The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @type number
     * @memberof IngredientsApiingredientSearch
     */
    number?: number
    /**
     * The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     * @type &#39;en&#39; | &#39;de&#39;
     * @memberof IngredientsApiingredientSearch
     */
    language?: 'en' | 'de'
}

export interface IngredientsApiIngredientsByIDImageRequest {
    /**
     * The recipe id.
     * @type number
     * @memberof IngredientsApiingredientsByIDImage
     */
    id: number
    /**
     * Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.
     * @type &#39;us&#39; | &#39;metric&#39;
     * @memberof IngredientsApiingredientsByIDImage
     */
    measure?: 'us' | 'metric'
}

export interface IngredientsApiMapIngredientsToGroceryProductsRequest {
    /**
     * 
     * @type MapIngredientsToGroceryProductsRequest
     * @memberof IngredientsApimapIngredientsToGroceryProducts
     */
    mapIngredientsToGroceryProductsRequest: MapIngredientsToGroceryProductsRequest
}

export interface IngredientsApiVisualizeIngredientsRequest {
    /**
     * The content type.
     * @type &#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;
     * @memberof IngredientsApivisualizeIngredients
     */
    contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data'
    /**
     * The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     * @type &#39;en&#39; | &#39;de&#39;
     * @memberof IngredientsApivisualizeIngredients
     */
    language?: 'en' | 'de'
    /**
     * Accept header.
     * @type &#39;application/json&#39; | &#39;text/html&#39; | &#39;media/_*&#39;
     * @memberof IngredientsApivisualizeIngredients
     */
    accept?: 'application/json' | 'text/html' | 'media/_*'
}

export class ObjectIngredientsApi {
    private api: ObservableIngredientsApi

    public constructor(configuration: Configuration, requestFactory?: IngredientsApiRequestFactory, responseProcessor?: IngredientsApiResponseProcessor) {
        this.api = new ObservableIngredientsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Autocomplete the entry of an ingredient.
     * Autocomplete Ingredient Search
     * @param param the request object
     */
    public autocompleteIngredientSearch(param: IngredientsApiAutocompleteIngredientSearchRequest = {}, options?: Configuration): Promise<Set<AutocompleteIngredientSearch200ResponseInner>> {
        return this.api.autocompleteIngredientSearch(param.query, param.number, param.metaInformation, param.intolerances, param.language,  options).toPromise();
    }

    /**
     * Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?
     * Compute Ingredient Amount
     * @param param the request object
     */
    public computeIngredientAmount(param: IngredientsApiComputeIngredientAmountRequest, options?: Configuration): Promise<ComputeIngredientAmount200Response> {
        return this.api.computeIngredientAmount(param.id, param.nutrient, param.target, param.unit,  options).toPromise();
    }

    /**
     * Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
     * Get Ingredient Information
     * @param param the request object
     */
    public getIngredientInformation(param: IngredientsApiGetIngredientInformationRequest, options?: Configuration): Promise<GetIngredientInformation200Response> {
        return this.api.getIngredientInformation(param.id, param.amount, param.unit,  options).toPromise();
    }

    /**
     * Search for substitutes for a given ingredient.
     * Get Ingredient Substitutes
     * @param param the request object
     */
    public getIngredientSubstitutes(param: IngredientsApiGetIngredientSubstitutesRequest, options?: Configuration): Promise<GetIngredientSubstitutes200Response> {
        return this.api.getIngredientSubstitutes(param.ingredientName,  options).toPromise();
    }

    /**
     * Search for substitutes for a given ingredient.
     * Get Ingredient Substitutes by ID
     * @param param the request object
     */
    public getIngredientSubstitutesByID(param: IngredientsApiGetIngredientSubstitutesByIDRequest, options?: Configuration): Promise<GetIngredientSubstitutes200Response> {
        return this.api.getIngredientSubstitutesByID(param.id,  options).toPromise();
    }

    /**
     * Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
     * Ingredient Search
     * @param param the request object
     */
    public ingredientSearch(param: IngredientsApiIngredientSearchRequest = {}, options?: Configuration): Promise<IngredientSearch200Response> {
        return this.api.ingredientSearch(param.query, param.addChildren, param.minProteinPercent, param.maxProteinPercent, param.minFatPercent, param.maxFatPercent, param.minCarbsPercent, param.maxCarbsPercent, param.metaInformation, param.intolerances, param.sort, param.sortDirection, param.offset, param.number, param.language,  options).toPromise();
    }

    /**
     * Visualize a recipe's ingredient list.
     * Ingredients by ID Image
     * @param param the request object
     */
    public ingredientsByIDImage(param: IngredientsApiIngredientsByIDImageRequest, options?: Configuration): Promise<any> {
        return this.api.ingredientsByIDImage(param.id, param.measure,  options).toPromise();
    }

    /**
     * Map a set of ingredients to products you can buy in the grocery store.
     * Map Ingredients to Grocery Products
     * @param param the request object
     */
    public mapIngredientsToGroceryProducts(param: IngredientsApiMapIngredientsToGroceryProductsRequest, options?: Configuration): Promise<Set<MapIngredientsToGroceryProducts200ResponseInner>> {
        return this.api.mapIngredientsToGroceryProducts(param.mapIngredientsToGroceryProductsRequest,  options).toPromise();
    }

    /**
     * Visualize ingredients of a recipe. You can play around with that endpoint!
     * Ingredients Widget
     * @param param the request object
     */
    public visualizeIngredients(param: IngredientsApiVisualizeIngredientsRequest = {}, options?: Configuration): Promise<string> {
        return this.api.visualizeIngredients(param.contentType, param.language, param.accept,  options).toPromise();
    }

}

import { ObservableMealPlanningApi } from "./ObservableAPI";
import { MealPlanningApiRequestFactory, MealPlanningApiResponseProcessor} from "../apis/MealPlanningApi";

export interface MealPlanningApiAddMealPlanTemplateRequest {
    /**
     * The username.
     * @type string
     * @memberof MealPlanningApiaddMealPlanTemplate
     */
    username: string
    /**
     * The private hash for the username.
     * @type string
     * @memberof MealPlanningApiaddMealPlanTemplate
     */
    hash: string
    /**
     * 
     * @type AddToMealPlanRequest
     * @memberof MealPlanningApiaddMealPlanTemplate
     */
    addToMealPlanRequest: AddToMealPlanRequest
}

export interface MealPlanningApiAddToMealPlanRequest {
    /**
     * The username.
     * @type string
     * @memberof MealPlanningApiaddToMealPlan
     */
    username: string
    /**
     * The private hash for the username.
     * @type string
     * @memberof MealPlanningApiaddToMealPlan
     */
    hash: string
    /**
     * 
     * @type AddToMealPlanRequest
     * @memberof MealPlanningApiaddToMealPlan
     */
    addToMealPlanRequest: AddToMealPlanRequest
}

export interface MealPlanningApiAddToShoppingListRequest {
    /**
     * The username.
     * @type string
     * @memberof MealPlanningApiaddToShoppingList
     */
    username: string
    /**
     * The private hash for the username.
     * @type string
     * @memberof MealPlanningApiaddToShoppingList
     */
    hash: string
    /**
     * 
     * @type AddToMealPlanRequest
     * @memberof MealPlanningApiaddToShoppingList
     */
    addToMealPlanRequest: AddToMealPlanRequest
}

export interface MealPlanningApiClearMealPlanDayRequest {
    /**
     * The username.
     * @type string
     * @memberof MealPlanningApiclearMealPlanDay
     */
    username: string
    /**
     * The date in the format yyyy-mm-dd.
     * @type string
     * @memberof MealPlanningApiclearMealPlanDay
     */
    date: string
    /**
     * The private hash for the username.
     * @type string
     * @memberof MealPlanningApiclearMealPlanDay
     */
    hash: string
    /**
     * 
     * @type ClearMealPlanDayRequest
     * @memberof MealPlanningApiclearMealPlanDay
     */
    clearMealPlanDayRequest: ClearMealPlanDayRequest
}

export interface MealPlanningApiConnectUserRequest {
    /**
     * 
     * @type any
     * @memberof MealPlanningApiconnectUser
     */
    body: any
}

export interface MealPlanningApiDeleteFromMealPlanRequest {
    /**
     * The username.
     * @type string
     * @memberof MealPlanningApideleteFromMealPlan
     */
    username: string
    /**
     * The shopping list item id.
     * @type number
     * @memberof MealPlanningApideleteFromMealPlan
     */
    id: number
    /**
     * The private hash for the username.
     * @type string
     * @memberof MealPlanningApideleteFromMealPlan
     */
    hash: string
    /**
     * 
     * @type DeleteFromMealPlanRequest
     * @memberof MealPlanningApideleteFromMealPlan
     */
    deleteFromMealPlanRequest: DeleteFromMealPlanRequest
}

export interface MealPlanningApiDeleteFromShoppingListRequest {
    /**
     * The username.
     * @type string
     * @memberof MealPlanningApideleteFromShoppingList
     */
    username: string
    /**
     * The item&#39;s id.
     * @type number
     * @memberof MealPlanningApideleteFromShoppingList
     */
    id: number
    /**
     * The private hash for the username.
     * @type string
     * @memberof MealPlanningApideleteFromShoppingList
     */
    hash: string
    /**
     * 
     * @type DeleteFromMealPlanRequest
     * @memberof MealPlanningApideleteFromShoppingList
     */
    deleteFromMealPlanRequest: DeleteFromMealPlanRequest
}

export interface MealPlanningApiDeleteMealPlanTemplateRequest {
    /**
     * The username.
     * @type string
     * @memberof MealPlanningApideleteMealPlanTemplate
     */
    username: string
    /**
     * The item&#39;s id.
     * @type number
     * @memberof MealPlanningApideleteMealPlanTemplate
     */
    id: number
    /**
     * The private hash for the username.
     * @type string
     * @memberof MealPlanningApideleteMealPlanTemplate
     */
    hash: string
    /**
     * 
     * @type DeleteFromMealPlanRequest
     * @memberof MealPlanningApideleteMealPlanTemplate
     */
    deleteFromMealPlanRequest: DeleteFromMealPlanRequest
}

export interface MealPlanningApiGenerateMealPlanRequest {
    /**
     * Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;.
     * @type string
     * @memberof MealPlanningApigenerateMealPlan
     */
    timeFrame?: string
    /**
     * What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
     * @type number
     * @memberof MealPlanningApigenerateMealPlan
     */
    targetCalories?: number
    /**
     * Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
     * @type string
     * @memberof MealPlanningApigenerateMealPlan
     */
    diet?: string
    /**
     * A comma-separated list of allergens or ingredients that must be excluded.
     * @type string
     * @memberof MealPlanningApigenerateMealPlan
     */
    exclude?: string
}

export interface MealPlanningApiGenerateShoppingListRequest {
    /**
     * The username.
     * @type string
     * @memberof MealPlanningApigenerateShoppingList
     */
    username: string
    /**
     * The start date in the format yyyy-mm-dd.
     * @type string
     * @memberof MealPlanningApigenerateShoppingList
     */
    startDate: string
    /**
     * The end date in the format yyyy-mm-dd.
     * @type string
     * @memberof MealPlanningApigenerateShoppingList
     */
    endDate: string
    /**
     * The private hash for the username.
     * @type string
     * @memberof MealPlanningApigenerateShoppingList
     */
    hash: string
    /**
     * 
     * @type GenerateShoppingListRequest
     * @memberof MealPlanningApigenerateShoppingList
     */
    generateShoppingListRequest: GenerateShoppingListRequest
}

export interface MealPlanningApiGetMealPlanTemplateRequest {
    /**
     * The username.
     * @type string
     * @memberof MealPlanningApigetMealPlanTemplate
     */
    username: string
    /**
     * The item&#39;s id.
     * @type number
     * @memberof MealPlanningApigetMealPlanTemplate
     */
    id: number
    /**
     * The private hash for the username.
     * @type string
     * @memberof MealPlanningApigetMealPlanTemplate
     */
    hash: string
}

export interface MealPlanningApiGetMealPlanTemplatesRequest {
    /**
     * The username.
     * @type string
     * @memberof MealPlanningApigetMealPlanTemplates
     */
    username: string
    /**
     * The private hash for the username.
     * @type string
     * @memberof MealPlanningApigetMealPlanTemplates
     */
    hash: string
}

export interface MealPlanningApiGetMealPlanWeekRequest {
    /**
     * The username.
     * @type string
     * @memberof MealPlanningApigetMealPlanWeek
     */
    username: string
    /**
     * The start date of the meal planned week in the format yyyy-mm-dd.
     * @type string
     * @memberof MealPlanningApigetMealPlanWeek
     */
    startDate: string
    /**
     * The private hash for the username.
     * @type string
     * @memberof MealPlanningApigetMealPlanWeek
     */
    hash: string
}

export interface MealPlanningApiGetShoppingListRequest {
    /**
     * The username.
     * @type string
     * @memberof MealPlanningApigetShoppingList
     */
    username: string
    /**
     * The private hash for the username.
     * @type string
     * @memberof MealPlanningApigetShoppingList
     */
    hash: string
}

export class ObjectMealPlanningApi {
    private api: ObservableMealPlanningApi

    public constructor(configuration: Configuration, requestFactory?: MealPlanningApiRequestFactory, responseProcessor?: MealPlanningApiResponseProcessor) {
        this.api = new ObservableMealPlanningApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Add a meal plan template for a user.
     * Add Meal Plan Template
     * @param param the request object
     */
    public addMealPlanTemplate(param: MealPlanningApiAddMealPlanTemplateRequest, options?: Configuration): Promise<AddMealPlanTemplate200Response> {
        return this.api.addMealPlanTemplate(param.username, param.hash, param.addToMealPlanRequest,  options).toPromise();
    }

    /**
     * Add an item to the user's meal plan.
     * Add to Meal Plan
     * @param param the request object
     */
    public addToMealPlan(param: MealPlanningApiAddToMealPlanRequest, options?: Configuration): Promise<any> {
        return this.api.addToMealPlan(param.username, param.hash, param.addToMealPlanRequest,  options).toPromise();
    }

    /**
     * Add an item to the current shopping list of a user.
     * Add to Shopping List
     * @param param the request object
     */
    public addToShoppingList(param: MealPlanningApiAddToShoppingListRequest, options?: Configuration): Promise<GenerateShoppingList200Response> {
        return this.api.addToShoppingList(param.username, param.hash, param.addToMealPlanRequest,  options).toPromise();
    }

    /**
     * Delete all planned items from the user's meal plan for a specific day.
     * Clear Meal Plan Day
     * @param param the request object
     */
    public clearMealPlanDay(param: MealPlanningApiClearMealPlanDayRequest, options?: Configuration): Promise<any> {
        return this.api.clearMealPlanDay(param.username, param.date, param.hash, param.clearMealPlanDayRequest,  options).toPromise();
    }

    /**
     * In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.
     * Connect User
     * @param param the request object
     */
    public connectUser(param: MealPlanningApiConnectUserRequest, options?: Configuration): Promise<ConnectUser200Response> {
        return this.api.connectUser(param.body,  options).toPromise();
    }

    /**
     * Delete an item from the user's meal plan.
     * Delete from Meal Plan
     * @param param the request object
     */
    public deleteFromMealPlan(param: MealPlanningApiDeleteFromMealPlanRequest, options?: Configuration): Promise<any> {
        return this.api.deleteFromMealPlan(param.username, param.id, param.hash, param.deleteFromMealPlanRequest,  options).toPromise();
    }

    /**
     * Delete an item from the current shopping list of the user.
     * Delete from Shopping List
     * @param param the request object
     */
    public deleteFromShoppingList(param: MealPlanningApiDeleteFromShoppingListRequest, options?: Configuration): Promise<any> {
        return this.api.deleteFromShoppingList(param.username, param.id, param.hash, param.deleteFromMealPlanRequest,  options).toPromise();
    }

    /**
     * Delete a meal plan template for a user.
     * Delete Meal Plan Template
     * @param param the request object
     */
    public deleteMealPlanTemplate(param: MealPlanningApiDeleteMealPlanTemplateRequest, options?: Configuration): Promise<any> {
        return this.api.deleteMealPlanTemplate(param.username, param.id, param.hash, param.deleteFromMealPlanRequest,  options).toPromise();
    }

    /**
     * Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
     * Generate Meal Plan
     * @param param the request object
     */
    public generateMealPlan(param: MealPlanningApiGenerateMealPlanRequest = {}, options?: Configuration): Promise<GenerateMealPlan200Response> {
        return this.api.generateMealPlan(param.timeFrame, param.targetCalories, param.diet, param.exclude,  options).toPromise();
    }

    /**
     * Generate the shopping list for a user from the meal planner in a given time frame.
     * Generate Shopping List
     * @param param the request object
     */
    public generateShoppingList(param: MealPlanningApiGenerateShoppingListRequest, options?: Configuration): Promise<GenerateShoppingList200Response> {
        return this.api.generateShoppingList(param.username, param.startDate, param.endDate, param.hash, param.generateShoppingListRequest,  options).toPromise();
    }

    /**
     * Get information about a meal plan template.
     * Get Meal Plan Template
     * @param param the request object
     */
    public getMealPlanTemplate(param: MealPlanningApiGetMealPlanTemplateRequest, options?: Configuration): Promise<GetMealPlanTemplate200Response> {
        return this.api.getMealPlanTemplate(param.username, param.id, param.hash,  options).toPromise();
    }

    /**
     * Get meal plan templates from user or public ones.
     * Get Meal Plan Templates
     * @param param the request object
     */
    public getMealPlanTemplates(param: MealPlanningApiGetMealPlanTemplatesRequest, options?: Configuration): Promise<GetMealPlanTemplates200Response> {
        return this.api.getMealPlanTemplates(param.username, param.hash,  options).toPromise();
    }

    /**
     * Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.
     * Get Meal Plan Week
     * @param param the request object
     */
    public getMealPlanWeek(param: MealPlanningApiGetMealPlanWeekRequest, options?: Configuration): Promise<GetMealPlanWeek200Response> {
        return this.api.getMealPlanWeek(param.username, param.startDate, param.hash,  options).toPromise();
    }

    /**
     * Get the current shopping list for the given user.
     * Get Shopping List
     * @param param the request object
     */
    public getShoppingList(param: MealPlanningApiGetShoppingListRequest, options?: Configuration): Promise<GetShoppingList200Response> {
        return this.api.getShoppingList(param.username, param.hash,  options).toPromise();
    }

}

import { ObservableMenuItemsApi } from "./ObservableAPI";
import { MenuItemsApiRequestFactory, MenuItemsApiResponseProcessor} from "../apis/MenuItemsApi";

export interface MenuItemsApiAutocompleteMenuItemSearchRequest {
    /**
     * The (partial) search query.
     * @type string
     * @memberof MenuItemsApiautocompleteMenuItemSearch
     */
    query: string
    /**
     * The number of results to return (between 1 and 25).
     * @type number
     * @memberof MenuItemsApiautocompleteMenuItemSearch
     */
    number?: number
}

export interface MenuItemsApiGetMenuItemInformationRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof MenuItemsApigetMenuItemInformation
     */
    id: number
}

export interface MenuItemsApiMenuItemNutritionByIDImageRequest {
    /**
     * The menu item id.
     * @type number
     * @memberof MenuItemsApimenuItemNutritionByIDImage
     */
    id: number
}

export interface MenuItemsApiMenuItemNutritionLabelImageRequest {
    /**
     * The menu item id.
     * @type number
     * @memberof MenuItemsApimenuItemNutritionLabelImage
     */
    id: number
    /**
     * Whether to show optional nutrients.
     * @type boolean
     * @memberof MenuItemsApimenuItemNutritionLabelImage
     */
    showOptionalNutrients?: boolean
    /**
     * Whether to show zero values.
     * @type boolean
     * @memberof MenuItemsApimenuItemNutritionLabelImage
     */
    showZeroValues?: boolean
    /**
     * Whether to show a list of ingredients.
     * @type boolean
     * @memberof MenuItemsApimenuItemNutritionLabelImage
     */
    showIngredients?: boolean
}

export interface MenuItemsApiMenuItemNutritionLabelWidgetRequest {
    /**
     * The menu item id.
     * @type number
     * @memberof MenuItemsApimenuItemNutritionLabelWidget
     */
    id: number
    /**
     * Whether the default CSS should be added to the response.
     * @type boolean
     * @memberof MenuItemsApimenuItemNutritionLabelWidget
     */
    defaultCss?: boolean
    /**
     * Whether to show optional nutrients.
     * @type boolean
     * @memberof MenuItemsApimenuItemNutritionLabelWidget
     */
    showOptionalNutrients?: boolean
    /**
     * Whether to show zero values.
     * @type boolean
     * @memberof MenuItemsApimenuItemNutritionLabelWidget
     */
    showZeroValues?: boolean
    /**
     * Whether to show a list of ingredients.
     * @type boolean
     * @memberof MenuItemsApimenuItemNutritionLabelWidget
     */
    showIngredients?: boolean
}

export interface MenuItemsApiSearchMenuItemsRequest {
    /**
     * The (natural language) search query.
     * @type string
     * @memberof MenuItemsApisearchMenuItems
     */
    query?: string
    /**
     * The minimum amount of calories the menu item must have.
     * @type number
     * @memberof MenuItemsApisearchMenuItems
     */
    minCalories?: number
    /**
     * The maximum amount of calories the menu item can have.
     * @type number
     * @memberof MenuItemsApisearchMenuItems
     */
    maxCalories?: number
    /**
     * The minimum amount of carbohydrates in grams the menu item must have.
     * @type number
     * @memberof MenuItemsApisearchMenuItems
     */
    minCarbs?: number
    /**
     * The maximum amount of carbohydrates in grams the menu item can have.
     * @type number
     * @memberof MenuItemsApisearchMenuItems
     */
    maxCarbs?: number
    /**
     * The minimum amount of protein in grams the menu item must have.
     * @type number
     * @memberof MenuItemsApisearchMenuItems
     */
    minProtein?: number
    /**
     * The maximum amount of protein in grams the menu item can have.
     * @type number
     * @memberof MenuItemsApisearchMenuItems
     */
    maxProtein?: number
    /**
     * The minimum amount of fat in grams the menu item must have.
     * @type number
     * @memberof MenuItemsApisearchMenuItems
     */
    minFat?: number
    /**
     * The maximum amount of fat in grams the menu item can have.
     * @type number
     * @memberof MenuItemsApisearchMenuItems
     */
    maxFat?: number
    /**
     * If set to true, you get more information about the menu items returned.
     * @type boolean
     * @memberof MenuItemsApisearchMenuItems
     */
    addMenuItemInformation?: boolean
    /**
     * The number of results to skip (between 0 and 900).
     * @type number
     * @memberof MenuItemsApisearchMenuItems
     */
    offset?: number
    /**
     * The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @type number
     * @memberof MenuItemsApisearchMenuItems
     */
    number?: number
}

export interface MenuItemsApiVisualizeMenuItemNutritionByIDRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof MenuItemsApivisualizeMenuItemNutritionByID
     */
    id: number
    /**
     * Whether the default CSS should be added to the response.
     * @type boolean
     * @memberof MenuItemsApivisualizeMenuItemNutritionByID
     */
    defaultCss?: boolean
    /**
     * Accept header.
     * @type &#39;application/json&#39; | &#39;text/html&#39; | &#39;media/_*&#39;
     * @memberof MenuItemsApivisualizeMenuItemNutritionByID
     */
    accept?: 'application/json' | 'text/html' | 'media/_*'
}

export class ObjectMenuItemsApi {
    private api: ObservableMenuItemsApi

    public constructor(configuration: Configuration, requestFactory?: MenuItemsApiRequestFactory, responseProcessor?: MenuItemsApiResponseProcessor) {
        this.api = new ObservableMenuItemsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
     * Autocomplete Menu Item Search
     * @param param the request object
     */
    public autocompleteMenuItemSearch(param: MenuItemsApiAutocompleteMenuItemSearchRequest, options?: Configuration): Promise<AutocompleteMenuItemSearch200Response> {
        return this.api.autocompleteMenuItemSearch(param.query, param.number,  options).toPromise();
    }

    /**
     * Use a menu item id to get all available information about a menu item, such as nutrition.
     * Get Menu Item Information
     * @param param the request object
     */
    public getMenuItemInformation(param: MenuItemsApiGetMenuItemInformationRequest, options?: Configuration): Promise<GetMenuItemInformation200Response> {
        return this.api.getMenuItemInformation(param.id,  options).toPromise();
    }

    /**
     * Visualize a menu item's nutritional information as HTML including CSS.
     * Menu Item Nutrition by ID Image
     * @param param the request object
     */
    public menuItemNutritionByIDImage(param: MenuItemsApiMenuItemNutritionByIDImageRequest, options?: Configuration): Promise<any> {
        return this.api.menuItemNutritionByIDImage(param.id,  options).toPromise();
    }

    /**
     * Visualize a menu item's nutritional label information as an image.
     * Menu Item Nutrition Label Image
     * @param param the request object
     */
    public menuItemNutritionLabelImage(param: MenuItemsApiMenuItemNutritionLabelImageRequest, options?: Configuration): Promise<any> {
        return this.api.menuItemNutritionLabelImage(param.id, param.showOptionalNutrients, param.showZeroValues, param.showIngredients,  options).toPromise();
    }

    /**
     * Visualize a menu item's nutritional label information as HTML including CSS.
     * Menu Item Nutrition Label Widget
     * @param param the request object
     */
    public menuItemNutritionLabelWidget(param: MenuItemsApiMenuItemNutritionLabelWidgetRequest, options?: Configuration): Promise<string> {
        return this.api.menuItemNutritionLabelWidget(param.id, param.defaultCss, param.showOptionalNutrients, param.showZeroValues, param.showIngredients,  options).toPromise();
    }

    /**
     * Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.
     * Search Menu Items
     * @param param the request object
     */
    public searchMenuItems(param: MenuItemsApiSearchMenuItemsRequest = {}, options?: Configuration): Promise<SearchMenuItems200Response> {
        return this.api.searchMenuItems(param.query, param.minCalories, param.maxCalories, param.minCarbs, param.maxCarbs, param.minProtein, param.maxProtein, param.minFat, param.maxFat, param.addMenuItemInformation, param.offset, param.number,  options).toPromise();
    }

    /**
     * Visualize a menu item's nutritional information as HTML including CSS.
     * Menu Item Nutrition by ID Widget
     * @param param the request object
     */
    public visualizeMenuItemNutritionByID(param: MenuItemsApiVisualizeMenuItemNutritionByIDRequest, options?: Configuration): Promise<string> {
        return this.api.visualizeMenuItemNutritionByID(param.id, param.defaultCss, param.accept,  options).toPromise();
    }

}

import { ObservableMiscApi } from "./ObservableAPI";
import { MiscApiRequestFactory, MiscApiResponseProcessor} from "../apis/MiscApi";

export interface MiscApiDetectFoodInTextRequest {
    /**
     * The content type.
     * @type &#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;
     * @memberof MiscApidetectFoodInText
     */
    contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data'
}

export interface MiscApiGetARandomFoodJokeRequest {
}

export interface MiscApiGetConversationSuggestsRequest {
    /**
     * A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
     * @type string
     * @memberof MiscApigetConversationSuggests
     */
    query: string
    /**
     * The number of suggestions to return (between 1 and 25).
     * @type number
     * @memberof MiscApigetConversationSuggests
     */
    number?: number
}

export interface MiscApiGetRandomFoodTriviaRequest {
}

export interface MiscApiImageAnalysisByURLRequest {
    /**
     * The URL of the image to be analyzed.
     * @type string
     * @memberof MiscApiimageAnalysisByURL
     */
    imageUrl: string
}

export interface MiscApiImageClassificationByURLRequest {
    /**
     * The URL of the image to be classified.
     * @type string
     * @memberof MiscApiimageClassificationByURL
     */
    imageUrl: string
}

export interface MiscApiSearchAllFoodRequest {
    /**
     * The search query.
     * @type string
     * @memberof MiscApisearchAllFood
     */
    query: string
    /**
     * The number of results to skip (between 0 and 900).
     * @type number
     * @memberof MiscApisearchAllFood
     */
    offset?: number
    /**
     * The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @type number
     * @memberof MiscApisearchAllFood
     */
    number?: number
}

export interface MiscApiSearchCustomFoodsRequest {
    /**
     * The username.
     * @type string
     * @memberof MiscApisearchCustomFoods
     */
    username: string
    /**
     * The private hash for the username.
     * @type string
     * @memberof MiscApisearchCustomFoods
     */
    hash: string
    /**
     * The (natural language) search query.
     * @type string
     * @memberof MiscApisearchCustomFoods
     */
    query?: string
    /**
     * The number of results to skip (between 0 and 900).
     * @type number
     * @memberof MiscApisearchCustomFoods
     */
    offset?: number
    /**
     * The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @type number
     * @memberof MiscApisearchCustomFoods
     */
    number?: number
}

export interface MiscApiSearchFoodVideosRequest {
    /**
     * The (natural language) search query.
     * @type string
     * @memberof MiscApisearchFoodVideos
     */
    query?: string
    /**
     * The type of the recipes. See a full list of supported meal types.
     * @type string
     * @memberof MiscApisearchFoodVideos
     */
    type?: string
    /**
     * The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.
     * @type string
     * @memberof MiscApisearchFoodVideos
     */
    cuisine?: string
    /**
     * The diet for which the recipes must be suitable. See a full list of supported diets.
     * @type string
     * @memberof MiscApisearchFoodVideos
     */
    diet?: string
    /**
     * A comma-separated list of ingredients that the recipes should contain.
     * @type string
     * @memberof MiscApisearchFoodVideos
     */
    includeIngredients?: string
    /**
     * A comma-separated list of ingredients or ingredient types that the recipes must not contain.
     * @type string
     * @memberof MiscApisearchFoodVideos
     */
    excludeIngredients?: string
    /**
     * Minimum video length in seconds.
     * @type number
     * @memberof MiscApisearchFoodVideos
     */
    minLength?: number
    /**
     * Maximum video length in seconds.
     * @type number
     * @memberof MiscApisearchFoodVideos
     */
    maxLength?: number
    /**
     * The number of results to skip (between 0 and 900).
     * @type number
     * @memberof MiscApisearchFoodVideos
     */
    offset?: number
    /**
     * The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @type number
     * @memberof MiscApisearchFoodVideos
     */
    number?: number
}

export interface MiscApiSearchSiteContentRequest {
    /**
     * The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content.
     * @type string
     * @memberof MiscApisearchSiteContent
     */
    query: string
}

export interface MiscApiTalkToChatbotRequest {
    /**
     * The request / question / answer from the user to the chatbot.
     * @type string
     * @memberof MiscApitalkToChatbot
     */
    text: string
    /**
     * An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.
     * @type string
     * @memberof MiscApitalkToChatbot
     */
    contextId?: string
}

export class ObjectMiscApi {
    private api: ObservableMiscApi

    public constructor(configuration: Configuration, requestFactory?: MiscApiRequestFactory, responseProcessor?: MiscApiResponseProcessor) {
        this.api = new ObservableMiscApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.
     * Detect Food in Text
     * @param param the request object
     */
    public detectFoodInText(param: MiscApiDetectFoodInTextRequest = {}, options?: Configuration): Promise<DetectFoodInText200Response> {
        return this.api.detectFoodInText(param.contentType,  options).toPromise();
    }

    /**
     * Get a random joke that is related to food. Caution: this is an endpoint for adults!
     * Random Food Joke
     * @param param the request object
     */
    public getARandomFoodJoke(param: MiscApiGetARandomFoodJokeRequest = {}, options?: Configuration): Promise<GetARandomFoodJoke200Response> {
        return this.api.getARandomFoodJoke( options).toPromise();
    }

    /**
     * This endpoint returns suggestions for things the user can say or ask the chatbot.
     * Conversation Suggests
     * @param param the request object
     */
    public getConversationSuggests(param: MiscApiGetConversationSuggestsRequest, options?: Configuration): Promise<GetConversationSuggests200Response> {
        return this.api.getConversationSuggests(param.query, param.number,  options).toPromise();
    }

    /**
     * Returns random food trivia.
     * Random Food Trivia
     * @param param the request object
     */
    public getRandomFoodTrivia(param: MiscApiGetRandomFoodTriviaRequest = {}, options?: Configuration): Promise<GetRandomFoodTrivia200Response> {
        return this.api.getRandomFoodTrivia( options).toPromise();
    }

    /**
     * Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.
     * Image Analysis by URL
     * @param param the request object
     */
    public imageAnalysisByURL(param: MiscApiImageAnalysisByURLRequest, options?: Configuration): Promise<ImageAnalysisByURL200Response> {
        return this.api.imageAnalysisByURL(param.imageUrl,  options).toPromise();
    }

    /**
     * Classify a food image.
     * Image Classification by URL
     * @param param the request object
     */
    public imageClassificationByURL(param: MiscApiImageClassificationByURLRequest, options?: Configuration): Promise<ImageClassificationByURL200Response> {
        return this.api.imageClassificationByURL(param.imageUrl,  options).toPromise();
    }

    /**
     * Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.
     * Search All Food
     * @param param the request object
     */
    public searchAllFood(param: MiscApiSearchAllFoodRequest, options?: Configuration): Promise<SearchAllFood200Response> {
        return this.api.searchAllFood(param.query, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search custom foods in a user's account.
     * Search Custom Foods
     * @param param the request object
     */
    public searchCustomFoods(param: MiscApiSearchCustomFoodsRequest, options?: Configuration): Promise<SearchCustomFoods200Response> {
        return this.api.searchCustomFoods(param.username, param.hash, param.query, param.offset, param.number,  options).toPromise();
    }

    /**
     * Find recipe and other food related videos.
     * Search Food Videos
     * @param param the request object
     */
    public searchFoodVideos(param: MiscApiSearchFoodVideosRequest = {}, options?: Configuration): Promise<SearchFoodVideos200Response> {
        return this.api.searchFoodVideos(param.query, param.type, param.cuisine, param.diet, param.includeIngredients, param.excludeIngredients, param.minLength, param.maxLength, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.
     * Search Site Content
     * @param param the request object
     */
    public searchSiteContent(param: MiscApiSearchSiteContentRequest, options?: Configuration): Promise<SearchSiteContent200Response> {
        return this.api.searchSiteContent(param.query,  options).toPromise();
    }

    /**
     * This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.
     * Talk to Chatbot
     * @param param the request object
     */
    public talkToChatbot(param: MiscApiTalkToChatbotRequest, options?: Configuration): Promise<TalkToChatbot200Response> {
        return this.api.talkToChatbot(param.text, param.contextId,  options).toPromise();
    }

}

import { ObservableProductsApi } from "./ObservableAPI";
import { ProductsApiRequestFactory, ProductsApiResponseProcessor} from "../apis/ProductsApi";

export interface ProductsApiAutocompleteProductSearchRequest {
    /**
     * The (partial) search query.
     * @type string
     * @memberof ProductsApiautocompleteProductSearch
     */
    query: string
    /**
     * The number of results to return (between 1 and 25).
     * @type number
     * @memberof ProductsApiautocompleteProductSearch
     */
    number?: number
}

export interface ProductsApiClassifyGroceryProductRequest {
    /**
     * 
     * @type ClassifyGroceryProductRequest
     * @memberof ProductsApiclassifyGroceryProduct
     */
    classifyGroceryProductRequest: ClassifyGroceryProductRequest
    /**
     * The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
     * @type &#39;en_US&#39; | &#39;en_GB&#39;
     * @memberof ProductsApiclassifyGroceryProduct
     */
    locale?: 'en_US' | 'en_GB'
}

export interface ProductsApiClassifyGroceryProductBulkRequest {
    /**
     * 
     * @type Set&lt;ClassifyGroceryProductBulkRequestInner&gt;
     * @memberof ProductsApiclassifyGroceryProductBulk
     */
    classifyGroceryProductBulkRequestInner: Set<ClassifyGroceryProductBulkRequestInner>
    /**
     * The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
     * @type string
     * @memberof ProductsApiclassifyGroceryProductBulk
     */
    locale?: string
}

export interface ProductsApiGetComparableProductsRequest {
    /**
     * The UPC of the product for which you want to find comparable products.
     * @type number
     * @memberof ProductsApigetComparableProducts
     */
    upc: number
}

export interface ProductsApiGetProductInformationRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof ProductsApigetProductInformation
     */
    id: number
}

export interface ProductsApiProductNutritionByIDImageRequest {
    /**
     * The id of the product.
     * @type number
     * @memberof ProductsApiproductNutritionByIDImage
     */
    id: number
}

export interface ProductsApiProductNutritionLabelImageRequest {
    /**
     * The product id.
     * @type number
     * @memberof ProductsApiproductNutritionLabelImage
     */
    id: number
    /**
     * Whether to show optional nutrients.
     * @type boolean
     * @memberof ProductsApiproductNutritionLabelImage
     */
    showOptionalNutrients?: boolean
    /**
     * Whether to show zero values.
     * @type boolean
     * @memberof ProductsApiproductNutritionLabelImage
     */
    showZeroValues?: boolean
    /**
     * Whether to show a list of ingredients.
     * @type boolean
     * @memberof ProductsApiproductNutritionLabelImage
     */
    showIngredients?: boolean
}

export interface ProductsApiProductNutritionLabelWidgetRequest {
    /**
     * The product id.
     * @type number
     * @memberof ProductsApiproductNutritionLabelWidget
     */
    id: number
    /**
     * Whether the default CSS should be added to the response.
     * @type boolean
     * @memberof ProductsApiproductNutritionLabelWidget
     */
    defaultCss?: boolean
    /**
     * Whether to show optional nutrients.
     * @type boolean
     * @memberof ProductsApiproductNutritionLabelWidget
     */
    showOptionalNutrients?: boolean
    /**
     * Whether to show zero values.
     * @type boolean
     * @memberof ProductsApiproductNutritionLabelWidget
     */
    showZeroValues?: boolean
    /**
     * Whether to show a list of ingredients.
     * @type boolean
     * @memberof ProductsApiproductNutritionLabelWidget
     */
    showIngredients?: boolean
}

export interface ProductsApiSearchGroceryProductsRequest {
    /**
     * The (natural language) search query.
     * @type string
     * @memberof ProductsApisearchGroceryProducts
     */
    query?: string
    /**
     * The minimum amount of calories the product must have.
     * @type number
     * @memberof ProductsApisearchGroceryProducts
     */
    minCalories?: number
    /**
     * The maximum amount of calories the product can have.
     * @type number
     * @memberof ProductsApisearchGroceryProducts
     */
    maxCalories?: number
    /**
     * The minimum amount of carbohydrates in grams the product must have.
     * @type number
     * @memberof ProductsApisearchGroceryProducts
     */
    minCarbs?: number
    /**
     * The maximum amount of carbohydrates in grams the product can have.
     * @type number
     * @memberof ProductsApisearchGroceryProducts
     */
    maxCarbs?: number
    /**
     * The minimum amount of protein in grams the product must have.
     * @type number
     * @memberof ProductsApisearchGroceryProducts
     */
    minProtein?: number
    /**
     * The maximum amount of protein in grams the product can have.
     * @type number
     * @memberof ProductsApisearchGroceryProducts
     */
    maxProtein?: number
    /**
     * The minimum amount of fat in grams the product must have.
     * @type number
     * @memberof ProductsApisearchGroceryProducts
     */
    minFat?: number
    /**
     * The maximum amount of fat in grams the product can have.
     * @type number
     * @memberof ProductsApisearchGroceryProducts
     */
    maxFat?: number
    /**
     * If set to true, you get more information about the products returned.
     * @type boolean
     * @memberof ProductsApisearchGroceryProducts
     */
    addProductInformation?: boolean
    /**
     * The number of results to skip (between 0 and 900).
     * @type number
     * @memberof ProductsApisearchGroceryProducts
     */
    offset?: number
    /**
     * The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @type number
     * @memberof ProductsApisearchGroceryProducts
     */
    number?: number
}

export interface ProductsApiSearchGroceryProductsByUPCRequest {
    /**
     * The product&#39;s UPC.
     * @type number
     * @memberof ProductsApisearchGroceryProductsByUPC
     */
    upc: number
}

export interface ProductsApiVisualizeProductNutritionByIDRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof ProductsApivisualizeProductNutritionByID
     */
    id: number
    /**
     * Whether the default CSS should be added to the response.
     * @type boolean
     * @memberof ProductsApivisualizeProductNutritionByID
     */
    defaultCss?: boolean
    /**
     * Accept header.
     * @type &#39;application/json&#39; | &#39;text/html&#39; | &#39;media/_*&#39;
     * @memberof ProductsApivisualizeProductNutritionByID
     */
    accept?: 'application/json' | 'text/html' | 'media/_*'
}

export class ObjectProductsApi {
    private api: ObservableProductsApi

    public constructor(configuration: Configuration, requestFactory?: ProductsApiRequestFactory, responseProcessor?: ProductsApiResponseProcessor) {
        this.api = new ObservableProductsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.
     * Autocomplete Product Search
     * @param param the request object
     */
    public autocompleteProductSearch(param: ProductsApiAutocompleteProductSearchRequest, options?: Configuration): Promise<AutocompleteProductSearch200Response> {
        return this.api.autocompleteProductSearch(param.query, param.number,  options).toPromise();
    }

    /**
     * This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.
     * Classify Grocery Product
     * @param param the request object
     */
    public classifyGroceryProduct(param: ProductsApiClassifyGroceryProductRequest, options?: Configuration): Promise<ClassifyGroceryProduct200Response> {
        return this.api.classifyGroceryProduct(param.classifyGroceryProductRequest, param.locale,  options).toPromise();
    }

    /**
     * Provide a set of product jsons, get back classified products.
     * Classify Grocery Product Bulk
     * @param param the request object
     */
    public classifyGroceryProductBulk(param: ProductsApiClassifyGroceryProductBulkRequest, options?: Configuration): Promise<Set<ClassifyGroceryProductBulk200ResponseInner>> {
        return this.api.classifyGroceryProductBulk(param.classifyGroceryProductBulkRequestInner, param.locale,  options).toPromise();
    }

    /**
     * Find comparable products to the given one.
     * Get Comparable Products
     * @param param the request object
     */
    public getComparableProducts(param: ProductsApiGetComparableProductsRequest, options?: Configuration): Promise<GetComparableProducts200Response> {
        return this.api.getComparableProducts(param.upc,  options).toPromise();
    }

    /**
     * Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.
     * Get Product Information
     * @param param the request object
     */
    public getProductInformation(param: ProductsApiGetProductInformationRequest, options?: Configuration): Promise<GetProductInformation200Response> {
        return this.api.getProductInformation(param.id,  options).toPromise();
    }

    /**
     * Visualize a product's nutritional information as an image.
     * Product Nutrition by ID Image
     * @param param the request object
     */
    public productNutritionByIDImage(param: ProductsApiProductNutritionByIDImageRequest, options?: Configuration): Promise<any> {
        return this.api.productNutritionByIDImage(param.id,  options).toPromise();
    }

    /**
     * Get a product's nutrition label as an image.
     * Product Nutrition Label Image
     * @param param the request object
     */
    public productNutritionLabelImage(param: ProductsApiProductNutritionLabelImageRequest, options?: Configuration): Promise<any> {
        return this.api.productNutritionLabelImage(param.id, param.showOptionalNutrients, param.showZeroValues, param.showIngredients,  options).toPromise();
    }

    /**
     * Get a product's nutrition label as an HTML widget.
     * Product Nutrition Label Widget
     * @param param the request object
     */
    public productNutritionLabelWidget(param: ProductsApiProductNutritionLabelWidgetRequest, options?: Configuration): Promise<string> {
        return this.api.productNutritionLabelWidget(param.id, param.defaultCss, param.showOptionalNutrients, param.showZeroValues, param.showIngredients,  options).toPromise();
    }

    /**
     * Search packaged food products, such as frozen pizza or Greek yogurt.
     * Search Grocery Products
     * @param param the request object
     */
    public searchGroceryProducts(param: ProductsApiSearchGroceryProductsRequest = {}, options?: Configuration): Promise<SearchGroceryProducts200Response> {
        return this.api.searchGroceryProducts(param.query, param.minCalories, param.maxCalories, param.minCarbs, param.maxCarbs, param.minProtein, param.maxProtein, param.minFat, param.maxFat, param.addProductInformation, param.offset, param.number,  options).toPromise();
    }

    /**
     * Get information about a packaged food using its UPC.
     * Search Grocery Products by UPC
     * @param param the request object
     */
    public searchGroceryProductsByUPC(param: ProductsApiSearchGroceryProductsByUPCRequest, options?: Configuration): Promise<SearchGroceryProductsByUPC200Response> {
        return this.api.searchGroceryProductsByUPC(param.upc,  options).toPromise();
    }

    /**
     * Visualize a product's nutritional information as HTML including CSS.
     * Product Nutrition by ID Widget
     * @param param the request object
     */
    public visualizeProductNutritionByID(param: ProductsApiVisualizeProductNutritionByIDRequest, options?: Configuration): Promise<string> {
        return this.api.visualizeProductNutritionByID(param.id, param.defaultCss, param.accept,  options).toPromise();
    }

}

import { ObservableRecipesApi } from "./ObservableAPI";
import { RecipesApiRequestFactory, RecipesApiResponseProcessor} from "../apis/RecipesApi";

export interface RecipesApiAnalyzeARecipeSearchQueryRequest {
    /**
     * The recipe search query.
     * @type string
     * @memberof RecipesApianalyzeARecipeSearchQuery
     */
    q: string
}

export interface RecipesApiAnalyzeRecipeInstructionsRequest {
    /**
     * The content type.
     * @type &#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;
     * @memberof RecipesApianalyzeRecipeInstructions
     */
    contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data'
}

export interface RecipesApiAutocompleteRecipeSearchRequest {
    /**
     * The (natural language) search query.
     * @type string
     * @memberof RecipesApiautocompleteRecipeSearch
     */
    query?: string
    /**
     * The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @type number
     * @memberof RecipesApiautocompleteRecipeSearch
     */
    number?: number
}

export interface RecipesApiClassifyCuisineRequest {
    /**
     * The content type.
     * @type &#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;
     * @memberof RecipesApiclassifyCuisine
     */
    contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data'
}

export interface RecipesApiComputeGlycemicLoadRequest {
    /**
     * 
     * @type ComputeGlycemicLoadRequest
     * @memberof RecipesApicomputeGlycemicLoad
     */
    computeGlycemicLoadRequest: ComputeGlycemicLoadRequest
    /**
     * The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     * @type &#39;en&#39; | &#39;de&#39;
     * @memberof RecipesApicomputeGlycemicLoad
     */
    language?: 'en' | 'de'
}

export interface RecipesApiConvertAmountsRequest {
    /**
     * The ingredient which you want to convert.
     * @type string
     * @memberof RecipesApiconvertAmounts
     */
    ingredientName: string
    /**
     * The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;.
     * @type number
     * @memberof RecipesApiconvertAmounts
     */
    sourceAmount: number
    /**
     * The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot;
     * @type string
     * @memberof RecipesApiconvertAmounts
     */
    sourceUnit: string
    /**
     * The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot;
     * @type string
     * @memberof RecipesApiconvertAmounts
     */
    targetUnit: string
}

export interface RecipesApiCreateRecipeCardRequest {
    /**
     * The content type.
     * @type &#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;
     * @memberof RecipesApicreateRecipeCard
     */
    contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data'
}

export interface RecipesApiEquipmentByIDImageRequest {
    /**
     * The recipe id.
     * @type number
     * @memberof RecipesApiequipmentByIDImage
     */
    id: number
}

export interface RecipesApiExtractRecipeFromWebsiteRequest {
    /**
     * The URL of the recipe page.
     * @type string
     * @memberof RecipesApiextractRecipeFromWebsite
     */
    url: string
    /**
     * If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.
     * @type boolean
     * @memberof RecipesApiextractRecipeFromWebsite
     */
    forceExtraction?: boolean
    /**
     * If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.
     * @type boolean
     * @memberof RecipesApiextractRecipeFromWebsite
     */
    analyze?: boolean
    /**
     * Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
     * @type boolean
     * @memberof RecipesApiextractRecipeFromWebsite
     */
    includeNutrition?: boolean
    /**
     * Whether taste data should be added to correctly parsed ingredients.
     * @type boolean
     * @memberof RecipesApiextractRecipeFromWebsite
     */
    includeTaste?: boolean
}

export interface RecipesApiGetAnalyzedRecipeInstructionsRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof RecipesApigetAnalyzedRecipeInstructions
     */
    id: number
    /**
     * Whether to break down the recipe steps even more.
     * @type boolean
     * @memberof RecipesApigetAnalyzedRecipeInstructions
     */
    stepBreakdown?: boolean
}

export interface RecipesApiGetRandomRecipesRequest {
    /**
     * Whether the recipes should have an open license that allows display with proper attribution.
     * @type boolean
     * @memberof RecipesApigetRandomRecipes
     */
    limitLicense?: boolean
    /**
     * The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
     * @type string
     * @memberof RecipesApigetRandomRecipes
     */
    tags?: string
    /**
     * The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @type number
     * @memberof RecipesApigetRandomRecipes
     */
    number?: number
}

export interface RecipesApiGetRecipeEquipmentByIDRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof RecipesApigetRecipeEquipmentByID
     */
    id: number
}

export interface RecipesApiGetRecipeInformationRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof RecipesApigetRecipeInformation
     */
    id: number
    /**
     * Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
     * @type boolean
     * @memberof RecipesApigetRecipeInformation
     */
    includeNutrition?: boolean
}

export interface RecipesApiGetRecipeInformationBulkRequest {
    /**
     * A comma-separated list of recipe ids.
     * @type string
     * @memberof RecipesApigetRecipeInformationBulk
     */
    ids: string
    /**
     * Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
     * @type boolean
     * @memberof RecipesApigetRecipeInformationBulk
     */
    includeNutrition?: boolean
}

export interface RecipesApiGetRecipeIngredientsByIDRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof RecipesApigetRecipeIngredientsByID
     */
    id: number
}

export interface RecipesApiGetRecipeNutritionWidgetByIDRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof RecipesApigetRecipeNutritionWidgetByID
     */
    id: number
}

export interface RecipesApiGetRecipePriceBreakdownByIDRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof RecipesApigetRecipePriceBreakdownByID
     */
    id: number
}

export interface RecipesApiGetRecipeTasteByIDRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof RecipesApigetRecipeTasteByID
     */
    id: number
    /**
     * Normalize to the strongest taste.
     * @type boolean
     * @memberof RecipesApigetRecipeTasteByID
     */
    normalize?: boolean
}

export interface RecipesApiGetSimilarRecipesRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof RecipesApigetSimilarRecipes
     */
    id: number
    /**
     * The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @type number
     * @memberof RecipesApigetSimilarRecipes
     */
    number?: number
    /**
     * Whether the recipes should have an open license that allows display with proper attribution.
     * @type boolean
     * @memberof RecipesApigetSimilarRecipes
     */
    limitLicense?: boolean
}

export interface RecipesApiGuessNutritionByDishNameRequest {
    /**
     * The title of the dish.
     * @type string
     * @memberof RecipesApiguessNutritionByDishName
     */
    title: string
}

export interface RecipesApiIngredientsByIDImageRequest {
    /**
     * The recipe id.
     * @type number
     * @memberof RecipesApiingredientsByIDImage
     */
    id: number
    /**
     * Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.
     * @type &#39;us&#39; | &#39;metric&#39;
     * @memberof RecipesApiingredientsByIDImage
     */
    measure?: 'us' | 'metric'
}

export interface RecipesApiParseIngredientsRequest {
    /**
     * The content type.
     * @type &#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;
     * @memberof RecipesApiparseIngredients
     */
    contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data'
    /**
     * The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     * @type &#39;en&#39; | &#39;de&#39;
     * @memberof RecipesApiparseIngredients
     */
    language?: 'en' | 'de'
}

export interface RecipesApiPriceBreakdownByIDImageRequest {
    /**
     * The recipe id.
     * @type number
     * @memberof RecipesApipriceBreakdownByIDImage
     */
    id: number
}

export interface RecipesApiQuickAnswerRequest {
    /**
     * The nutrition related question.
     * @type string
     * @memberof RecipesApiquickAnswer
     */
    q: string
}

export interface RecipesApiRecipeNutritionByIDImageRequest {
    /**
     * The recipe id.
     * @type number
     * @memberof RecipesApirecipeNutritionByIDImage
     */
    id: number
}

export interface RecipesApiRecipeNutritionLabelImageRequest {
    /**
     * The recipe id.
     * @type number
     * @memberof RecipesApirecipeNutritionLabelImage
     */
    id: number
    /**
     * Whether to show optional nutrients.
     * @type boolean
     * @memberof RecipesApirecipeNutritionLabelImage
     */
    showOptionalNutrients?: boolean
    /**
     * Whether to show zero values.
     * @type boolean
     * @memberof RecipesApirecipeNutritionLabelImage
     */
    showZeroValues?: boolean
    /**
     * Whether to show a list of ingredients.
     * @type boolean
     * @memberof RecipesApirecipeNutritionLabelImage
     */
    showIngredients?: boolean
}

export interface RecipesApiRecipeNutritionLabelWidgetRequest {
    /**
     * The recipe id.
     * @type number
     * @memberof RecipesApirecipeNutritionLabelWidget
     */
    id: number
    /**
     * Whether the default CSS should be added to the response.
     * @type boolean
     * @memberof RecipesApirecipeNutritionLabelWidget
     */
    defaultCss?: boolean
    /**
     * Whether to show optional nutrients.
     * @type boolean
     * @memberof RecipesApirecipeNutritionLabelWidget
     */
    showOptionalNutrients?: boolean
    /**
     * Whether to show zero values.
     * @type boolean
     * @memberof RecipesApirecipeNutritionLabelWidget
     */
    showZeroValues?: boolean
    /**
     * Whether to show a list of ingredients.
     * @type boolean
     * @memberof RecipesApirecipeNutritionLabelWidget
     */
    showIngredients?: boolean
}

export interface RecipesApiRecipeTasteByIDImageRequest {
    /**
     * The recipe id.
     * @type number
     * @memberof RecipesApirecipeTasteByIDImage
     */
    id: number
    /**
     * Normalize to the strongest taste.
     * @type boolean
     * @memberof RecipesApirecipeTasteByIDImage
     */
    normalize?: boolean
    /**
     * Red, green, blue values for the chart color.
     * @type string
     * @memberof RecipesApirecipeTasteByIDImage
     */
    rgb?: string
}

export interface RecipesApiSearchRecipesRequest {
    /**
     * The (natural language) search query.
     * @type string
     * @memberof RecipesApisearchRecipes
     */
    query?: string
    /**
     * The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines.
     * @type string
     * @memberof RecipesApisearchRecipes
     */
    cuisine?: string
    /**
     * The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines.
     * @type string
     * @memberof RecipesApisearchRecipes
     */
    excludeCuisine?: string
    /**
     * The diet for which the recipes must be suitable. See a full list of supported diets.
     * @type string
     * @memberof RecipesApisearchRecipes
     */
    diet?: string
    /**
     * A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
     * @type string
     * @memberof RecipesApisearchRecipes
     */
    intolerances?: string
    /**
     * The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;.
     * @type string
     * @memberof RecipesApisearchRecipes
     */
    equipment?: string
    /**
     * A comma-separated list of ingredients that should/must be used in the recipes.
     * @type string
     * @memberof RecipesApisearchRecipes
     */
    includeIngredients?: string
    /**
     * A comma-separated list of ingredients or ingredient types that the recipes must not contain.
     * @type string
     * @memberof RecipesApisearchRecipes
     */
    excludeIngredients?: string
    /**
     * The type of recipe. See a full list of supported meal types.
     * @type string
     * @memberof RecipesApisearchRecipes
     */
    type?: string
    /**
     * Whether the recipes must have instructions.
     * @type boolean
     * @memberof RecipesApisearchRecipes
     */
    instructionsRequired?: boolean
    /**
     * Add information about the ingredients and whether they are used or missing in relation to the query.
     * @type boolean
     * @memberof RecipesApisearchRecipes
     */
    fillIngredients?: boolean
    /**
     * If set to true, you get more information about the recipes returned.
     * @type boolean
     * @memberof RecipesApisearchRecipes
     */
    addRecipeInformation?: boolean
    /**
     * If set to true, you get nutritional information about each recipes returned.
     * @type boolean
     * @memberof RecipesApisearchRecipes
     */
    addRecipeNutrition?: boolean
    /**
     * The username of the recipe author.
     * @type string
     * @memberof RecipesApisearchRecipes
     */
    author?: string
    /**
     * The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
     * @type string
     * @memberof RecipesApisearchRecipes
     */
    tags?: string
    /**
     * The id of the recipe box to which the search should be limited to.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    recipeBoxId?: number
    /**
     * Enter text that must be found in the title of the recipes.
     * @type string
     * @memberof RecipesApisearchRecipes
     */
    titleMatch?: string
    /**
     * The maximum time in minutes it should take to prepare and cook the recipe.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxReadyTime?: number
    /**
     * Whether to ignore typical pantry items, such as water, salt, flour, etc.
     * @type boolean
     * @memberof RecipesApisearchRecipes
     */
    ignorePantry?: boolean
    /**
     * The strategy to sort recipes by. See a full list of supported sorting options.
     * @type string
     * @memberof RecipesApisearchRecipes
     */
    sort?: string
    /**
     * The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending).
     * @type string
     * @memberof RecipesApisearchRecipes
     */
    sortDirection?: string
    /**
     * The minimum amount of carbohydrates in grams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minCarbs?: number
    /**
     * The maximum amount of carbohydrates in grams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxCarbs?: number
    /**
     * The minimum amount of protein in grams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minProtein?: number
    /**
     * The maximum amount of protein in grams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxProtein?: number
    /**
     * The minimum amount of calories the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minCalories?: number
    /**
     * The maximum amount of calories the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxCalories?: number
    /**
     * The minimum amount of fat in grams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minFat?: number
    /**
     * The maximum amount of fat in grams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxFat?: number
    /**
     * The minimum amount of alcohol in grams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minAlcohol?: number
    /**
     * The maximum amount of alcohol in grams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxAlcohol?: number
    /**
     * The minimum amount of caffeine in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minCaffeine?: number
    /**
     * The maximum amount of caffeine in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxCaffeine?: number
    /**
     * The minimum amount of copper in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minCopper?: number
    /**
     * The maximum amount of copper in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxCopper?: number
    /**
     * The minimum amount of calcium in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minCalcium?: number
    /**
     * The maximum amount of calcium in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxCalcium?: number
    /**
     * The minimum amount of choline in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minCholine?: number
    /**
     * The maximum amount of choline in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxCholine?: number
    /**
     * The minimum amount of cholesterol in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minCholesterol?: number
    /**
     * The maximum amount of cholesterol in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxCholesterol?: number
    /**
     * The minimum amount of fluoride in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minFluoride?: number
    /**
     * The maximum amount of fluoride in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxFluoride?: number
    /**
     * The minimum amount of saturated fat in grams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minSaturatedFat?: number
    /**
     * The maximum amount of saturated fat in grams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxSaturatedFat?: number
    /**
     * The minimum amount of Vitamin A in IU the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minVitaminA?: number
    /**
     * The maximum amount of Vitamin A in IU the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxVitaminA?: number
    /**
     * The minimum amount of Vitamin C milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minVitaminC?: number
    /**
     * The maximum amount of Vitamin C in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxVitaminC?: number
    /**
     * The minimum amount of Vitamin D in micrograms the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minVitaminD?: number
    /**
     * The maximum amount of Vitamin D in micrograms the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxVitaminD?: number
    /**
     * The minimum amount of Vitamin E in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minVitaminE?: number
    /**
     * The maximum amount of Vitamin E in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxVitaminE?: number
    /**
     * The minimum amount of Vitamin K in micrograms the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minVitaminK?: number
    /**
     * The maximum amount of Vitamin K in micrograms the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxVitaminK?: number
    /**
     * The minimum amount of Vitamin B1 in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minVitaminB1?: number
    /**
     * The maximum amount of Vitamin B1 in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxVitaminB1?: number
    /**
     * The minimum amount of Vitamin B2 in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minVitaminB2?: number
    /**
     * The maximum amount of Vitamin B2 in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxVitaminB2?: number
    /**
     * The minimum amount of Vitamin B5 in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minVitaminB5?: number
    /**
     * The maximum amount of Vitamin B5 in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxVitaminB5?: number
    /**
     * The minimum amount of Vitamin B3 in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minVitaminB3?: number
    /**
     * The maximum amount of Vitamin B3 in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxVitaminB3?: number
    /**
     * The minimum amount of Vitamin B6 in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minVitaminB6?: number
    /**
     * The maximum amount of Vitamin B6 in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxVitaminB6?: number
    /**
     * The minimum amount of Vitamin B12 in micrograms the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minVitaminB12?: number
    /**
     * The maximum amount of Vitamin B12 in micrograms the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxVitaminB12?: number
    /**
     * The minimum amount of fiber in grams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minFiber?: number
    /**
     * The maximum amount of fiber in grams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxFiber?: number
    /**
     * The minimum amount of folate in micrograms the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minFolate?: number
    /**
     * The maximum amount of folate in micrograms the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxFolate?: number
    /**
     * The minimum amount of folic acid in micrograms the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minFolicAcid?: number
    /**
     * The maximum amount of folic acid in micrograms the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxFolicAcid?: number
    /**
     * The minimum amount of iodine in micrograms the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minIodine?: number
    /**
     * The maximum amount of iodine in micrograms the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxIodine?: number
    /**
     * The minimum amount of iron in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minIron?: number
    /**
     * The maximum amount of iron in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxIron?: number
    /**
     * The minimum amount of magnesium in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minMagnesium?: number
    /**
     * The maximum amount of magnesium in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxMagnesium?: number
    /**
     * The minimum amount of manganese in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minManganese?: number
    /**
     * The maximum amount of manganese in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxManganese?: number
    /**
     * The minimum amount of phosphorus in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minPhosphorus?: number
    /**
     * The maximum amount of phosphorus in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxPhosphorus?: number
    /**
     * The minimum amount of potassium in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minPotassium?: number
    /**
     * The maximum amount of potassium in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxPotassium?: number
    /**
     * The minimum amount of selenium in micrograms the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minSelenium?: number
    /**
     * The maximum amount of selenium in micrograms the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxSelenium?: number
    /**
     * The minimum amount of sodium in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minSodium?: number
    /**
     * The maximum amount of sodium in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxSodium?: number
    /**
     * The minimum amount of sugar in grams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minSugar?: number
    /**
     * The maximum amount of sugar in grams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxSugar?: number
    /**
     * The minimum amount of zinc in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    minZinc?: number
    /**
     * The maximum amount of zinc in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    maxZinc?: number
    /**
     * The number of results to skip (between 0 and 900).
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    offset?: number
    /**
     * The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @type number
     * @memberof RecipesApisearchRecipes
     */
    number?: number
    /**
     * Whether the recipes should have an open license that allows display with proper attribution.
     * @type boolean
     * @memberof RecipesApisearchRecipes
     */
    limitLicense?: boolean
}

export interface RecipesApiSearchRecipesByIngredientsRequest {
    /**
     * A comma-separated list of ingredients that the recipes should contain.
     * @type string
     * @memberof RecipesApisearchRecipesByIngredients
     */
    ingredients?: string
    /**
     * The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @type number
     * @memberof RecipesApisearchRecipesByIngredients
     */
    number?: number
    /**
     * Whether the recipes should have an open license that allows display with proper attribution.
     * @type boolean
     * @memberof RecipesApisearchRecipesByIngredients
     */
    limitLicense?: boolean
    /**
     * Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
     * @type number
     * @memberof RecipesApisearchRecipesByIngredients
     */
    ranking?: number
    /**
     * Whether to ignore typical pantry items, such as water, salt, flour, etc.
     * @type boolean
     * @memberof RecipesApisearchRecipesByIngredients
     */
    ignorePantry?: boolean
}

export interface RecipesApiSearchRecipesByNutrientsRequest {
    /**
     * The minimum amount of carbohydrates in grams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minCarbs?: number
    /**
     * The maximum amount of carbohydrates in grams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxCarbs?: number
    /**
     * The minimum amount of protein in grams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minProtein?: number
    /**
     * The maximum amount of protein in grams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxProtein?: number
    /**
     * The minimum amount of calories the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minCalories?: number
    /**
     * The maximum amount of calories the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxCalories?: number
    /**
     * The minimum amount of fat in grams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minFat?: number
    /**
     * The maximum amount of fat in grams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxFat?: number
    /**
     * The minimum amount of alcohol in grams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minAlcohol?: number
    /**
     * The maximum amount of alcohol in grams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxAlcohol?: number
    /**
     * The minimum amount of caffeine in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minCaffeine?: number
    /**
     * The maximum amount of caffeine in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxCaffeine?: number
    /**
     * The minimum amount of copper in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minCopper?: number
    /**
     * The maximum amount of copper in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxCopper?: number
    /**
     * The minimum amount of calcium in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minCalcium?: number
    /**
     * The maximum amount of calcium in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxCalcium?: number
    /**
     * The minimum amount of choline in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minCholine?: number
    /**
     * The maximum amount of choline in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxCholine?: number
    /**
     * The minimum amount of cholesterol in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minCholesterol?: number
    /**
     * The maximum amount of cholesterol in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxCholesterol?: number
    /**
     * The minimum amount of fluoride in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minFluoride?: number
    /**
     * The maximum amount of fluoride in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxFluoride?: number
    /**
     * The minimum amount of saturated fat in grams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minSaturatedFat?: number
    /**
     * The maximum amount of saturated fat in grams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxSaturatedFat?: number
    /**
     * The minimum amount of Vitamin A in IU the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minVitaminA?: number
    /**
     * The maximum amount of Vitamin A in IU the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxVitaminA?: number
    /**
     * The minimum amount of Vitamin C in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minVitaminC?: number
    /**
     * The maximum amount of Vitamin C in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxVitaminC?: number
    /**
     * The minimum amount of Vitamin D in micrograms the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minVitaminD?: number
    /**
     * The maximum amount of Vitamin D in micrograms the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxVitaminD?: number
    /**
     * The minimum amount of Vitamin E in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minVitaminE?: number
    /**
     * The maximum amount of Vitamin E in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxVitaminE?: number
    /**
     * The minimum amount of Vitamin K in micrograms the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minVitaminK?: number
    /**
     * The maximum amount of Vitamin K in micrograms the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxVitaminK?: number
    /**
     * The minimum amount of Vitamin B1 in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minVitaminB1?: number
    /**
     * The maximum amount of Vitamin B1 in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxVitaminB1?: number
    /**
     * The minimum amount of Vitamin B2 in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minVitaminB2?: number
    /**
     * The maximum amount of Vitamin B2 in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxVitaminB2?: number
    /**
     * The minimum amount of Vitamin B5 in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minVitaminB5?: number
    /**
     * The maximum amount of Vitamin B5 in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxVitaminB5?: number
    /**
     * The minimum amount of Vitamin B3 in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minVitaminB3?: number
    /**
     * The maximum amount of Vitamin B3 in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxVitaminB3?: number
    /**
     * The minimum amount of Vitamin B6 in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minVitaminB6?: number
    /**
     * The maximum amount of Vitamin B6 in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxVitaminB6?: number
    /**
     * The minimum amount of Vitamin B12 in micrograms the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minVitaminB12?: number
    /**
     * The maximum amount of Vitamin B12 in micrograms the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxVitaminB12?: number
    /**
     * The minimum amount of fiber in grams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minFiber?: number
    /**
     * The maximum amount of fiber in grams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxFiber?: number
    /**
     * The minimum amount of folate in micrograms the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minFolate?: number
    /**
     * The maximum amount of folate in micrograms the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxFolate?: number
    /**
     * The minimum amount of folic acid in micrograms the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minFolicAcid?: number
    /**
     * The maximum amount of folic acid in micrograms the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxFolicAcid?: number
    /**
     * The minimum amount of iodine in micrograms the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minIodine?: number
    /**
     * The maximum amount of iodine in micrograms the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxIodine?: number
    /**
     * The minimum amount of iron in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minIron?: number
    /**
     * The maximum amount of iron in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxIron?: number
    /**
     * The minimum amount of magnesium in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minMagnesium?: number
    /**
     * The maximum amount of magnesium in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxMagnesium?: number
    /**
     * The minimum amount of manganese in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minManganese?: number
    /**
     * The maximum amount of manganese in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxManganese?: number
    /**
     * The minimum amount of phosphorus in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minPhosphorus?: number
    /**
     * The maximum amount of phosphorus in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxPhosphorus?: number
    /**
     * The minimum amount of potassium in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minPotassium?: number
    /**
     * The maximum amount of potassium in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxPotassium?: number
    /**
     * The minimum amount of selenium in micrograms the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minSelenium?: number
    /**
     * The maximum amount of selenium in micrograms the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxSelenium?: number
    /**
     * The minimum amount of sodium in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minSodium?: number
    /**
     * The maximum amount of sodium in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxSodium?: number
    /**
     * The minimum amount of sugar in grams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minSugar?: number
    /**
     * The maximum amount of sugar in grams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxSugar?: number
    /**
     * The minimum amount of zinc in milligrams the recipe must have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    minZinc?: number
    /**
     * The maximum amount of zinc in milligrams the recipe can have.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    maxZinc?: number
    /**
     * The number of results to skip (between 0 and 900).
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    offset?: number
    /**
     * The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @type number
     * @memberof RecipesApisearchRecipesByNutrients
     */
    number?: number
    /**
     * If true, every request will give you a random set of recipes within the requested limits.
     * @type boolean
     * @memberof RecipesApisearchRecipesByNutrients
     */
    random?: boolean
    /**
     * Whether the recipes should have an open license that allows display with proper attribution.
     * @type boolean
     * @memberof RecipesApisearchRecipesByNutrients
     */
    limitLicense?: boolean
}

export interface RecipesApiSummarizeRecipeRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof RecipesApisummarizeRecipe
     */
    id: number
}

export interface RecipesApiVisualizeEquipmentRequest {
    /**
     * The content type.
     * @type &#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;
     * @memberof RecipesApivisualizeEquipment
     */
    contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data'
    /**
     * Accept header.
     * @type &#39;application/json&#39; | &#39;text/html&#39; | &#39;media/_*&#39;
     * @memberof RecipesApivisualizeEquipment
     */
    accept?: 'application/json' | 'text/html' | 'media/_*'
}

export interface RecipesApiVisualizePriceBreakdownRequest {
    /**
     * The content type.
     * @type &#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;
     * @memberof RecipesApivisualizePriceBreakdown
     */
    contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data'
    /**
     * Accept header.
     * @type &#39;application/json&#39; | &#39;text/html&#39; | &#39;media/_*&#39;
     * @memberof RecipesApivisualizePriceBreakdown
     */
    accept?: 'application/json' | 'text/html' | 'media/_*'
    /**
     * The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     * @type &#39;en&#39; | &#39;de&#39;
     * @memberof RecipesApivisualizePriceBreakdown
     */
    language?: 'en' | 'de'
}

export interface RecipesApiVisualizeRecipeEquipmentByIDRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof RecipesApivisualizeRecipeEquipmentByID
     */
    id: number
    /**
     * Whether the default CSS should be added to the response.
     * @type boolean
     * @memberof RecipesApivisualizeRecipeEquipmentByID
     */
    defaultCss?: boolean
}

export interface RecipesApiVisualizeRecipeIngredientsByIDRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof RecipesApivisualizeRecipeIngredientsByID
     */
    id: number
    /**
     * Whether the default CSS should be added to the response.
     * @type boolean
     * @memberof RecipesApivisualizeRecipeIngredientsByID
     */
    defaultCss?: boolean
    /**
     * Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.
     * @type &#39;us&#39; | &#39;metric&#39;
     * @memberof RecipesApivisualizeRecipeIngredientsByID
     */
    measure?: 'us' | 'metric'
}

export interface RecipesApiVisualizeRecipeNutritionRequest {
    /**
     * The content type.
     * @type &#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;
     * @memberof RecipesApivisualizeRecipeNutrition
     */
    contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data'
    /**
     * Accept header.
     * @type &#39;application/json&#39; | &#39;text/html&#39; | &#39;media/_*&#39;
     * @memberof RecipesApivisualizeRecipeNutrition
     */
    accept?: 'application/json' | 'text/html' | 'media/_*'
    /**
     * The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     * @type &#39;en&#39; | &#39;de&#39;
     * @memberof RecipesApivisualizeRecipeNutrition
     */
    language?: 'en' | 'de'
}

export interface RecipesApiVisualizeRecipeNutritionByIDRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof RecipesApivisualizeRecipeNutritionByID
     */
    id: number
    /**
     * Whether the default CSS should be added to the response.
     * @type boolean
     * @memberof RecipesApivisualizeRecipeNutritionByID
     */
    defaultCss?: boolean
    /**
     * Accept header.
     * @type &#39;application/json&#39; | &#39;text/html&#39; | &#39;media/_*&#39;
     * @memberof RecipesApivisualizeRecipeNutritionByID
     */
    accept?: 'application/json' | 'text/html' | 'media/_*'
}

export interface RecipesApiVisualizeRecipePriceBreakdownByIDRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof RecipesApivisualizeRecipePriceBreakdownByID
     */
    id: number
    /**
     * Whether the default CSS should be added to the response.
     * @type boolean
     * @memberof RecipesApivisualizeRecipePriceBreakdownByID
     */
    defaultCss?: boolean
}

export interface RecipesApiVisualizeRecipeTasteRequest {
    /**
     * The language of the input. Either &#39;en&#39; or &#39;de&#39;.
     * @type &#39;en&#39; | &#39;de&#39;
     * @memberof RecipesApivisualizeRecipeTaste
     */
    language?: 'en' | 'de'
    /**
     * The content type.
     * @type &#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;
     * @memberof RecipesApivisualizeRecipeTaste
     */
    contentType?: 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data'
    /**
     * Accept header.
     * @type &#39;application/json&#39; | &#39;text/html&#39; | &#39;media/_*&#39;
     * @memberof RecipesApivisualizeRecipeTaste
     */
    accept?: 'application/json' | 'text/html' | 'media/_*'
    /**
     * Whether to normalize to the strongest taste.
     * @type boolean
     * @memberof RecipesApivisualizeRecipeTaste
     */
    normalize?: boolean
    /**
     * Red, green, blue values for the chart color.
     * @type string
     * @memberof RecipesApivisualizeRecipeTaste
     */
    rgb?: string
}

export interface RecipesApiVisualizeRecipeTasteByIDRequest {
    /**
     * The item&#39;s id.
     * @type number
     * @memberof RecipesApivisualizeRecipeTasteByID
     */
    id: number
    /**
     * Whether to normalize to the strongest taste.
     * @type boolean
     * @memberof RecipesApivisualizeRecipeTasteByID
     */
    normalize?: boolean
    /**
     * Red, green, blue values for the chart color.
     * @type string
     * @memberof RecipesApivisualizeRecipeTasteByID
     */
    rgb?: string
}

export class ObjectRecipesApi {
    private api: ObservableRecipesApi

    public constructor(configuration: Configuration, requestFactory?: RecipesApiRequestFactory, responseProcessor?: RecipesApiResponseProcessor) {
        this.api = new ObservableRecipesApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Parse a recipe search query to find out its intention.
     * Analyze a Recipe Search Query
     * @param param the request object
     */
    public analyzeARecipeSearchQuery(param: RecipesApiAnalyzeARecipeSearchQueryRequest, options?: Configuration): Promise<AnalyzeARecipeSearchQuery200Response> {
        return this.api.analyzeARecipeSearchQuery(param.q,  options).toPromise();
    }

    /**
     * This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.
     * Analyze Recipe Instructions
     * @param param the request object
     */
    public analyzeRecipeInstructions(param: RecipesApiAnalyzeRecipeInstructionsRequest = {}, options?: Configuration): Promise<AnalyzeRecipeInstructions200Response> {
        return this.api.analyzeRecipeInstructions(param.contentType,  options).toPromise();
    }

    /**
     * Autocomplete a partial input to suggest possible recipe names.
     * Autocomplete Recipe Search
     * @param param the request object
     */
    public autocompleteRecipeSearch(param: RecipesApiAutocompleteRecipeSearchRequest = {}, options?: Configuration): Promise<Set<AutocompleteRecipeSearch200ResponseInner>> {
        return this.api.autocompleteRecipeSearch(param.query, param.number,  options).toPromise();
    }

    /**
     * Classify the recipe's cuisine.
     * Classify Cuisine
     * @param param the request object
     */
    public classifyCuisine(param: RecipesApiClassifyCuisineRequest = {}, options?: Configuration): Promise<ClassifyCuisine200Response> {
        return this.api.classifyCuisine(param.contentType,  options).toPromise();
    }

    /**
     * Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.
     * Compute Glycemic Load
     * @param param the request object
     */
    public computeGlycemicLoad(param: RecipesApiComputeGlycemicLoadRequest, options?: Configuration): Promise<ComputeGlycemicLoad200Response> {
        return this.api.computeGlycemicLoad(param.computeGlycemicLoadRequest, param.language,  options).toPromise();
    }

    /**
     * Convert amounts like \"2 cups of flour to grams\".
     * Convert Amounts
     * @param param the request object
     */
    public convertAmounts(param: RecipesApiConvertAmountsRequest, options?: Configuration): Promise<ConvertAmounts200Response> {
        return this.api.convertAmounts(param.ingredientName, param.sourceAmount, param.sourceUnit, param.targetUnit,  options).toPromise();
    }

    /**
     * Generate a recipe card for a recipe.
     * Create Recipe Card
     * @param param the request object
     */
    public createRecipeCard(param: RecipesApiCreateRecipeCardRequest = {}, options?: Configuration): Promise<CreateRecipeCard200Response> {
        return this.api.createRecipeCard(param.contentType,  options).toPromise();
    }

    /**
     * Visualize a recipe's equipment list as an image.
     * Equipment by ID Image
     * @param param the request object
     */
    public equipmentByIDImage(param: RecipesApiEquipmentByIDImageRequest, options?: Configuration): Promise<any> {
        return this.api.equipmentByIDImage(param.id,  options).toPromise();
    }

    /**
     * This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.
     * Extract Recipe from Website
     * @param param the request object
     */
    public extractRecipeFromWebsite(param: RecipesApiExtractRecipeFromWebsiteRequest, options?: Configuration): Promise<GetRecipeInformation200Response> {
        return this.api.extractRecipeFromWebsite(param.url, param.forceExtraction, param.analyze, param.includeNutrition, param.includeTaste,  options).toPromise();
    }

    /**
     * Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.
     * Get Analyzed Recipe Instructions
     * @param param the request object
     */
    public getAnalyzedRecipeInstructions(param: RecipesApiGetAnalyzedRecipeInstructionsRequest, options?: Configuration): Promise<GetAnalyzedRecipeInstructions200Response> {
        return this.api.getAnalyzedRecipeInstructions(param.id, param.stepBreakdown,  options).toPromise();
    }

    /**
     * Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.
     * Get Random Recipes
     * @param param the request object
     */
    public getRandomRecipes(param: RecipesApiGetRandomRecipesRequest = {}, options?: Configuration): Promise<GetRandomRecipes200Response> {
        return this.api.getRandomRecipes(param.limitLicense, param.tags, param.number,  options).toPromise();
    }

    /**
     * Get a recipe's equipment list.
     * Equipment by ID
     * @param param the request object
     */
    public getRecipeEquipmentByID(param: RecipesApiGetRecipeEquipmentByIDRequest, options?: Configuration): Promise<GetRecipeEquipmentByID200Response> {
        return this.api.getRecipeEquipmentByID(param.id,  options).toPromise();
    }

    /**
     * Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.
     * Get Recipe Information
     * @param param the request object
     */
    public getRecipeInformation(param: RecipesApiGetRecipeInformationRequest, options?: Configuration): Promise<GetRecipeInformation200Response> {
        return this.api.getRecipeInformation(param.id, param.includeNutrition,  options).toPromise();
    }

    /**
     * Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.
     * Get Recipe Information Bulk
     * @param param the request object
     */
    public getRecipeInformationBulk(param: RecipesApiGetRecipeInformationBulkRequest, options?: Configuration): Promise<Set<GetRecipeInformationBulk200ResponseInner>> {
        return this.api.getRecipeInformationBulk(param.ids, param.includeNutrition,  options).toPromise();
    }

    /**
     * Get a recipe's ingredient list.
     * Ingredients by ID
     * @param param the request object
     */
    public getRecipeIngredientsByID(param: RecipesApiGetRecipeIngredientsByIDRequest, options?: Configuration): Promise<GetRecipeIngredientsByID200Response> {
        return this.api.getRecipeIngredientsByID(param.id,  options).toPromise();
    }

    /**
     * Get a recipe's nutrition data.
     * Nutrition by ID
     * @param param the request object
     */
    public getRecipeNutritionWidgetByID(param: RecipesApiGetRecipeNutritionWidgetByIDRequest, options?: Configuration): Promise<GetRecipeNutritionWidgetByID200Response> {
        return this.api.getRecipeNutritionWidgetByID(param.id,  options).toPromise();
    }

    /**
     * Get a recipe's price breakdown data.
     * Price Breakdown by ID
     * @param param the request object
     */
    public getRecipePriceBreakdownByID(param: RecipesApiGetRecipePriceBreakdownByIDRequest, options?: Configuration): Promise<GetRecipePriceBreakdownByID200Response> {
        return this.api.getRecipePriceBreakdownByID(param.id,  options).toPromise();
    }

    /**
     * Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
     * Taste by ID
     * @param param the request object
     */
    public getRecipeTasteByID(param: RecipesApiGetRecipeTasteByIDRequest, options?: Configuration): Promise<GetRecipeTasteByID200Response> {
        return this.api.getRecipeTasteByID(param.id, param.normalize,  options).toPromise();
    }

    /**
     * Find recipes which are similar to the given one.
     * Get Similar Recipes
     * @param param the request object
     */
    public getSimilarRecipes(param: RecipesApiGetSimilarRecipesRequest, options?: Configuration): Promise<Set<GetSimilarRecipes200ResponseInner>> {
        return this.api.getSimilarRecipes(param.id, param.number, param.limitLicense,  options).toPromise();
    }

    /**
     * Estimate the macronutrients of a dish based on its title.
     * Guess Nutrition by Dish Name
     * @param param the request object
     */
    public guessNutritionByDishName(param: RecipesApiGuessNutritionByDishNameRequest, options?: Configuration): Promise<GuessNutritionByDishName200Response> {
        return this.api.guessNutritionByDishName(param.title,  options).toPromise();
    }

    /**
     * Visualize a recipe's ingredient list.
     * Ingredients by ID Image
     * @param param the request object
     */
    public ingredientsByIDImage(param: RecipesApiIngredientsByIDImageRequest, options?: Configuration): Promise<any> {
        return this.api.ingredientsByIDImage(param.id, param.measure,  options).toPromise();
    }

    /**
     * Extract an ingredient from plain text.
     * Parse Ingredients
     * @param param the request object
     */
    public parseIngredients(param: RecipesApiParseIngredientsRequest = {}, options?: Configuration): Promise<Set<ParseIngredients200ResponseInner>> {
        return this.api.parseIngredients(param.contentType, param.language,  options).toPromise();
    }

    /**
     * Visualize a recipe's price breakdown.
     * Price Breakdown by ID Image
     * @param param the request object
     */
    public priceBreakdownByIDImage(param: RecipesApiPriceBreakdownByIDImageRequest, options?: Configuration): Promise<any> {
        return this.api.priceBreakdownByIDImage(param.id,  options).toPromise();
    }

    /**
     * Answer a nutrition related natural language question.
     * Quick Answer
     * @param param the request object
     */
    public quickAnswer(param: RecipesApiQuickAnswerRequest, options?: Configuration): Promise<QuickAnswer200Response> {
        return this.api.quickAnswer(param.q,  options).toPromise();
    }

    /**
     * Visualize a recipe's nutritional information as an image.
     * Recipe Nutrition by ID Image
     * @param param the request object
     */
    public recipeNutritionByIDImage(param: RecipesApiRecipeNutritionByIDImageRequest, options?: Configuration): Promise<any> {
        return this.api.recipeNutritionByIDImage(param.id,  options).toPromise();
    }

    /**
     * Get a recipe's nutrition label as an image.
     * Recipe Nutrition Label Image
     * @param param the request object
     */
    public recipeNutritionLabelImage(param: RecipesApiRecipeNutritionLabelImageRequest, options?: Configuration): Promise<any> {
        return this.api.recipeNutritionLabelImage(param.id, param.showOptionalNutrients, param.showZeroValues, param.showIngredients,  options).toPromise();
    }

    /**
     * Get a recipe's nutrition label as an HTML widget.
     * Recipe Nutrition Label Widget
     * @param param the request object
     */
    public recipeNutritionLabelWidget(param: RecipesApiRecipeNutritionLabelWidgetRequest, options?: Configuration): Promise<string> {
        return this.api.recipeNutritionLabelWidget(param.id, param.defaultCss, param.showOptionalNutrients, param.showZeroValues, param.showIngredients,  options).toPromise();
    }

    /**
     * Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
     * Recipe Taste by ID Image
     * @param param the request object
     */
    public recipeTasteByIDImage(param: RecipesApiRecipeTasteByIDImageRequest, options?: Configuration): Promise<any> {
        return this.api.recipeTasteByIDImage(param.id, param.normalize, param.rgb,  options).toPromise();
    }

    /**
     * Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.
     * Search Recipes
     * @param param the request object
     */
    public searchRecipes(param: RecipesApiSearchRecipesRequest = {}, options?: Configuration): Promise<SearchRecipes200Response> {
        return this.api.searchRecipes(param.query, param.cuisine, param.excludeCuisine, param.diet, param.intolerances, param.equipment, param.includeIngredients, param.excludeIngredients, param.type, param.instructionsRequired, param.fillIngredients, param.addRecipeInformation, param.addRecipeNutrition, param.author, param.tags, param.recipeBoxId, param.titleMatch, param.maxReadyTime, param.ignorePantry, param.sort, param.sortDirection, param.minCarbs, param.maxCarbs, param.minProtein, param.maxProtein, param.minCalories, param.maxCalories, param.minFat, param.maxFat, param.minAlcohol, param.maxAlcohol, param.minCaffeine, param.maxCaffeine, param.minCopper, param.maxCopper, param.minCalcium, param.maxCalcium, param.minCholine, param.maxCholine, param.minCholesterol, param.maxCholesterol, param.minFluoride, param.maxFluoride, param.minSaturatedFat, param.maxSaturatedFat, param.minVitaminA, param.maxVitaminA, param.minVitaminC, param.maxVitaminC, param.minVitaminD, param.maxVitaminD, param.minVitaminE, param.maxVitaminE, param.minVitaminK, param.maxVitaminK, param.minVitaminB1, param.maxVitaminB1, param.minVitaminB2, param.maxVitaminB2, param.minVitaminB5, param.maxVitaminB5, param.minVitaminB3, param.maxVitaminB3, param.minVitaminB6, param.maxVitaminB6, param.minVitaminB12, param.maxVitaminB12, param.minFiber, param.maxFiber, param.minFolate, param.maxFolate, param.minFolicAcid, param.maxFolicAcid, param.minIodine, param.maxIodine, param.minIron, param.maxIron, param.minMagnesium, param.maxMagnesium, param.minManganese, param.maxManganese, param.minPhosphorus, param.maxPhosphorus, param.minPotassium, param.maxPotassium, param.minSelenium, param.maxSelenium, param.minSodium, param.maxSodium, param.minSugar, param.maxSugar, param.minZinc, param.maxZinc, param.offset, param.number, param.limitLicense,  options).toPromise();
    }

    /**
     *  Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         
     * Search Recipes by Ingredients
     * @param param the request object
     */
    public searchRecipesByIngredients(param: RecipesApiSearchRecipesByIngredientsRequest = {}, options?: Configuration): Promise<Set<SearchRecipesByIngredients200ResponseInner>> {
        return this.api.searchRecipesByIngredients(param.ingredients, param.number, param.limitLicense, param.ranking, param.ignorePantry,  options).toPromise();
    }

    /**
     * Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.
     * Search Recipes by Nutrients
     * @param param the request object
     */
    public searchRecipesByNutrients(param: RecipesApiSearchRecipesByNutrientsRequest = {}, options?: Configuration): Promise<Set<SearchRecipesByNutrients200ResponseInner>> {
        return this.api.searchRecipesByNutrients(param.minCarbs, param.maxCarbs, param.minProtein, param.maxProtein, param.minCalories, param.maxCalories, param.minFat, param.maxFat, param.minAlcohol, param.maxAlcohol, param.minCaffeine, param.maxCaffeine, param.minCopper, param.maxCopper, param.minCalcium, param.maxCalcium, param.minCholine, param.maxCholine, param.minCholesterol, param.maxCholesterol, param.minFluoride, param.maxFluoride, param.minSaturatedFat, param.maxSaturatedFat, param.minVitaminA, param.maxVitaminA, param.minVitaminC, param.maxVitaminC, param.minVitaminD, param.maxVitaminD, param.minVitaminE, param.maxVitaminE, param.minVitaminK, param.maxVitaminK, param.minVitaminB1, param.maxVitaminB1, param.minVitaminB2, param.maxVitaminB2, param.minVitaminB5, param.maxVitaminB5, param.minVitaminB3, param.maxVitaminB3, param.minVitaminB6, param.maxVitaminB6, param.minVitaminB12, param.maxVitaminB12, param.minFiber, param.maxFiber, param.minFolate, param.maxFolate, param.minFolicAcid, param.maxFolicAcid, param.minIodine, param.maxIodine, param.minIron, param.maxIron, param.minMagnesium, param.maxMagnesium, param.minManganese, param.maxManganese, param.minPhosphorus, param.maxPhosphorus, param.minPotassium, param.maxPotassium, param.minSelenium, param.maxSelenium, param.minSodium, param.maxSodium, param.minSugar, param.maxSugar, param.minZinc, param.maxZinc, param.offset, param.number, param.random, param.limitLicense,  options).toPromise();
    }

    /**
     * Automatically generate a short description that summarizes key information about the recipe.
     * Summarize Recipe
     * @param param the request object
     */
    public summarizeRecipe(param: RecipesApiSummarizeRecipeRequest, options?: Configuration): Promise<SummarizeRecipe200Response> {
        return this.api.summarizeRecipe(param.id,  options).toPromise();
    }

    /**
     * Visualize the equipment used to make a recipe.
     * Equipment Widget
     * @param param the request object
     */
    public visualizeEquipment(param: RecipesApiVisualizeEquipmentRequest = {}, options?: Configuration): Promise<string> {
        return this.api.visualizeEquipment(param.contentType, param.accept,  options).toPromise();
    }

    /**
     * Visualize the price breakdown of a recipe.
     * Price Breakdown Widget
     * @param param the request object
     */
    public visualizePriceBreakdown(param: RecipesApiVisualizePriceBreakdownRequest = {}, options?: Configuration): Promise<string> {
        return this.api.visualizePriceBreakdown(param.contentType, param.accept, param.language,  options).toPromise();
    }

    /**
     * Visualize a recipe's equipment list.
     * Equipment by ID Widget
     * @param param the request object
     */
    public visualizeRecipeEquipmentByID(param: RecipesApiVisualizeRecipeEquipmentByIDRequest, options?: Configuration): Promise<string> {
        return this.api.visualizeRecipeEquipmentByID(param.id, param.defaultCss,  options).toPromise();
    }

    /**
     * Visualize a recipe's ingredient list.
     * Ingredients by ID Widget
     * @param param the request object
     */
    public visualizeRecipeIngredientsByID(param: RecipesApiVisualizeRecipeIngredientsByIDRequest, options?: Configuration): Promise<string> {
        return this.api.visualizeRecipeIngredientsByID(param.id, param.defaultCss, param.measure,  options).toPromise();
    }

    /**
     * Visualize a recipe's nutritional information as HTML including CSS.
     * Recipe Nutrition Widget
     * @param param the request object
     */
    public visualizeRecipeNutrition(param: RecipesApiVisualizeRecipeNutritionRequest = {}, options?: Configuration): Promise<string> {
        return this.api.visualizeRecipeNutrition(param.contentType, param.accept, param.language,  options).toPromise();
    }

    /**
     * Visualize a recipe's nutritional information as HTML including CSS.
     * Recipe Nutrition by ID Widget
     * @param param the request object
     */
    public visualizeRecipeNutritionByID(param: RecipesApiVisualizeRecipeNutritionByIDRequest, options?: Configuration): Promise<string> {
        return this.api.visualizeRecipeNutritionByID(param.id, param.defaultCss, param.accept,  options).toPromise();
    }

    /**
     * Visualize a recipe's price breakdown.
     * Price Breakdown by ID Widget
     * @param param the request object
     */
    public visualizeRecipePriceBreakdownByID(param: RecipesApiVisualizeRecipePriceBreakdownByIDRequest, options?: Configuration): Promise<string> {
        return this.api.visualizeRecipePriceBreakdownByID(param.id, param.defaultCss,  options).toPromise();
    }

    /**
     * Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!
     * Recipe Taste Widget
     * @param param the request object
     */
    public visualizeRecipeTaste(param: RecipesApiVisualizeRecipeTasteRequest = {}, options?: Configuration): Promise<string> {
        return this.api.visualizeRecipeTaste(param.language, param.contentType, param.accept, param.normalize, param.rgb,  options).toPromise();
    }

    /**
     * Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
     * Recipe Taste by ID Widget
     * @param param the request object
     */
    public visualizeRecipeTasteByID(param: RecipesApiVisualizeRecipeTasteByIDRequest, options?: Configuration): Promise<string> {
        return this.api.visualizeRecipeTasteByID(param.id, param.normalize, param.rgb,  options).toPromise();
    }

}

import { ObservableWineApi } from "./ObservableAPI";
import { WineApiRequestFactory, WineApiResponseProcessor} from "../apis/WineApi";

export interface WineApiGetDishPairingForWineRequest {
    /**
     * The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.
     * @type string
     * @memberof WineApigetDishPairingForWine
     */
    wine: string
}

export interface WineApiGetWineDescriptionRequest {
    /**
     * The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.
     * @type string
     * @memberof WineApigetWineDescription
     */
    wine: string
}

export interface WineApiGetWinePairingRequest {
    /**
     * The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).
     * @type string
     * @memberof WineApigetWinePairing
     */
    food: string
    /**
     * The maximum price for the specific wine recommendation in USD.
     * @type number
     * @memberof WineApigetWinePairing
     */
    maxPrice?: number
}

export interface WineApiGetWineRecommendationRequest {
    /**
     * The type of wine to get a specific product recommendation for.
     * @type string
     * @memberof WineApigetWineRecommendation
     */
    wine: string
    /**
     * The maximum price for the specific wine recommendation in USD.
     * @type number
     * @memberof WineApigetWineRecommendation
     */
    maxPrice?: number
    /**
     * The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
     * @type number
     * @memberof WineApigetWineRecommendation
     */
    minRating?: number
    /**
     * The number of wine recommendations expected (between 1 and 100).
     * @type number
     * @memberof WineApigetWineRecommendation
     */
    number?: number
}

export class ObjectWineApi {
    private api: ObservableWineApi

    public constructor(configuration: Configuration, requestFactory?: WineApiRequestFactory, responseProcessor?: WineApiResponseProcessor) {
        this.api = new ObservableWineApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Find a dish that goes well with a given wine.
     * Dish Pairing for Wine
     * @param param the request object
     */
    public getDishPairingForWine(param: WineApiGetDishPairingForWineRequest, options?: Configuration): Promise<GetDishPairingForWine200Response> {
        return this.api.getDishPairingForWine(param.wine,  options).toPromise();
    }

    /**
     * Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".
     * Wine Description
     * @param param the request object
     */
    public getWineDescription(param: WineApiGetWineDescriptionRequest, options?: Configuration): Promise<GetWineDescription200Response> {
        return this.api.getWineDescription(param.wine,  options).toPromise();
    }

    /**
     * Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").
     * Wine Pairing
     * @param param the request object
     */
    public getWinePairing(param: WineApiGetWinePairingRequest, options?: Configuration): Promise<GetWinePairing200Response> {
        return this.api.getWinePairing(param.food, param.maxPrice,  options).toPromise();
    }

    /**
     * Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".
     * Wine Recommendation
     * @param param the request object
     */
    public getWineRecommendation(param: WineApiGetWineRecommendationRequest, options?: Configuration): Promise<GetWineRecommendation200Response> {
        return this.api.getWineRecommendation(param.wine, param.maxPrice, param.minRating, param.number,  options).toPromise();
    }

}
