package org.openapitools

// TODO: properly handle custom imports
import java.io._
import java.util.UUID
import java.time._
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}

import com.spoonacular.client.model._

trait DataAccessor {
    // TODO: apiInfo -> apis -> operations = TODO error
    private object TODO extends CommonError("Not implemented") {
        def message = "Not implemented"
    }

        /**
        * 
        * @return A Object
        */
        def Default_analyzeRecipe(analyzeRecipeRequest: AnalyzeRecipeRequest, language: Option[String], includeNutrition: Option[Boolean], includeTaste: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A SearchRestaurants200Response
        */
        def Default_searchRestaurants(query: Option[String], lat: Option[BigDecimal], lng: Option[BigDecimal], distance: Option[BigDecimal], budget: Option[BigDecimal], cuisine: Option[String], minRating: Option[BigDecimal], isOpen: Option[Boolean], sort: Option[String], page: Option[BigDecimal], authParamapiKeyScheme: String): Either[CommonError,SearchRestaurants200Response] = Left(TODO)

        /**
        * 
        * @return A Set[AutocompleteIngredientSearch200ResponseInner]
        */
        def Ingredients_autocompleteIngredientSearch(query: Option[String], number: Option[Int], metaInformation: Option[Boolean], intolerances: Option[String], language: Option[String], authParamapiKeyScheme: String): Either[CommonError,Set[AutocompleteIngredientSearch200ResponseInner]] = Left(TODO)

        /**
        * 
        * @return A ComputeIngredientAmount200Response
        */
        def Ingredients_computeIngredientAmount(id: BigDecimal, nutrient: String, target: BigDecimal, unit: Option[String], authParamapiKeyScheme: String): Either[CommonError,ComputeIngredientAmount200Response] = Left(TODO)

        /**
        * 
        * @return A GetIngredientInformation200Response
        */
        def Ingredients_getIngredientInformation(id: Int, amount: Option[BigDecimal], unit: Option[String], authParamapiKeyScheme: String): Either[CommonError,GetIngredientInformation200Response] = Left(TODO)

        /**
        * 
        * @return A GetIngredientSubstitutes200Response
        */
        def Ingredients_getIngredientSubstitutes(ingredientName: String, authParamapiKeyScheme: String): Either[CommonError,GetIngredientSubstitutes200Response] = Left(TODO)

        /**
        * 
        * @return A GetIngredientSubstitutes200Response
        */
        def Ingredients_getIngredientSubstitutesByID(id: Int, authParamapiKeyScheme: String): Either[CommonError,GetIngredientSubstitutes200Response] = Left(TODO)

        /**
        * 
        * @return A IngredientSearch200Response
        */
        def Ingredients_ingredientSearch(query: Option[String], addChildren: Option[Boolean], minProteinPercent: Option[BigDecimal], maxProteinPercent: Option[BigDecimal], minFatPercent: Option[BigDecimal], maxFatPercent: Option[BigDecimal], minCarbsPercent: Option[BigDecimal], maxCarbsPercent: Option[BigDecimal], metaInformation: Option[Boolean], intolerances: Option[String], sort: Option[String], sortDirection: Option[String], offset: Option[Int], number: Option[Int], language: Option[String], authParamapiKeyScheme: String): Either[CommonError,IngredientSearch200Response] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Ingredients_ingredientsByIDImage(id: BigDecimal, measure: Option[String], authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Set[MapIngredientsToGroceryProducts200ResponseInner]
        */
        def Ingredients_mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest: MapIngredientsToGroceryProductsRequest, authParamapiKeyScheme: String): Either[CommonError,Set[MapIngredientsToGroceryProducts200ResponseInner]] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Ingredients_visualizeIngredients(contentType: Option[String], language: Option[String], accept: Option[String], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A AddMealPlanTemplate200Response
        */
        def MealPlanning_addMealPlanTemplate(username: String, hash: String, addToMealPlanRequest: AddToMealPlanRequest, authParamapiKeyScheme: String): Either[CommonError,AddMealPlanTemplate200Response] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def MealPlanning_addToMealPlan(username: String, hash: String, addToMealPlanRequest: AddToMealPlanRequest, authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A GenerateShoppingList200Response
        */
        def MealPlanning_addToShoppingList(username: String, hash: String, addToMealPlanRequest: AddToMealPlanRequest, authParamapiKeyScheme: String): Either[CommonError,GenerateShoppingList200Response] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def MealPlanning_clearMealPlanDay(username: String, date: String, hash: String, clearMealPlanDayRequest: ClearMealPlanDayRequest, authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A ConnectUser200Response
        */
        def MealPlanning_connectUser(body: Object, authParamapiKeyScheme: String): Either[CommonError,ConnectUser200Response] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def MealPlanning_deleteFromMealPlan(username: String, id: BigDecimal, hash: String, deleteFromMealPlanRequest: DeleteFromMealPlanRequest, authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def MealPlanning_deleteFromShoppingList(username: String, id: Int, hash: String, deleteFromMealPlanRequest: DeleteFromMealPlanRequest, authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def MealPlanning_deleteMealPlanTemplate(username: String, id: Int, hash: String, deleteFromMealPlanRequest: DeleteFromMealPlanRequest, authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A GenerateMealPlan200Response
        */
        def MealPlanning_generateMealPlan(timeFrame: Option[String], targetCalories: Option[BigDecimal], diet: Option[String], exclude: Option[String], authParamapiKeyScheme: String): Either[CommonError,GenerateMealPlan200Response] = Left(TODO)

        /**
        * 
        * @return A GenerateShoppingList200Response
        */
        def MealPlanning_generateShoppingList(username: String, startDate: String, endDate: String, hash: String, generateShoppingListRequest: GenerateShoppingListRequest, authParamapiKeyScheme: String): Either[CommonError,GenerateShoppingList200Response] = Left(TODO)

        /**
        * 
        * @return A GetMealPlanTemplate200Response
        */
        def MealPlanning_getMealPlanTemplate(username: String, id: Int, hash: String, authParamapiKeyScheme: String): Either[CommonError,GetMealPlanTemplate200Response] = Left(TODO)

        /**
        * 
        * @return A GetMealPlanTemplates200Response
        */
        def MealPlanning_getMealPlanTemplates(username: String, hash: String, authParamapiKeyScheme: String): Either[CommonError,GetMealPlanTemplates200Response] = Left(TODO)

        /**
        * 
        * @return A GetMealPlanWeek200Response
        */
        def MealPlanning_getMealPlanWeek(username: String, startDate: String, hash: String, authParamapiKeyScheme: String): Either[CommonError,GetMealPlanWeek200Response] = Left(TODO)

        /**
        * 
        * @return A GetShoppingList200Response
        */
        def MealPlanning_getShoppingList(username: String, hash: String, authParamapiKeyScheme: String): Either[CommonError,GetShoppingList200Response] = Left(TODO)

        /**
        * 
        * @return A AutocompleteMenuItemSearch200Response
        */
        def MenuItems_autocompleteMenuItemSearch(query: String, number: Option[BigDecimal], authParamapiKeyScheme: String): Either[CommonError,AutocompleteMenuItemSearch200Response] = Left(TODO)

        /**
        * 
        * @return A GetMenuItemInformation200Response
        */
        def MenuItems_getMenuItemInformation(id: Int, authParamapiKeyScheme: String): Either[CommonError,GetMenuItemInformation200Response] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def MenuItems_menuItemNutritionByIDImage(id: BigDecimal, authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def MenuItems_menuItemNutritionLabelImage(id: BigDecimal, showOptionalNutrients: Option[Boolean], showZeroValues: Option[Boolean], showIngredients: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def MenuItems_menuItemNutritionLabelWidget(id: BigDecimal, defaultCss: Option[Boolean], showOptionalNutrients: Option[Boolean], showZeroValues: Option[Boolean], showIngredients: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A SearchMenuItems200Response
        */
        def MenuItems_searchMenuItems(query: Option[String], minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], addMenuItemInformation: Option[Boolean], offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String): Either[CommonError,SearchMenuItems200Response] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def MenuItems_visualizeMenuItemNutritionByID(id: Int, defaultCss: Option[Boolean], accept: Option[String], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A DetectFoodInText200Response
        */
        def Misc_detectFoodInText(contentType: Option[String], authParamapiKeyScheme: String): Either[CommonError,DetectFoodInText200Response] = Left(TODO)

        /**
        * 
        * @return A GetARandomFoodJoke200Response
        */
        def Misc_getARandomFoodJoke(authParamapiKeyScheme: String): Either[CommonError,GetARandomFoodJoke200Response] = Left(TODO)

        /**
        * 
        * @return A GetConversationSuggests200Response
        */
        def Misc_getConversationSuggests(query: String, number: Option[BigDecimal], authParamapiKeyScheme: String): Either[CommonError,GetConversationSuggests200Response] = Left(TODO)

        /**
        * 
        * @return A GetRandomFoodTrivia200Response
        */
        def Misc_getRandomFoodTrivia(authParamapiKeyScheme: String): Either[CommonError,GetRandomFoodTrivia200Response] = Left(TODO)

        /**
        * 
        * @return A ImageAnalysisByURL200Response
        */
        def Misc_imageAnalysisByURL(imageUrl: String, authParamapiKeyScheme: String): Either[CommonError,ImageAnalysisByURL200Response] = Left(TODO)

        /**
        * 
        * @return A ImageClassificationByURL200Response
        */
        def Misc_imageClassificationByURL(imageUrl: String, authParamapiKeyScheme: String): Either[CommonError,ImageClassificationByURL200Response] = Left(TODO)

        /**
        * 
        * @return A SearchAllFood200Response
        */
        def Misc_searchAllFood(query: String, offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String): Either[CommonError,SearchAllFood200Response] = Left(TODO)

        /**
        * 
        * @return A SearchCustomFoods200Response
        */
        def Misc_searchCustomFoods(username: String, hash: String, query: Option[String], offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String): Either[CommonError,SearchCustomFoods200Response] = Left(TODO)

        /**
        * 
        * @return A SearchFoodVideos200Response
        */
        def Misc_searchFoodVideos(query: Option[String], _type: Option[String], cuisine: Option[String], diet: Option[String], includeIngredients: Option[String], excludeIngredients: Option[String], minLength: Option[BigDecimal], maxLength: Option[BigDecimal], offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String): Either[CommonError,SearchFoodVideos200Response] = Left(TODO)

        /**
        * 
        * @return A SearchSiteContent200Response
        */
        def Misc_searchSiteContent(query: String, authParamapiKeyScheme: String): Either[CommonError,SearchSiteContent200Response] = Left(TODO)

        /**
        * 
        * @return A TalkToChatbot200Response
        */
        def Misc_talkToChatbot(text: String, contextId: Option[String], authParamapiKeyScheme: String): Either[CommonError,TalkToChatbot200Response] = Left(TODO)

        /**
        * 
        * @return A AutocompleteProductSearch200Response
        */
        def Products_autocompleteProductSearch(query: String, number: Option[Int], authParamapiKeyScheme: String): Either[CommonError,AutocompleteProductSearch200Response] = Left(TODO)

        /**
        * 
        * @return A ClassifyGroceryProduct200Response
        */
        def Products_classifyGroceryProduct(classifyGroceryProductRequest: ClassifyGroceryProductRequest, locale: Option[String], authParamapiKeyScheme: String): Either[CommonError,ClassifyGroceryProduct200Response] = Left(TODO)

        /**
        * 
        * @return A Set[ClassifyGroceryProductBulk200ResponseInner]
        */
        def Products_classifyGroceryProductBulk(classifyGroceryProductBulkRequestInner: Set[ClassifyGroceryProductBulkRequestInner], locale: Option[String], authParamapiKeyScheme: String): Either[CommonError,Set[ClassifyGroceryProductBulk200ResponseInner]] = Left(TODO)

        /**
        * 
        * @return A GetComparableProducts200Response
        */
        def Products_getComparableProducts(upc: BigDecimal, authParamapiKeyScheme: String): Either[CommonError,GetComparableProducts200Response] = Left(TODO)

        /**
        * 
        * @return A GetProductInformation200Response
        */
        def Products_getProductInformation(id: Int, authParamapiKeyScheme: String): Either[CommonError,GetProductInformation200Response] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Products_productNutritionByIDImage(id: BigDecimal, authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Products_productNutritionLabelImage(id: BigDecimal, showOptionalNutrients: Option[Boolean], showZeroValues: Option[Boolean], showIngredients: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Products_productNutritionLabelWidget(id: BigDecimal, defaultCss: Option[Boolean], showOptionalNutrients: Option[Boolean], showZeroValues: Option[Boolean], showIngredients: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A SearchGroceryProducts200Response
        */
        def Products_searchGroceryProducts(query: Option[String], minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], addProductInformation: Option[Boolean], offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String): Either[CommonError,SearchGroceryProducts200Response] = Left(TODO)

        /**
        * 
        * @return A SearchGroceryProductsByUPC200Response
        */
        def Products_searchGroceryProductsByUPC(upc: BigDecimal, authParamapiKeyScheme: String): Either[CommonError,SearchGroceryProductsByUPC200Response] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Products_visualizeProductNutritionByID(id: Int, defaultCss: Option[Boolean], accept: Option[String], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A AnalyzeARecipeSearchQuery200Response
        */
        def Recipes_analyzeARecipeSearchQuery(q: String, authParamapiKeyScheme: String): Either[CommonError,AnalyzeARecipeSearchQuery200Response] = Left(TODO)

        /**
        * 
        * @return A AnalyzeRecipeInstructions200Response
        */
        def Recipes_analyzeRecipeInstructions(contentType: Option[String], authParamapiKeyScheme: String): Either[CommonError,AnalyzeRecipeInstructions200Response] = Left(TODO)

        /**
        * 
        * @return A Set[AutocompleteRecipeSearch200ResponseInner]
        */
        def Recipes_autocompleteRecipeSearch(query: Option[String], number: Option[Int], authParamapiKeyScheme: String): Either[CommonError,Set[AutocompleteRecipeSearch200ResponseInner]] = Left(TODO)

        /**
        * 
        * @return A ClassifyCuisine200Response
        */
        def Recipes_classifyCuisine(contentType: Option[String], authParamapiKeyScheme: String): Either[CommonError,ClassifyCuisine200Response] = Left(TODO)

        /**
        * 
        * @return A ComputeGlycemicLoad200Response
        */
        def Recipes_computeGlycemicLoad(computeGlycemicLoadRequest: ComputeGlycemicLoadRequest, language: Option[String], authParamapiKeyScheme: String): Either[CommonError,ComputeGlycemicLoad200Response] = Left(TODO)

        /**
        * 
        * @return A ConvertAmounts200Response
        */
        def Recipes_convertAmounts(ingredientName: String, sourceAmount: BigDecimal, sourceUnit: String, targetUnit: String, authParamapiKeyScheme: String): Either[CommonError,ConvertAmounts200Response] = Left(TODO)

        /**
        * 
        * @return A CreateRecipeCard200Response
        */
        def Recipes_createRecipeCard(contentType: Option[String], authParamapiKeyScheme: String): Either[CommonError,CreateRecipeCard200Response] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Recipes_equipmentByIDImage(id: BigDecimal, authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A GetRecipeInformation200Response
        */
        def Recipes_extractRecipeFromWebsite(url: String, forceExtraction: Option[Boolean], analyze: Option[Boolean], includeNutrition: Option[Boolean], includeTaste: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,GetRecipeInformation200Response] = Left(TODO)

        /**
        * 
        * @return A GetAnalyzedRecipeInstructions200Response
        */
        def Recipes_getAnalyzedRecipeInstructions(id: Int, stepBreakdown: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,GetAnalyzedRecipeInstructions200Response] = Left(TODO)

        /**
        * 
        * @return A GetRandomRecipes200Response
        */
        def Recipes_getRandomRecipes(limitLicense: Option[Boolean], tags: Option[String], number: Option[Int], authParamapiKeyScheme: String): Either[CommonError,GetRandomRecipes200Response] = Left(TODO)

        /**
        * 
        * @return A GetRecipeEquipmentByID200Response
        */
        def Recipes_getRecipeEquipmentByID(id: Int, authParamapiKeyScheme: String): Either[CommonError,GetRecipeEquipmentByID200Response] = Left(TODO)

        /**
        * 
        * @return A GetRecipeInformation200Response
        */
        def Recipes_getRecipeInformation(id: Int, includeNutrition: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,GetRecipeInformation200Response] = Left(TODO)

        /**
        * 
        * @return A Set[GetRecipeInformationBulk200ResponseInner]
        */
        def Recipes_getRecipeInformationBulk(ids: String, includeNutrition: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,Set[GetRecipeInformationBulk200ResponseInner]] = Left(TODO)

        /**
        * 
        * @return A GetRecipeIngredientsByID200Response
        */
        def Recipes_getRecipeIngredientsByID(id: Int, authParamapiKeyScheme: String): Either[CommonError,GetRecipeIngredientsByID200Response] = Left(TODO)

        /**
        * 
        * @return A GetRecipeNutritionWidgetByID200Response
        */
        def Recipes_getRecipeNutritionWidgetByID(id: Int, authParamapiKeyScheme: String): Either[CommonError,GetRecipeNutritionWidgetByID200Response] = Left(TODO)

        /**
        * 
        * @return A GetRecipePriceBreakdownByID200Response
        */
        def Recipes_getRecipePriceBreakdownByID(id: Int, authParamapiKeyScheme: String): Either[CommonError,GetRecipePriceBreakdownByID200Response] = Left(TODO)

        /**
        * 
        * @return A GetRecipeTasteByID200Response
        */
        def Recipes_getRecipeTasteByID(id: Int, normalize: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,GetRecipeTasteByID200Response] = Left(TODO)

        /**
        * 
        * @return A Set[GetSimilarRecipes200ResponseInner]
        */
        def Recipes_getSimilarRecipes(id: Int, number: Option[Int], limitLicense: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,Set[GetSimilarRecipes200ResponseInner]] = Left(TODO)

        /**
        * 
        * @return A GuessNutritionByDishName200Response
        */
        def Recipes_guessNutritionByDishName(title: String, authParamapiKeyScheme: String): Either[CommonError,GuessNutritionByDishName200Response] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Recipes_ingredientsByIDImage(id: BigDecimal, measure: Option[String], authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Set[ParseIngredients200ResponseInner]
        */
        def Recipes_parseIngredients(contentType: Option[String], language: Option[String], authParamapiKeyScheme: String): Either[CommonError,Set[ParseIngredients200ResponseInner]] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Recipes_priceBreakdownByIDImage(id: BigDecimal, authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A QuickAnswer200Response
        */
        def Recipes_quickAnswer(q: String, authParamapiKeyScheme: String): Either[CommonError,QuickAnswer200Response] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Recipes_recipeNutritionByIDImage(id: BigDecimal, authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Recipes_recipeNutritionLabelImage(id: BigDecimal, showOptionalNutrients: Option[Boolean], showZeroValues: Option[Boolean], showIngredients: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Recipes_recipeNutritionLabelWidget(id: BigDecimal, defaultCss: Option[Boolean], showOptionalNutrients: Option[Boolean], showZeroValues: Option[Boolean], showIngredients: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Recipes_recipeTasteByIDImage(id: BigDecimal, normalize: Option[Boolean], rgb: Option[String], authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A SearchRecipes200Response
        */
        def Recipes_searchRecipes(query: Option[String], cuisine: Option[String], excludeCuisine: Option[String], diet: Option[String], intolerances: Option[String], equipment: Option[String], includeIngredients: Option[String], excludeIngredients: Option[String], _type: Option[String], instructionsRequired: Option[Boolean], fillIngredients: Option[Boolean], addRecipeInformation: Option[Boolean], addRecipeNutrition: Option[Boolean], author: Option[String], tags: Option[String], recipeBoxId: Option[BigDecimal], titleMatch: Option[String], maxReadyTime: Option[BigDecimal], ignorePantry: Option[Boolean], sort: Option[String], sortDirection: Option[String], minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], minAlcohol: Option[BigDecimal], maxAlcohol: Option[BigDecimal], minCaffeine: Option[BigDecimal], maxCaffeine: Option[BigDecimal], minCopper: Option[BigDecimal], maxCopper: Option[BigDecimal], minCalcium: Option[BigDecimal], maxCalcium: Option[BigDecimal], minCholine: Option[BigDecimal], maxCholine: Option[BigDecimal], minCholesterol: Option[BigDecimal], maxCholesterol: Option[BigDecimal], minFluoride: Option[BigDecimal], maxFluoride: Option[BigDecimal], minSaturatedFat: Option[BigDecimal], maxSaturatedFat: Option[BigDecimal], minVitaminA: Option[BigDecimal], maxVitaminA: Option[BigDecimal], minVitaminC: Option[BigDecimal], maxVitaminC: Option[BigDecimal], minVitaminD: Option[BigDecimal], maxVitaminD: Option[BigDecimal], minVitaminE: Option[BigDecimal], maxVitaminE: Option[BigDecimal], minVitaminK: Option[BigDecimal], maxVitaminK: Option[BigDecimal], minVitaminB1: Option[BigDecimal], maxVitaminB1: Option[BigDecimal], minVitaminB2: Option[BigDecimal], maxVitaminB2: Option[BigDecimal], minVitaminB5: Option[BigDecimal], maxVitaminB5: Option[BigDecimal], minVitaminB3: Option[BigDecimal], maxVitaminB3: Option[BigDecimal], minVitaminB6: Option[BigDecimal], maxVitaminB6: Option[BigDecimal], minVitaminB12: Option[BigDecimal], maxVitaminB12: Option[BigDecimal], minFiber: Option[BigDecimal], maxFiber: Option[BigDecimal], minFolate: Option[BigDecimal], maxFolate: Option[BigDecimal], minFolicAcid: Option[BigDecimal], maxFolicAcid: Option[BigDecimal], minIodine: Option[BigDecimal], maxIodine: Option[BigDecimal], minIron: Option[BigDecimal], maxIron: Option[BigDecimal], minMagnesium: Option[BigDecimal], maxMagnesium: Option[BigDecimal], minManganese: Option[BigDecimal], maxManganese: Option[BigDecimal], minPhosphorus: Option[BigDecimal], maxPhosphorus: Option[BigDecimal], minPotassium: Option[BigDecimal], maxPotassium: Option[BigDecimal], minSelenium: Option[BigDecimal], maxSelenium: Option[BigDecimal], minSodium: Option[BigDecimal], maxSodium: Option[BigDecimal], minSugar: Option[BigDecimal], maxSugar: Option[BigDecimal], minZinc: Option[BigDecimal], maxZinc: Option[BigDecimal], offset: Option[Int], number: Option[Int], limitLicense: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,SearchRecipes200Response] = Left(TODO)

        /**
        * 
        * @return A Set[SearchRecipesByIngredients200ResponseInner]
        */
        def Recipes_searchRecipesByIngredients(ingredients: Option[String], number: Option[Int], limitLicense: Option[Boolean], ranking: Option[BigDecimal], ignorePantry: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,Set[SearchRecipesByIngredients200ResponseInner]] = Left(TODO)

        /**
        * 
        * @return A Set[SearchRecipesByNutrients200ResponseInner]
        */
        def Recipes_searchRecipesByNutrients(minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], minAlcohol: Option[BigDecimal], maxAlcohol: Option[BigDecimal], minCaffeine: Option[BigDecimal], maxCaffeine: Option[BigDecimal], minCopper: Option[BigDecimal], maxCopper: Option[BigDecimal], minCalcium: Option[BigDecimal], maxCalcium: Option[BigDecimal], minCholine: Option[BigDecimal], maxCholine: Option[BigDecimal], minCholesterol: Option[BigDecimal], maxCholesterol: Option[BigDecimal], minFluoride: Option[BigDecimal], maxFluoride: Option[BigDecimal], minSaturatedFat: Option[BigDecimal], maxSaturatedFat: Option[BigDecimal], minVitaminA: Option[BigDecimal], maxVitaminA: Option[BigDecimal], minVitaminC: Option[BigDecimal], maxVitaminC: Option[BigDecimal], minVitaminD: Option[BigDecimal], maxVitaminD: Option[BigDecimal], minVitaminE: Option[BigDecimal], maxVitaminE: Option[BigDecimal], minVitaminK: Option[BigDecimal], maxVitaminK: Option[BigDecimal], minVitaminB1: Option[BigDecimal], maxVitaminB1: Option[BigDecimal], minVitaminB2: Option[BigDecimal], maxVitaminB2: Option[BigDecimal], minVitaminB5: Option[BigDecimal], maxVitaminB5: Option[BigDecimal], minVitaminB3: Option[BigDecimal], maxVitaminB3: Option[BigDecimal], minVitaminB6: Option[BigDecimal], maxVitaminB6: Option[BigDecimal], minVitaminB12: Option[BigDecimal], maxVitaminB12: Option[BigDecimal], minFiber: Option[BigDecimal], maxFiber: Option[BigDecimal], minFolate: Option[BigDecimal], maxFolate: Option[BigDecimal], minFolicAcid: Option[BigDecimal], maxFolicAcid: Option[BigDecimal], minIodine: Option[BigDecimal], maxIodine: Option[BigDecimal], minIron: Option[BigDecimal], maxIron: Option[BigDecimal], minMagnesium: Option[BigDecimal], maxMagnesium: Option[BigDecimal], minManganese: Option[BigDecimal], maxManganese: Option[BigDecimal], minPhosphorus: Option[BigDecimal], maxPhosphorus: Option[BigDecimal], minPotassium: Option[BigDecimal], maxPotassium: Option[BigDecimal], minSelenium: Option[BigDecimal], maxSelenium: Option[BigDecimal], minSodium: Option[BigDecimal], maxSodium: Option[BigDecimal], minSugar: Option[BigDecimal], maxSugar: Option[BigDecimal], minZinc: Option[BigDecimal], maxZinc: Option[BigDecimal], offset: Option[Int], number: Option[Int], random: Option[Boolean], limitLicense: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,Set[SearchRecipesByNutrients200ResponseInner]] = Left(TODO)

        /**
        * 
        * @return A SummarizeRecipe200Response
        */
        def Recipes_summarizeRecipe(id: Int, authParamapiKeyScheme: String): Either[CommonError,SummarizeRecipe200Response] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Recipes_visualizeEquipment(contentType: Option[String], accept: Option[String], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Recipes_visualizePriceBreakdown(contentType: Option[String], accept: Option[String], language: Option[String], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Recipes_visualizeRecipeEquipmentByID(id: Int, defaultCss: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Recipes_visualizeRecipeIngredientsByID(id: Int, defaultCss: Option[Boolean], measure: Option[String], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Recipes_visualizeRecipeNutrition(contentType: Option[String], accept: Option[String], language: Option[String], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Recipes_visualizeRecipeNutritionByID(id: Int, defaultCss: Option[Boolean], accept: Option[String], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Recipes_visualizeRecipePriceBreakdownByID(id: Int, defaultCss: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Recipes_visualizeRecipeTaste(language: Option[String], contentType: Option[String], accept: Option[String], normalize: Option[Boolean], rgb: Option[String], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Recipes_visualizeRecipeTasteByID(id: Int, normalize: Option[Boolean], rgb: Option[String], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A GetDishPairingForWine200Response
        */
        def Wine_getDishPairingForWine(wine: String, authParamapiKeyScheme: String): Either[CommonError,GetDishPairingForWine200Response] = Left(TODO)

        /**
        * 
        * @return A GetWineDescription200Response
        */
        def Wine_getWineDescription(wine: String, authParamapiKeyScheme: String): Either[CommonError,GetWineDescription200Response] = Left(TODO)

        /**
        * 
        * @return A GetWinePairing200Response
        */
        def Wine_getWinePairing(food: String, maxPrice: Option[BigDecimal], authParamapiKeyScheme: String): Either[CommonError,GetWinePairing200Response] = Left(TODO)

        /**
        * 
        * @return A GetWineRecommendation200Response
        */
        def Wine_getWineRecommendation(wine: String, maxPrice: Option[BigDecimal], minRating: Option[BigDecimal], number: Option[BigDecimal], authParamapiKeyScheme: String): Either[CommonError,GetWineRecommendation200Response] = Left(TODO)

}