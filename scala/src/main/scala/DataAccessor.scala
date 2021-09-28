package spoonacular

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
        * @return A Seq[InlineResponse20024]
        */
        def Ingredients_autocompleteIngredientSearch(query: Option[String], number: Option[Int], metaInformation: Option[Boolean], intolerances: Option[String], authParamapiKeyScheme: String): Either[CommonError,Seq[InlineResponse20024]] = Left(TODO)

        /**
        * 
        * @return A RecipesParseIngredientsNutritionWeightPerServing
        */
        def Ingredients_computeIngredientAmount(id: BigDecimal, nutrient: String, target: BigDecimal, unit: Option[String], authParamapiKeyScheme: String): Either[CommonError,RecipesParseIngredientsNutritionWeightPerServing] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20022
        */
        def Ingredients_getIngredientInformation(id: Int, amount: Option[BigDecimal], unit: Option[String], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20022] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20026
        */
        def Ingredients_getIngredientSubstitutes(ingredientName: String, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20026] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20026
        */
        def Ingredients_getIngredientSubstitutesByID(id: Int, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20026] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20025
        */
        def Ingredients_ingredientSearch(query: Option[String], addChildren: Option[Boolean], minProteinPercent: Option[BigDecimal], maxProteinPercent: Option[BigDecimal], minFatPercent: Option[BigDecimal], maxFatPercent: Option[BigDecimal], minCarbsPercent: Option[BigDecimal], maxCarbsPercent: Option[BigDecimal], metaInformation: Option[Boolean], intolerances: Option[String], sort: Option[String], sortDirection: Option[String], offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20025] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Ingredients_ingredientsByIDImage(id: BigDecimal, measure: Option[String], authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Seq[InlineResponse20034]
        */
        def Ingredients_mapIngredientsToGroceryProducts(inlineObject2: InlineObject2, authParamapiKeyScheme: String): Either[CommonError,Seq[InlineResponse20034]] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Ingredients_visualizeIngredients(contentType: Option[String], language: Option[String], accept: Option[String], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def MealPlanning_addToMealPlan(username: String, hash: String, inlineObject4: InlineObject4, authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20041
        */
        def MealPlanning_addToShoppingList(username: String, hash: String, inlineObject7: InlineObject7, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20041] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def MealPlanning_clearMealPlanDay(username: String, date: String, hash: String, inlineObject3: InlineObject3, authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20042
        */
        def MealPlanning_connectUser(body: Object, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20042] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def MealPlanning_deleteFromMealPlan(username: String, id: BigDecimal, hash: String, inlineObject5: InlineObject5, authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def MealPlanning_deleteFromShoppingList(username: String, id: Int, hash: String, inlineObject8: InlineObject8, authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20037
        */
        def MealPlanning_generateMealPlan(timeFrame: Option[String], targetCalories: Option[BigDecimal], diet: Option[String], exclude: Option[String], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20037] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20041
        */
        def MealPlanning_generateShoppingList(username: String, startDate: String, endDate: String, hash: String, inlineObject6: InlineObject6, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20041] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20040
        */
        def MealPlanning_getMealPlanTemplate(username: String, id: Int, hash: String, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20040] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20039
        */
        def MealPlanning_getMealPlanTemplates(username: String, hash: String, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20039] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20038
        */
        def MealPlanning_getMealPlanWeek(username: String, startDate: String, hash: String, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20038] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20041
        */
        def MealPlanning_getShoppingList(username: String, hash: String, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20041] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20032
        */
        def MenuItems_autocompleteMenuItemSearch(query: String, number: Option[BigDecimal], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20032] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20036
        */
        def MenuItems_getMenuItemInformation(id: Int, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20036] = Left(TODO)

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
        * @return A InlineResponse20035
        */
        def MenuItems_searchMenuItems(query: Option[String], minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20035] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def MenuItems_visualizeMenuItemNutritionByID(id: Int, defaultCss: Option[Boolean], accept: Option[String], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20050
        */
        def Misc_detectFoodInText(contentType: Option[String], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20050] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20054
        */
        def Misc_getARandomFoodJoke(authParamapiKeyScheme: String): Either[CommonError,InlineResponse20054] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20056
        */
        def Misc_getConversationSuggests(query: String, number: Option[BigDecimal], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20056] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20054
        */
        def Misc_getRandomFoodTrivia(authParamapiKeyScheme: String): Either[CommonError,InlineResponse20054] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20048
        */
        def Misc_imageAnalysisByURL(imageUrl: String, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20048] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20047
        */
        def Misc_imageClassificationByURL(imageUrl: String, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20047] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20052
        */
        def Misc_searchAllFood(query: String, offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20052] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20029
        */
        def Misc_searchCustomFoods(username: String, hash: String, query: Option[String], offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20029] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20053
        */
        def Misc_searchFoodVideos(query: Option[String], _type: Option[String], cuisine: Option[String], diet: Option[String], includeIngredients: Option[String], excludeIngredients: Option[String], minLength: Option[BigDecimal], maxLength: Option[BigDecimal], offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20053] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20051
        */
        def Misc_searchSiteContent(query: String, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20051] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20055
        */
        def Misc_talkToChatbot(text: String, contextId: Option[String], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20055] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20032
        */
        def Products_autocompleteProductSearch(query: String, number: Option[Int], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20032] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20033
        */
        def Products_classifyGroceryProduct(inlineObject1: InlineObject1, locale: Option[String], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20033] = Left(TODO)

        /**
        * 
        * @return A Seq[InlineResponse20033]
        */
        def Products_classifyGroceryProductBulk(inlineObject: Seq[InlineObject], locale: Option[String], authParamapiKeyScheme: String): Either[CommonError,Seq[InlineResponse20033]] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20031
        */
        def Products_getComparableProducts(upc: BigDecimal, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20031] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20030
        */
        def Products_getProductInformation(id: Int, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20030] = Left(TODO)

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
        * @return A InlineResponse20027
        */
        def Products_searchGroceryProducts(query: Option[String], minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20027] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20028
        */
        def Products_searchGroceryProductsByUPC(upc: BigDecimal, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20028] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Products_visualizeProductNutritionByID(id: Int, defaultCss: Option[Boolean], accept: Option[String], authParamapiKeyScheme: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20018
        */
        def Recipes_analyzeARecipeSearchQuery(q: String, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20018] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20016
        */
        def Recipes_analyzeRecipeInstructions(contentType: Option[String], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20016] = Left(TODO)

        /**
        * 
        * @return A Seq[InlineResponse2007]
        */
        def Recipes_autocompleteRecipeSearch(query: Option[String], number: Option[Int], authParamapiKeyScheme: String): Either[CommonError,Seq[InlineResponse2007]] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20017
        */
        def Recipes_classifyCuisine(contentType: Option[String], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20017] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20023
        */
        def Recipes_computeGlycemicLoad(inlineObject: InlineObject, language: Option[String], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20023] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20019
        */
        def Recipes_convertAmounts(ingredientName: String, sourceAmount: BigDecimal, sourceUnit: String, targetUnit: String, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20019] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20015
        */
        def Recipes_createRecipeCard(contentType: Option[String], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20015] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Recipes_equipmentByIDImage(id: BigDecimal, authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2003
        */
        def Recipes_extractRecipeFromWebsite(url: String, forceExtraction: Option[Boolean], analyze: Option[Boolean], includeNutrition: Option[Boolean], includeTaste: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,InlineResponse2003] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20013
        */
        def Recipes_getAnalyzedRecipeInstructions(id: Int, stepBreakdown: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20013] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2006
        */
        def Recipes_getRandomRecipes(limitLicense: Option[Boolean], tags: Option[String], number: Option[Int], authParamapiKeyScheme: String): Either[CommonError,InlineResponse2006] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2009
        */
        def Recipes_getRecipeEquipmentByID(id: Int, authParamapiKeyScheme: String): Either[CommonError,InlineResponse2009] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2003
        */
        def Recipes_getRecipeInformation(id: Int, includeNutrition: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,InlineResponse2003] = Left(TODO)

        /**
        * 
        * @return A Seq[InlineResponse2004]
        */
        def Recipes_getRecipeInformationBulk(ids: String, includeNutrition: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,Seq[InlineResponse2004]] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20011
        */
        def Recipes_getRecipeIngredientsByID(id: Int, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20011] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20012
        */
        def Recipes_getRecipeNutritionWidgetByID(id: Int, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20012] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20010
        */
        def Recipes_getRecipePriceBreakdownByID(id: Int, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20010] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2008
        */
        def Recipes_getRecipeTasteByID(id: Int, normalize: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,InlineResponse2008] = Left(TODO)

        /**
        * 
        * @return A Seq[InlineResponse2005]
        */
        def Recipes_getSimilarRecipes(id: Int, number: Option[Int], limitLicense: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,Seq[InlineResponse2005]] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20021
        */
        def Recipes_guessNutritionByDishName(title: String, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20021] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Recipes_ingredientsByIDImage(id: BigDecimal, measure: Option[String], authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Seq[InlineResponse20020]
        */
        def Recipes_parseIngredients(contentType: Option[String], language: Option[String], authParamapiKeyScheme: String): Either[CommonError,Seq[InlineResponse20020]] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Recipes_priceBreakdownByIDImage(id: BigDecimal, authParamapiKeyScheme: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20049
        */
        def Recipes_quickAnswer(q: String, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20049] = Left(TODO)

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
        * @return A InlineResponse200
        */
        def Recipes_searchRecipes(query: Option[String], cuisine: Option[String], excludeCuisine: Option[String], diet: Option[String], intolerances: Option[String], equipment: Option[String], includeIngredients: Option[String], excludeIngredients: Option[String], _type: Option[String], instructionsRequired: Option[Boolean], fillIngredients: Option[Boolean], addRecipeInformation: Option[Boolean], addRecipeNutrition: Option[Boolean], author: Option[String], tags: Option[String], recipeBoxId: Option[BigDecimal], titleMatch: Option[String], maxReadyTime: Option[BigDecimal], ignorePantry: Option[Boolean], sort: Option[String], sortDirection: Option[String], minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], minAlcohol: Option[BigDecimal], maxAlcohol: Option[BigDecimal], minCaffeine: Option[BigDecimal], maxCaffeine: Option[BigDecimal], minCopper: Option[BigDecimal], maxCopper: Option[BigDecimal], minCalcium: Option[BigDecimal], maxCalcium: Option[BigDecimal], minCholine: Option[BigDecimal], maxCholine: Option[BigDecimal], minCholesterol: Option[BigDecimal], maxCholesterol: Option[BigDecimal], minFluoride: Option[BigDecimal], maxFluoride: Option[BigDecimal], minSaturatedFat: Option[BigDecimal], maxSaturatedFat: Option[BigDecimal], minVitaminA: Option[BigDecimal], maxVitaminA: Option[BigDecimal], minVitaminC: Option[BigDecimal], maxVitaminC: Option[BigDecimal], minVitaminD: Option[BigDecimal], maxVitaminD: Option[BigDecimal], minVitaminE: Option[BigDecimal], maxVitaminE: Option[BigDecimal], minVitaminK: Option[BigDecimal], maxVitaminK: Option[BigDecimal], minVitaminB1: Option[BigDecimal], maxVitaminB1: Option[BigDecimal], minVitaminB2: Option[BigDecimal], maxVitaminB2: Option[BigDecimal], minVitaminB5: Option[BigDecimal], maxVitaminB5: Option[BigDecimal], minVitaminB3: Option[BigDecimal], maxVitaminB3: Option[BigDecimal], minVitaminB6: Option[BigDecimal], maxVitaminB6: Option[BigDecimal], minVitaminB12: Option[BigDecimal], maxVitaminB12: Option[BigDecimal], minFiber: Option[BigDecimal], maxFiber: Option[BigDecimal], minFolate: Option[BigDecimal], maxFolate: Option[BigDecimal], minFolicAcid: Option[BigDecimal], maxFolicAcid: Option[BigDecimal], minIodine: Option[BigDecimal], maxIodine: Option[BigDecimal], minIron: Option[BigDecimal], maxIron: Option[BigDecimal], minMagnesium: Option[BigDecimal], maxMagnesium: Option[BigDecimal], minManganese: Option[BigDecimal], maxManganese: Option[BigDecimal], minPhosphorus: Option[BigDecimal], maxPhosphorus: Option[BigDecimal], minPotassium: Option[BigDecimal], maxPotassium: Option[BigDecimal], minSelenium: Option[BigDecimal], maxSelenium: Option[BigDecimal], minSodium: Option[BigDecimal], maxSodium: Option[BigDecimal], minSugar: Option[BigDecimal], maxSugar: Option[BigDecimal], minZinc: Option[BigDecimal], maxZinc: Option[BigDecimal], offset: Option[Int], number: Option[Int], limitLicense: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,InlineResponse200] = Left(TODO)

        /**
        * 
        * @return A Seq[InlineResponse2001]
        */
        def Recipes_searchRecipesByIngredients(ingredients: Option[String], number: Option[Int], limitLicense: Option[Boolean], ranking: Option[BigDecimal], ignorePantry: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,Seq[InlineResponse2001]] = Left(TODO)

        /**
        * 
        * @return A Seq[InlineResponse2002]
        */
        def Recipes_searchRecipesByNutrients(minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], minAlcohol: Option[BigDecimal], maxAlcohol: Option[BigDecimal], minCaffeine: Option[BigDecimal], maxCaffeine: Option[BigDecimal], minCopper: Option[BigDecimal], maxCopper: Option[BigDecimal], minCalcium: Option[BigDecimal], maxCalcium: Option[BigDecimal], minCholine: Option[BigDecimal], maxCholine: Option[BigDecimal], minCholesterol: Option[BigDecimal], maxCholesterol: Option[BigDecimal], minFluoride: Option[BigDecimal], maxFluoride: Option[BigDecimal], minSaturatedFat: Option[BigDecimal], maxSaturatedFat: Option[BigDecimal], minVitaminA: Option[BigDecimal], maxVitaminA: Option[BigDecimal], minVitaminC: Option[BigDecimal], maxVitaminC: Option[BigDecimal], minVitaminD: Option[BigDecimal], maxVitaminD: Option[BigDecimal], minVitaminE: Option[BigDecimal], maxVitaminE: Option[BigDecimal], minVitaminK: Option[BigDecimal], maxVitaminK: Option[BigDecimal], minVitaminB1: Option[BigDecimal], maxVitaminB1: Option[BigDecimal], minVitaminB2: Option[BigDecimal], maxVitaminB2: Option[BigDecimal], minVitaminB5: Option[BigDecimal], maxVitaminB5: Option[BigDecimal], minVitaminB3: Option[BigDecimal], maxVitaminB3: Option[BigDecimal], minVitaminB6: Option[BigDecimal], maxVitaminB6: Option[BigDecimal], minVitaminB12: Option[BigDecimal], maxVitaminB12: Option[BigDecimal], minFiber: Option[BigDecimal], maxFiber: Option[BigDecimal], minFolate: Option[BigDecimal], maxFolate: Option[BigDecimal], minFolicAcid: Option[BigDecimal], maxFolicAcid: Option[BigDecimal], minIodine: Option[BigDecimal], maxIodine: Option[BigDecimal], minIron: Option[BigDecimal], maxIron: Option[BigDecimal], minMagnesium: Option[BigDecimal], maxMagnesium: Option[BigDecimal], minManganese: Option[BigDecimal], maxManganese: Option[BigDecimal], minPhosphorus: Option[BigDecimal], maxPhosphorus: Option[BigDecimal], minPotassium: Option[BigDecimal], maxPotassium: Option[BigDecimal], minSelenium: Option[BigDecimal], maxSelenium: Option[BigDecimal], minSodium: Option[BigDecimal], maxSodium: Option[BigDecimal], minSugar: Option[BigDecimal], maxSugar: Option[BigDecimal], minZinc: Option[BigDecimal], maxZinc: Option[BigDecimal], offset: Option[Int], number: Option[Int], random: Option[Boolean], limitLicense: Option[Boolean], authParamapiKeyScheme: String): Either[CommonError,Seq[InlineResponse2002]] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20014
        */
        def Recipes_summarizeRecipe(id: Int, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20014] = Left(TODO)

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
        * @return A InlineResponse20043
        */
        def Wine_getDishPairingForWine(wine: String, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20043] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20045
        */
        def Wine_getWineDescription(wine: String, authParamapiKeyScheme: String): Either[CommonError,InlineResponse20045] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20044
        */
        def Wine_getWinePairing(food: String, maxPrice: Option[BigDecimal], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20044] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20046
        */
        def Wine_getWineRecommendation(wine: String, maxPrice: Option[BigDecimal], minRating: Option[BigDecimal], number: Option[BigDecimal], authParamapiKeyScheme: String): Either[CommonError,InlineResponse20046] = Left(TODO)

}