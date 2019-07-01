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
        * @return A Object
        */
        def Default_analyzeARecipeSearchQuery(q: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_analyzeRecipeInstructions(instructions: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_autocompleteIngredientSearch(query: String, number: Option[BigDecimal], metaInformation: Option[Boolean], intolerances: Option[Boolean]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_autocompleteMenuItemSearch(query: String, number: Option[BigDecimal]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_autocompleteProductSearch(query: String, number: Option[BigDecimal]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_autocompleteRecipeSearch(query: String, number: Option[BigDecimal]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_classifyCuisine(title: String, ingredientList: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_classifyGroceryProduct(inlineObject8: InlineObject8, locale: Option[String]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_classifyGroceryProductBulk(body: Object, locale: Option[String]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_convertAmounts(ingredientName: String, sourceAmount: BigDecimal, sourceUnit: String, targetUnit: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_createRecipeCard(title: String, image: FileUpload, ingredients: String, instructions: String, readyInMinutes: BigDecimal, servings: BigDecimal, mask: String, backgroundImage: String, author: Option[String], backgroundColor: Option[String], fontColor: Option[String], source: Option[String]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_detectFoodInText(text: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_extractRecipeFromWebsite(url: String, forceExtraction: Option[Boolean]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_generateMealPlan(timeFrame: Option[String], targetCalories: Option[BigDecimal], diet: Option[String], exclude: Option[String]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getARandomFoodJoke(): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getAnalyzedRecipeInstructions(id: BigDecimal, stepBreakdown: Option[Boolean]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getComparableProducts(upc: BigDecimal): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getConversationSuggests(query: String, number: Option[BigDecimal]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getDishPairingForWine(wine: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getFoodInformation(id: BigDecimal, amount: Option[BigDecimal], unit: Option[String]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getIngredientSubstitutes(ingredientName: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getIngredientSubstitutesByID(id: BigDecimal): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getMenuItemInformation(id: BigDecimal): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getProductInformation(id: BigDecimal): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getRandomFoodTrivia(): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getRandomRecipes(limitLicense: Option[Boolean], tags: Option[String], number: Option[BigDecimal]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getRecipeEquipmentByID(id: BigDecimal): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getRecipeInformation(id: BigDecimal, includeNutrition: Option[Boolean]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getRecipeInformationBulk(ids: String, includeNutrition: Option[Boolean]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getRecipeIngredientsByID(id: BigDecimal): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getRecipeNutritionByID(id: BigDecimal): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getRecipePriceBreakdownByID(id: BigDecimal): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getSimilarRecipes(id: BigDecimal, number: Option[BigDecimal]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getWineDescription(wine: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getWinePairing(food: String, maxPrice: Option[BigDecimal]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getWineRecommendation(wine: String, maxPrice: Option[BigDecimal], minRating: Option[BigDecimal], number: Option[BigDecimal]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_guessNutritionByDishName(title: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_mapIngredientsToGroceryProducts(body: Object): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_parseIngredients(ingredientList: String, servings: BigDecimal, includeNutrition: Option[Boolean]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_quickAnswer(q: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_searchFoodVideos(query: String, _type: Option[String], cuisine: Option[String], diet: Option[String], includeIngredients: Option[String], excludeIngredients: Option[String], minLength: Option[BigDecimal], maxLength: Option[BigDecimal], offset: Option[BigDecimal], number: Option[BigDecimal]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_searchGroceryProducts(query: String, minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], offset: Option[BigDecimal], number: Option[BigDecimal]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_searchGroceryProductsByUPC(upc: BigDecimal): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_searchMenuItems(query: String, minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], offset: Option[BigDecimal], number: Option[BigDecimal]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_searchRecipes(query: String, cuisine: Option[String], diet: Option[String], excludeIngredients: Option[String], intolerances: Option[String], offset: Option[BigDecimal], number: Option[BigDecimal], limitLicense: Option[Boolean], instructionsRequired: Option[Boolean]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_searchRecipesByIngredients(ingredients: String, number: Option[BigDecimal], limitLicense: Option[Boolean], ranking: Option[BigDecimal], ignorePantry: Option[Boolean]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_searchRecipesByNutrients(minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], minAlcohol: Option[BigDecimal], maxAlcohol: Option[BigDecimal], minCaffeine: Option[BigDecimal], maxCaffeine: Option[BigDecimal], minCopper: Option[BigDecimal], maxCopper: Option[BigDecimal], minCalcium: Option[BigDecimal], maxCalcium: Option[BigDecimal], minCholine: Option[BigDecimal], maxCholine: Option[BigDecimal], minCholesterol: Option[BigDecimal], maxCholesterol: Option[BigDecimal], minFluoride: Option[BigDecimal], maxFluoride: Option[BigDecimal], minSaturatedFat: Option[BigDecimal], maxSaturatedFat: Option[BigDecimal], minVitaminA: Option[BigDecimal], maxVitaminA: Option[BigDecimal], minVitaminC: Option[BigDecimal], maxVitaminC: Option[BigDecimal], minVitaminD: Option[BigDecimal], maxVitaminD: Option[BigDecimal], minVitaminE: Option[BigDecimal], maxVitaminE: Option[BigDecimal], minVitaminK: Option[BigDecimal], maxVitaminK: Option[BigDecimal], minVitaminB1: Option[BigDecimal], maxVitaminB1: Option[BigDecimal], minVitaminB2: Option[BigDecimal], maxVitaminB2: Option[BigDecimal], minVitaminB5: Option[BigDecimal], maxVitaminB5: Option[BigDecimal], minVitaminB3: Option[BigDecimal], maxVitaminB3: Option[BigDecimal], minVitaminB6: Option[BigDecimal], maxVitaminB6: Option[BigDecimal], minVitaminB12: Option[BigDecimal], maxVitaminB12: Option[BigDecimal], minFiber: Option[BigDecimal], maxFiber: Option[BigDecimal], minFolate: Option[BigDecimal], maxFolate: Option[BigDecimal], minFolicAcid: Option[BigDecimal], maxFolicAcid: Option[BigDecimal], minIodine: Option[BigDecimal], maxIodine: Option[BigDecimal], minIron: Option[BigDecimal], maxIron: Option[BigDecimal], minMagnesium: Option[BigDecimal], maxMagnesium: Option[BigDecimal], minManganese: Option[BigDecimal], maxManganese: Option[BigDecimal], minPhosphorus: Option[BigDecimal], maxPhosphorus: Option[BigDecimal], minPotassium: Option[BigDecimal], maxPotassium: Option[BigDecimal], minSelenium: Option[BigDecimal], maxSelenium: Option[BigDecimal], minSodium: Option[BigDecimal], maxSodium: Option[BigDecimal], minSugar: Option[BigDecimal], maxSugar: Option[BigDecimal], minZinc: Option[BigDecimal], maxZinc: Option[BigDecimal], offset: Option[BigDecimal], number: Option[BigDecimal], random: Option[Boolean], limitLicense: Option[Boolean]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_searchRecipesComplex(query: String, cuisine: Option[String], excludeCuisine: Option[String], diet: Option[String], intolerances: Option[String], equipment: Option[String], includeIngredients: Option[String], excludeIngredients: Option[String], _type: Option[String], instructionsRequired: Option[Boolean], fillIngredients: Option[Boolean], addRecipeInformation: Option[Boolean], author: Option[String], tags: Option[String], titleMatch: Option[String], sort: Option[String], sortDirection: Option[String], minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], minAlcohol: Option[BigDecimal], maxAlcohol: Option[BigDecimal], minCaffeine: Option[BigDecimal], maxCaffeine: Option[BigDecimal], minCopper: Option[BigDecimal], maxCopper: Option[BigDecimal], minCalcium: Option[BigDecimal], maxCalcium: Option[BigDecimal], minCholine: Option[BigDecimal], maxCholine: Option[BigDecimal], minCholesterol: Option[BigDecimal], maxCholesterol: Option[BigDecimal], minFluoride: Option[BigDecimal], maxFluoride: Option[BigDecimal], minSaturatedFat: Option[BigDecimal], maxSaturatedFat: Option[BigDecimal], minVitaminA: Option[BigDecimal], maxVitaminA: Option[BigDecimal], minVitaminC: Option[BigDecimal], maxVitaminC: Option[BigDecimal], minVitaminD: Option[BigDecimal], maxVitaminD: Option[BigDecimal], minVitaminE: Option[BigDecimal], maxVitaminE: Option[BigDecimal], minVitaminK: Option[BigDecimal], maxVitaminK: Option[BigDecimal], minVitaminB1: Option[BigDecimal], maxVitaminB1: Option[BigDecimal], minVitaminB2: Option[BigDecimal], maxVitaminB2: Option[BigDecimal], minVitaminB5: Option[BigDecimal], maxVitaminB5: Option[BigDecimal], minVitaminB3: Option[BigDecimal], maxVitaminB3: Option[BigDecimal], minVitaminB6: Option[BigDecimal], maxVitaminB6: Option[BigDecimal], minVitaminB12: Option[BigDecimal], maxVitaminB12: Option[BigDecimal], minFiber: Option[BigDecimal], maxFiber: Option[BigDecimal], minFolate: Option[BigDecimal], maxFolate: Option[BigDecimal], minFolicAcid: Option[BigDecimal], maxFolicAcid: Option[BigDecimal], minIodine: Option[BigDecimal], maxIodine: Option[BigDecimal], minIron: Option[BigDecimal], maxIron: Option[BigDecimal], minMagnesium: Option[BigDecimal], maxMagnesium: Option[BigDecimal], minManganese: Option[BigDecimal], maxManganese: Option[BigDecimal], minPhosphorus: Option[BigDecimal], maxPhosphorus: Option[BigDecimal], minPotassium: Option[BigDecimal], maxPotassium: Option[BigDecimal], minSelenium: Option[BigDecimal], maxSelenium: Option[BigDecimal], minSodium: Option[BigDecimal], maxSodium: Option[BigDecimal], minSugar: Option[BigDecimal], maxSugar: Option[BigDecimal], minZinc: Option[BigDecimal], maxZinc: Option[BigDecimal], offset: Option[BigDecimal], number: Option[BigDecimal], limitLicense: Option[Boolean]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_searchSiteContent(query: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_summarizeRecipe(id: BigDecimal): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_talkToChatbot(text: String, contextId: Option[String]): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Default_visualizeEquipment(ingredientList: String, servings: BigDecimal, view: Option[String], defaultCss: Option[Boolean], showBacklink: Option[Boolean]): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Default_visualizeIngredients(ingredientList: String, servings: BigDecimal, measure: Option[String], view: Option[String], defaultCss: Option[Boolean], showBacklink: Option[Boolean]): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Default_visualizeMenuItemNutritionByID(id: BigDecimal, defaultCss: Option[Boolean]): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Default_visualizePriceBreakdown(ingredientList: String, servings: BigDecimal, mode: Option[BigDecimal], defaultCss: Option[Boolean], showBacklink: Option[Boolean]): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Default_visualizeProductNutritionByID(id: BigDecimal, defaultCss: Option[Boolean]): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Default_visualizeRecipeEquipmentByID(id: BigDecimal, defaultCss: Option[Boolean]): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Default_visualizeRecipeIngredientsByID(id: BigDecimal, defaultCss: Option[Boolean]): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Default_visualizeRecipeNutrition(ingredientList: String, servings: BigDecimal, defaultCss: Option[Boolean], showBacklink: Option[Boolean]): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Default_visualizeRecipeNutritionByID(id: BigDecimal, defaultCss: Option[Boolean]): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def Default_visualizeRecipePriceBreakdownByID(id: BigDecimal, defaultCss: Option[Boolean]): Either[CommonError,String] = Left(TODO)

}