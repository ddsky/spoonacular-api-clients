package com.spoonacular

import java.io._
import spoonacular._
import com.spoonacular.client.model._
import java.math.BigDecimal
import java.io.File
import com.spoonacular.client.model.InlineObject10
import com.spoonacular.client.model.InlineObject11
import com.spoonacular.client.model.InlineObject12
import com.spoonacular.client.model.InlineObject13
import com.spoonacular.client.model.InlineObject14
import com.spoonacular.client.model.InlineObject15
import com.spoonacular.client.model.InlineObject9
import io.finch.circe._
import io.circe.generic.semiauto._
import com.twitter.concurrent.AsyncStream
import com.twitter.finagle.Service
import com.twitter.finagle.Http
import com.twitter.finagle.http.{Request, Response}
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}
import com.twitter.util.Future
import com.twitter.io.Buf
import io.finch._, items._
import java.io.File
import java.time._

object DefaultApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        addToMealPlan(da) :+:
        addToShoppingList(da) :+:
        analyzeARecipeSearchQuery(da) :+:
        analyzeRecipeInstructions(da) :+:
        autocompleteIngredientSearch(da) :+:
        autocompleteMenuItemSearch(da) :+:
        autocompleteProductSearch(da) :+:
        autocompleteRecipeSearch(da) :+:
        classifyCuisine(da) :+:
        classifyGroceryProduct(da) :+:
        classifyGroceryProductBulk(da) :+:
        clearMealPlanDay(da) :+:
        computeGlycemicLoad(da) :+:
        connectUser(da) :+:
        convertAmounts(da) :+:
        createRecipeCard(da) :+:
        deleteFromMealPlan(da) :+:
        deleteFromShoppingList(da) :+:
        detectFoodInText(da) :+:
        extractRecipeFromWebsite(da) :+:
        generateMealPlan(da) :+:
        generateShoppingList(da) :+:
        getARandomFoodJoke(da) :+:
        getAnalyzedRecipeInstructions(da) :+:
        getComparableProducts(da) :+:
        getConversationSuggests(da) :+:
        getDishPairingForWine(da) :+:
        getIngredientInformation(da) :+:
        getIngredientSubstitutes(da) :+:
        getIngredientSubstitutesByID(da) :+:
        getMealPlanTemplate(da) :+:
        getMealPlanTemplates(da) :+:
        getMealPlanWeek(da) :+:
        getMenuItemInformation(da) :+:
        getProductInformation(da) :+:
        getRandomFoodTrivia(da) :+:
        getRandomRecipes(da) :+:
        getRecipeEquipmentByID(da) :+:
        getRecipeInformation(da) :+:
        getRecipeInformationBulk(da) :+:
        getRecipeIngredientsByID(da) :+:
        getRecipeNutritionWidgetByID(da) :+:
        getRecipePriceBreakdownByID(da) :+:
        getRecipeTasteByID(da) :+:
        getShoppingList(da) :+:
        getSimilarRecipes(da) :+:
        getWineDescription(da) :+:
        getWinePairing(da) :+:
        getWineRecommendation(da) :+:
        guessNutritionByDishName(da) :+:
        imageAnalysisByURL(da) :+:
        imageClassificationByURL(da) :+:
        ingredientSearch(da) :+:
        mapIngredientsToGroceryProducts(da) :+:
        parseIngredients(da) :+:
        quickAnswer(da) :+:
        searchAllFood(da) :+:
        searchCustomFoods(da) :+:
        searchFoodVideos(da) :+:
        searchGroceryProducts(da) :+:
        searchGroceryProductsByUPC(da) :+:
        searchMenuItems(da) :+:
        searchRecipes(da) :+:
        searchRecipesByIngredients(da) :+:
        searchRecipesByNutrients(da) :+:
        searchSiteContent(da) :+:
        summarizeRecipe(da) :+:
        talkToChatbot(da) :+:
        visualizeEquipment(da) :+:
        visualizeIngredients(da) :+:
        visualizeMenuItemNutritionByID(da) :+:
        visualizePriceBreakdown(da) :+:
        visualizeProductNutritionByID(da) :+:
        visualizeRecipeEquipmentByID(da) :+:
        visualizeRecipeIngredientsByID(da) :+:
        visualizeRecipeNutrition(da) :+:
        visualizeRecipeNutritionByID(da) :+:
        visualizeRecipePriceBreakdownByID(da) :+:
        visualizeRecipeTaste(da) :+:
        visualizeRecipeTasteByID(da)


    private def checkError(e: CommonError) = e match {
      case InvalidInput(_) => BadRequest(e)
      case MissingIdentifier(_) => BadRequest(e)
      case RecordNotFound(_) => NotFound(e)
      case _ => InternalServerError(e)
    }

    implicit class StringOps(s: String) {

      import java.time.format.DateTimeFormatter

      lazy val localformatter: DateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd")
      lazy val datetimeformatter: DateTimeFormatter =
      DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSZ")

      def toLocalDateTime: LocalDateTime = LocalDateTime.parse(s,localformatter)
      def toZonedDateTime: ZonedDateTime = ZonedDateTime.parse(s, datetimeformatter)

    }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def addToMealPlan(da: DataAccessor): Endpoint[Object] =
        post("mealplanner" :: string :: "items" :: param("hash") :: jsonBody[InlineObject11]) { (username: String, hash: String, inlineObject11: InlineObject11) =>
          da.Default_addToMealPlan(username, hash, inlineObject11) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def addToShoppingList(da: DataAccessor): Endpoint[Object] =
        post("mealplanner" :: string :: "shopping-list" :: "items" :: param("hash") :: jsonBody[InlineObject14]) { (username: String, hash: String, inlineObject14: InlineObject14) =>
          da.Default_addToShoppingList(username, hash, inlineObject14) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def analyzeARecipeSearchQuery(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: "queries" :: "analyze" :: param("q")) { (q: String) =>
          da.Default_analyzeARecipeSearchQuery(q) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def analyzeRecipeInstructions(da: DataAccessor): Endpoint[Object] =
        post("recipes" :: "analyzeInstructions" :: string) { (instructions: String) =>
          da.Default_analyzeRecipeInstructions(instructions) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def autocompleteIngredientSearch(da: DataAccessor): Endpoint[Object] =
        get("food" :: "ingredients" :: "autocomplete" :: param("query") :: paramOption("number").map(_.map(_.toBigDecimal)) :: paramOption("metaInformation").map(_.map(_.toBoolean)) :: paramOption("intolerances")) { (query: String, number: Option[BigDecimal], metaInformation: Option[Boolean], intolerances: Option[String]) =>
          da.Default_autocompleteIngredientSearch(query, number, metaInformation, intolerances) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def autocompleteMenuItemSearch(da: DataAccessor): Endpoint[Object] =
        get("food" :: "menuItems" :: "suggest" :: param("query") :: paramOption("number").map(_.map(_.toBigDecimal))) { (query: String, number: Option[BigDecimal]) =>
          da.Default_autocompleteMenuItemSearch(query, number) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def autocompleteProductSearch(da: DataAccessor): Endpoint[Object] =
        get("food" :: "products" :: "suggest" :: param("query") :: paramOption("number").map(_.map(_.toBigDecimal))) { (query: String, number: Option[BigDecimal]) =>
          da.Default_autocompleteProductSearch(query, number) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def autocompleteRecipeSearch(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: "autocomplete" :: param("query") :: paramOption("number").map(_.map(_.toBigDecimal))) { (query: String, number: Option[BigDecimal]) =>
          da.Default_autocompleteRecipeSearch(query, number) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def classifyCuisine(da: DataAccessor): Endpoint[Object] =
        post("recipes" :: "cuisine" :: string :: string) { (title: String, ingredientList: String) =>
          da.Default_classifyCuisine(title, ingredientList) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def classifyGroceryProduct(da: DataAccessor): Endpoint[Object] =
        post("food" :: "products" :: "classify" :: jsonBody[InlineObject9] :: paramOption("locale")) { (inlineObject9: InlineObject9, locale: Option[String]) =>
          da.Default_classifyGroceryProduct(inlineObject9, locale) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def classifyGroceryProductBulk(da: DataAccessor): Endpoint[Object] =
        post("food" :: "products" :: "classifyBatch" :: jsonBody[Object] :: paramOption("locale")) { (body: Object, locale: Option[String]) =>
          da.Default_classifyGroceryProductBulk(body, locale) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def clearMealPlanDay(da: DataAccessor): Endpoint[Object] =
        delete("mealplanner" :: string :: "day" :: string :: param("hash") :: jsonBody[InlineObject10]) { (username: String, date: String, hash: String, inlineObject10: InlineObject10) =>
          da.Default_clearMealPlanDay(username, date, hash, inlineObject10) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def computeGlycemicLoad(da: DataAccessor): Endpoint[Object] =
        post("food" :: "ingredients" :: "glycemicLoad" :: jsonBody[Object]) { (body: Object) =>
          da.Default_computeGlycemicLoad(body) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def connectUser(da: DataAccessor): Endpoint[Object] =
        post("users" :: "connect" :: jsonBody[Object]) { (body: Object) =>
          da.Default_connectUser(body) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def convertAmounts(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: "convert" :: param("ingredientName") :: param("sourceAmount").map(_.toBigDecimal) :: param("sourceUnit") :: param("targetUnit")) { (ingredientName: String, sourceAmount: BigDecimal, sourceUnit: String, targetUnit: String) =>
          da.Default_convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def createRecipeCard(da: DataAccessor): Endpoint[Object] =
        post("recipes" :: "visualizeRecipe" :: string :: fileUpload("image") :: string :: string :: bigdecimal :: bigdecimal :: string :: string :: paramOption("author") :: paramOption("backgroundColor") :: paramOption("fontColor") :: paramOption("source")) { (title: String, image: FileUpload, ingredients: String, instructions: String, readyInMinutes: BigDecimal, servings: BigDecimal, mask: String, backgroundImage: String, author: Option[String], backgroundColor: Option[String], fontColor: Option[String], source: Option[String]) =>
          da.Default_createRecipeCard(title, image, ingredients, instructions, readyInMinutes, servings, mask, backgroundImage, author, backgroundColor, fontColor, source) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def deleteFromMealPlan(da: DataAccessor): Endpoint[Object] =
        delete("mealplanner" :: string :: "items" :: bigdecimal :: param("hash") :: jsonBody[InlineObject12]) { (username: String, id: BigDecimal, hash: String, inlineObject12: InlineObject12) =>
          da.Default_deleteFromMealPlan(username, id, hash, inlineObject12) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def deleteFromShoppingList(da: DataAccessor): Endpoint[Object] =
        delete("mealplanner" :: string :: "shopping-list" :: "items" :: bigdecimal :: param("hash") :: jsonBody[InlineObject15]) { (username: String, id: BigDecimal, hash: String, inlineObject15: InlineObject15) =>
          da.Default_deleteFromShoppingList(username, id, hash, inlineObject15) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def detectFoodInText(da: DataAccessor): Endpoint[Object] =
        post("food" :: "detect" :: string) { (text: String) =>
          da.Default_detectFoodInText(text) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def extractRecipeFromWebsite(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: "extract" :: param("url") :: paramOption("forceExtraction").map(_.map(_.toBoolean)) :: paramOption("analyze").map(_.map(_.toBoolean))) { (url: String, forceExtraction: Option[Boolean], analyze: Option[Boolean]) =>
          da.Default_extractRecipeFromWebsite(url, forceExtraction, analyze) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def generateMealPlan(da: DataAccessor): Endpoint[Object] =
        get("mealplanner" :: "generate" :: paramOption("timeFrame") :: paramOption("targetCalories").map(_.map(_.toBigDecimal)) :: paramOption("diet") :: paramOption("exclude")) { (timeFrame: Option[String], targetCalories: Option[BigDecimal], diet: Option[String], exclude: Option[String]) =>
          da.Default_generateMealPlan(timeFrame, targetCalories, diet, exclude) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def generateShoppingList(da: DataAccessor): Endpoint[Object] =
        post("mealplanner" :: string :: "shopping-list" :: string :: string :: param("hash") :: jsonBody[InlineObject13]) { (username: String, startDate: String, endDate: String, hash: String, inlineObject13: InlineObject13) =>
          da.Default_generateShoppingList(username, startDate, endDate, hash, inlineObject13) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getARandomFoodJoke(da: DataAccessor): Endpoint[Object] =
        get("food" :: "jokes" :: "random") { () =>
          da.Default_getARandomFoodJoke() match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getAnalyzedRecipeInstructions(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: bigdecimal :: "analyzedInstructions" :: paramOption("stepBreakdown").map(_.map(_.toBoolean))) { (id: BigDecimal, stepBreakdown: Option[Boolean]) =>
          da.Default_getAnalyzedRecipeInstructions(id, stepBreakdown) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getComparableProducts(da: DataAccessor): Endpoint[Object] =
        get("food" :: "products" :: "upc" :: bigdecimal :: "comparable") { (upc: BigDecimal) =>
          da.Default_getComparableProducts(upc) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getConversationSuggests(da: DataAccessor): Endpoint[Object] =
        get("food" :: "converse" :: "suggest" :: param("query") :: paramOption("number").map(_.map(_.toBigDecimal))) { (query: String, number: Option[BigDecimal]) =>
          da.Default_getConversationSuggests(query, number) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getDishPairingForWine(da: DataAccessor): Endpoint[Object] =
        get("food" :: "wine" :: "dishes" :: param("wine")) { (wine: String) =>
          da.Default_getDishPairingForWine(wine) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getIngredientInformation(da: DataAccessor): Endpoint[Object] =
        get("food" :: "ingredients" :: bigdecimal :: "information" :: paramOption("amount").map(_.map(_.toBigDecimal)) :: paramOption("unit")) { (id: BigDecimal, amount: Option[BigDecimal], unit: Option[String]) =>
          da.Default_getIngredientInformation(id, amount, unit) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getIngredientSubstitutes(da: DataAccessor): Endpoint[Object] =
        get("food" :: "ingredients" :: "substitutes" :: param("ingredientName")) { (ingredientName: String) =>
          da.Default_getIngredientSubstitutes(ingredientName) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getIngredientSubstitutesByID(da: DataAccessor): Endpoint[Object] =
        get("food" :: "ingredients" :: bigdecimal :: "substitutes") { (id: BigDecimal) =>
          da.Default_getIngredientSubstitutesByID(id) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getMealPlanTemplate(da: DataAccessor): Endpoint[Object] =
        get("mealplanner" :: string :: "templates" :: bigdecimal :: param("hash")) { (username: String, id: BigDecimal, hash: String) =>
          da.Default_getMealPlanTemplate(username, id, hash) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getMealPlanTemplates(da: DataAccessor): Endpoint[Object] =
        get("mealplanner" :: string :: "templates" :: param("hash")) { (username: String, hash: String) =>
          da.Default_getMealPlanTemplates(username, hash) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getMealPlanWeek(da: DataAccessor): Endpoint[Object] =
        get("mealplanner" :: string :: "week" :: string :: param("hash")) { (username: String, startDate: String, hash: String) =>
          da.Default_getMealPlanWeek(username, startDate, hash) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getMenuItemInformation(da: DataAccessor): Endpoint[Object] =
        get("food" :: "menuItems" :: bigdecimal) { (id: BigDecimal) =>
          da.Default_getMenuItemInformation(id) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getProductInformation(da: DataAccessor): Endpoint[Object] =
        get("food" :: "products" :: bigdecimal) { (id: BigDecimal) =>
          da.Default_getProductInformation(id) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getRandomFoodTrivia(da: DataAccessor): Endpoint[Object] =
        get("food" :: "trivia" :: "random") { () =>
          da.Default_getRandomFoodTrivia() match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getRandomRecipes(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: "random" :: paramOption("limitLicense").map(_.map(_.toBoolean)) :: paramOption("tags") :: paramOption("number").map(_.map(_.toBigDecimal))) { (limitLicense: Option[Boolean], tags: Option[String], number: Option[BigDecimal]) =>
          da.Default_getRandomRecipes(limitLicense, tags, number) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getRecipeEquipmentByID(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: bigdecimal :: "equipmentWidget.json") { (id: BigDecimal) =>
          da.Default_getRecipeEquipmentByID(id) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getRecipeInformation(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: bigdecimal :: "information" :: paramOption("includeNutrition").map(_.map(_.toBoolean))) { (id: BigDecimal, includeNutrition: Option[Boolean]) =>
          da.Default_getRecipeInformation(id, includeNutrition) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getRecipeInformationBulk(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: "informationBulk" :: param("ids") :: paramOption("includeNutrition").map(_.map(_.toBoolean))) { (ids: String, includeNutrition: Option[Boolean]) =>
          da.Default_getRecipeInformationBulk(ids, includeNutrition) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getRecipeIngredientsByID(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: bigdecimal :: "ingredientWidget.json") { (id: BigDecimal) =>
          da.Default_getRecipeIngredientsByID(id) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getRecipeNutritionWidgetByID(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: bigdecimal :: "nutritionWidget.json") { (id: BigDecimal) =>
          da.Default_getRecipeNutritionWidgetByID(id) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getRecipePriceBreakdownByID(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: bigdecimal :: "priceBreakdownWidget.json") { (id: BigDecimal) =>
          da.Default_getRecipePriceBreakdownByID(id) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getRecipeTasteByID(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: bigdecimal :: "tasteWidget.json") { (id: BigDecimal) =>
          da.Default_getRecipeTasteByID(id) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getShoppingList(da: DataAccessor): Endpoint[Object] =
        get("mealplanner" :: string :: "shopping-list" :: param("hash")) { (username: String, hash: String) =>
          da.Default_getShoppingList(username, hash) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getSimilarRecipes(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: bigdecimal :: "similar" :: paramOption("number").map(_.map(_.toBigDecimal)) :: paramOption("limitLicense").map(_.map(_.toBoolean))) { (id: BigDecimal, number: Option[BigDecimal], limitLicense: Option[Boolean]) =>
          da.Default_getSimilarRecipes(id, number, limitLicense) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getWineDescription(da: DataAccessor): Endpoint[Object] =
        get("food" :: "wine" :: "description" :: param("wine")) { (wine: String) =>
          da.Default_getWineDescription(wine) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getWinePairing(da: DataAccessor): Endpoint[Object] =
        get("food" :: "wine" :: "pairing" :: param("food") :: paramOption("maxPrice").map(_.map(_.toBigDecimal))) { (food: String, maxPrice: Option[BigDecimal]) =>
          da.Default_getWinePairing(food, maxPrice) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getWineRecommendation(da: DataAccessor): Endpoint[Object] =
        get("food" :: "wine" :: "recommendation" :: param("wine") :: paramOption("maxPrice").map(_.map(_.toBigDecimal)) :: paramOption("minRating").map(_.map(_.toBigDecimal)) :: paramOption("number").map(_.map(_.toBigDecimal))) { (wine: String, maxPrice: Option[BigDecimal], minRating: Option[BigDecimal], number: Option[BigDecimal]) =>
          da.Default_getWineRecommendation(wine, maxPrice, minRating, number) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def guessNutritionByDishName(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: "guessNutrition" :: param("title")) { (title: String) =>
          da.Default_guessNutritionByDishName(title) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def imageAnalysisByURL(da: DataAccessor): Endpoint[Object] =
        get("food" :: "images" :: "analyze" :: param("imageUrl")) { (imageUrl: String) =>
          da.Default_imageAnalysisByURL(imageUrl) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def imageClassificationByURL(da: DataAccessor): Endpoint[Object] =
        get("food" :: "images" :: "classify" :: param("imageUrl")) { (imageUrl: String) =>
          da.Default_imageClassificationByURL(imageUrl) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def ingredientSearch(da: DataAccessor): Endpoint[Object] =
        get("food" :: "ingredients" :: "search" :: param("query") :: paramOption("addChildren").map(_.map(_.toBoolean)) :: paramOption("minProteinPercent").map(_.map(_.toBigDecimal)) :: paramOption("maxProteinPercent").map(_.map(_.toBigDecimal)) :: paramOption("minFatPercent").map(_.map(_.toBigDecimal)) :: paramOption("maxFatPercent").map(_.map(_.toBigDecimal)) :: paramOption("minCarbsPercent").map(_.map(_.toBigDecimal)) :: paramOption("maxCarbsPercent").map(_.map(_.toBigDecimal)) :: paramOption("metaInformation").map(_.map(_.toBoolean)) :: paramOption("intolerances") :: paramOption("sort") :: paramOption("sortDirection") :: paramOption("offset").map(_.map(_.toBigDecimal)) :: paramOption("number").map(_.map(_.toBigDecimal))) { (query: String, addChildren: Option[Boolean], minProteinPercent: Option[BigDecimal], maxProteinPercent: Option[BigDecimal], minFatPercent: Option[BigDecimal], maxFatPercent: Option[BigDecimal], minCarbsPercent: Option[BigDecimal], maxCarbsPercent: Option[BigDecimal], metaInformation: Option[Boolean], intolerances: Option[String], sort: Option[String], sortDirection: Option[String], offset: Option[BigDecimal], number: Option[BigDecimal]) =>
          da.Default_ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def mapIngredientsToGroceryProducts(da: DataAccessor): Endpoint[Object] =
        post("food" :: "ingredients" :: "map" :: jsonBody[Object]) { (body: Object) =>
          da.Default_mapIngredientsToGroceryProducts(body) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def parseIngredients(da: DataAccessor): Endpoint[Object] =
        post("recipes" :: "parseIngredients" :: string :: bigdecimal :: paramOption("includeNutrition").map(_.map(_.toBoolean))) { (ingredientList: String, servings: BigDecimal, includeNutrition: Option[Boolean]) =>
          da.Default_parseIngredients(ingredientList, servings, includeNutrition) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def quickAnswer(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: "quickAnswer" :: param("q")) { (q: String) =>
          da.Default_quickAnswer(q) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def searchAllFood(da: DataAccessor): Endpoint[Object] =
        get("food" :: "search" :: param("query") :: paramOption("offset").map(_.map(_.toBigDecimal)) :: paramOption("number").map(_.map(_.toBigDecimal))) { (query: String, offset: Option[BigDecimal], number: Option[BigDecimal]) =>
          da.Default_searchAllFood(query, offset, number) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def searchCustomFoods(da: DataAccessor): Endpoint[Object] =
        get("food" :: "customFoods" :: "search" :: param("query") :: param("username") :: param("hash") :: paramOption("offset").map(_.map(_.toBigDecimal)) :: paramOption("number").map(_.map(_.toBigDecimal))) { (query: String, username: String, hash: String, offset: Option[BigDecimal], number: Option[BigDecimal]) =>
          da.Default_searchCustomFoods(query, username, hash, offset, number) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def searchFoodVideos(da: DataAccessor): Endpoint[Object] =
        get("food" :: "videos" :: "search" :: param("query") :: paramOption("type") :: paramOption("cuisine") :: paramOption("diet") :: paramOption("includeIngredients") :: paramOption("excludeIngredients") :: paramOption("minLength").map(_.map(_.toBigDecimal)) :: paramOption("maxLength").map(_.map(_.toBigDecimal)) :: paramOption("offset").map(_.map(_.toBigDecimal)) :: paramOption("number").map(_.map(_.toBigDecimal))) { (query: String, _type: Option[String], cuisine: Option[String], diet: Option[String], includeIngredients: Option[String], excludeIngredients: Option[String], minLength: Option[BigDecimal], maxLength: Option[BigDecimal], offset: Option[BigDecimal], number: Option[BigDecimal]) =>
          da.Default_searchFoodVideos(query, _type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def searchGroceryProducts(da: DataAccessor): Endpoint[Object] =
        get("food" :: "products" :: "search" :: param("query") :: paramOption("minCalories").map(_.map(_.toBigDecimal)) :: paramOption("maxCalories").map(_.map(_.toBigDecimal)) :: paramOption("minCarbs").map(_.map(_.toBigDecimal)) :: paramOption("maxCarbs").map(_.map(_.toBigDecimal)) :: paramOption("minProtein").map(_.map(_.toBigDecimal)) :: paramOption("maxProtein").map(_.map(_.toBigDecimal)) :: paramOption("minFat").map(_.map(_.toBigDecimal)) :: paramOption("maxFat").map(_.map(_.toBigDecimal)) :: paramOption("offset").map(_.map(_.toBigDecimal)) :: paramOption("number").map(_.map(_.toBigDecimal))) { (query: String, minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], offset: Option[BigDecimal], number: Option[BigDecimal]) =>
          da.Default_searchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def searchGroceryProductsByUPC(da: DataAccessor): Endpoint[Object] =
        get("food" :: "products" :: "upc" :: bigdecimal) { (upc: BigDecimal) =>
          da.Default_searchGroceryProductsByUPC(upc) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def searchMenuItems(da: DataAccessor): Endpoint[Object] =
        get("food" :: "menuItems" :: "search" :: param("query") :: paramOption("minCalories").map(_.map(_.toBigDecimal)) :: paramOption("maxCalories").map(_.map(_.toBigDecimal)) :: paramOption("minCarbs").map(_.map(_.toBigDecimal)) :: paramOption("maxCarbs").map(_.map(_.toBigDecimal)) :: paramOption("minProtein").map(_.map(_.toBigDecimal)) :: paramOption("maxProtein").map(_.map(_.toBigDecimal)) :: paramOption("minFat").map(_.map(_.toBigDecimal)) :: paramOption("maxFat").map(_.map(_.toBigDecimal)) :: paramOption("offset").map(_.map(_.toBigDecimal)) :: paramOption("number").map(_.map(_.toBigDecimal))) { (query: String, minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], offset: Option[BigDecimal], number: Option[BigDecimal]) =>
          da.Default_searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def searchRecipes(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: "complexSearch" :: param("query") :: paramOption("cuisine") :: paramOption("excludeCuisine") :: paramOption("diet") :: paramOption("intolerances") :: paramOption("equipment") :: paramOption("includeIngredients") :: paramOption("excludeIngredients") :: paramOption("type") :: paramOption("instructionsRequired").map(_.map(_.toBoolean)) :: paramOption("fillIngredients").map(_.map(_.toBoolean)) :: paramOption("addRecipeInformation").map(_.map(_.toBoolean)) :: paramOption("addRecipeNutrition").map(_.map(_.toBoolean)) :: paramOption("author") :: paramOption("tags") :: paramOption("recipeBoxId").map(_.map(_.toBigDecimal)) :: paramOption("titleMatch") :: paramOption("maxReadyTime").map(_.map(_.toBigDecimal)) :: paramOption("ignorePantry").map(_.map(_.toBoolean)) :: paramOption("sort") :: paramOption("sortDirection") :: paramOption("minCarbs").map(_.map(_.toBigDecimal)) :: paramOption("maxCarbs").map(_.map(_.toBigDecimal)) :: paramOption("minProtein").map(_.map(_.toBigDecimal)) :: paramOption("maxProtein").map(_.map(_.toBigDecimal)) :: paramOption("minCalories").map(_.map(_.toBigDecimal)) :: paramOption("maxCalories").map(_.map(_.toBigDecimal)) :: paramOption("minFat").map(_.map(_.toBigDecimal)) :: paramOption("maxFat").map(_.map(_.toBigDecimal)) :: paramOption("minAlcohol").map(_.map(_.toBigDecimal)) :: paramOption("maxAlcohol").map(_.map(_.toBigDecimal)) :: paramOption("minCaffeine").map(_.map(_.toBigDecimal)) :: paramOption("maxCaffeine").map(_.map(_.toBigDecimal)) :: paramOption("minCopper").map(_.map(_.toBigDecimal)) :: paramOption("maxCopper").map(_.map(_.toBigDecimal)) :: paramOption("minCalcium").map(_.map(_.toBigDecimal)) :: paramOption("maxCalcium").map(_.map(_.toBigDecimal)) :: paramOption("minCholine").map(_.map(_.toBigDecimal)) :: paramOption("maxCholine").map(_.map(_.toBigDecimal)) :: paramOption("minCholesterol").map(_.map(_.toBigDecimal)) :: paramOption("maxCholesterol").map(_.map(_.toBigDecimal)) :: paramOption("minFluoride").map(_.map(_.toBigDecimal)) :: paramOption("maxFluoride").map(_.map(_.toBigDecimal)) :: paramOption("minSaturatedFat").map(_.map(_.toBigDecimal)) :: paramOption("maxSaturatedFat").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminA").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminA").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminC").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminC").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminD").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminD").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminE").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminE").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminK").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminK").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB1").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB1").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB2").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB2").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB5").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB5").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB3").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB3").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB6").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB6").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB12").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB12").map(_.map(_.toBigDecimal)) :: paramOption("minFiber").map(_.map(_.toBigDecimal)) :: paramOption("maxFiber").map(_.map(_.toBigDecimal)) :: paramOption("minFolate").map(_.map(_.toBigDecimal)) :: paramOption("maxFolate").map(_.map(_.toBigDecimal)) :: paramOption("minFolicAcid").map(_.map(_.toBigDecimal)) :: paramOption("maxFolicAcid").map(_.map(_.toBigDecimal)) :: paramOption("minIodine").map(_.map(_.toBigDecimal)) :: paramOption("maxIodine").map(_.map(_.toBigDecimal)) :: paramOption("minIron").map(_.map(_.toBigDecimal)) :: paramOption("maxIron").map(_.map(_.toBigDecimal)) :: paramOption("minMagnesium").map(_.map(_.toBigDecimal)) :: paramOption("maxMagnesium").map(_.map(_.toBigDecimal)) :: paramOption("minManganese").map(_.map(_.toBigDecimal)) :: paramOption("maxManganese").map(_.map(_.toBigDecimal)) :: paramOption("minPhosphorus").map(_.map(_.toBigDecimal)) :: paramOption("maxPhosphorus").map(_.map(_.toBigDecimal)) :: paramOption("minPotassium").map(_.map(_.toBigDecimal)) :: paramOption("maxPotassium").map(_.map(_.toBigDecimal)) :: paramOption("minSelenium").map(_.map(_.toBigDecimal)) :: paramOption("maxSelenium").map(_.map(_.toBigDecimal)) :: paramOption("minSodium").map(_.map(_.toBigDecimal)) :: paramOption("maxSodium").map(_.map(_.toBigDecimal)) :: paramOption("minSugar").map(_.map(_.toBigDecimal)) :: paramOption("maxSugar").map(_.map(_.toBigDecimal)) :: paramOption("minZinc").map(_.map(_.toBigDecimal)) :: paramOption("maxZinc").map(_.map(_.toBigDecimal)) :: paramOption("offset").map(_.map(_.toBigDecimal)) :: paramOption("number").map(_.map(_.toBigDecimal)) :: paramOption("limitLicense").map(_.map(_.toBoolean))) { (query: String, cuisine: Option[String], excludeCuisine: Option[String], diet: Option[String], intolerances: Option[String], equipment: Option[String], includeIngredients: Option[String], excludeIngredients: Option[String], _type: Option[String], instructionsRequired: Option[Boolean], fillIngredients: Option[Boolean], addRecipeInformation: Option[Boolean], addRecipeNutrition: Option[Boolean], author: Option[String], tags: Option[String], recipeBoxId: Option[BigDecimal], titleMatch: Option[String], maxReadyTime: Option[BigDecimal], ignorePantry: Option[Boolean], sort: Option[String], sortDirection: Option[String], minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], minAlcohol: Option[BigDecimal], maxAlcohol: Option[BigDecimal], minCaffeine: Option[BigDecimal], maxCaffeine: Option[BigDecimal], minCopper: Option[BigDecimal], maxCopper: Option[BigDecimal], minCalcium: Option[BigDecimal], maxCalcium: Option[BigDecimal], minCholine: Option[BigDecimal], maxCholine: Option[BigDecimal], minCholesterol: Option[BigDecimal], maxCholesterol: Option[BigDecimal], minFluoride: Option[BigDecimal], maxFluoride: Option[BigDecimal], minSaturatedFat: Option[BigDecimal], maxSaturatedFat: Option[BigDecimal], minVitaminA: Option[BigDecimal], maxVitaminA: Option[BigDecimal], minVitaminC: Option[BigDecimal], maxVitaminC: Option[BigDecimal], minVitaminD: Option[BigDecimal], maxVitaminD: Option[BigDecimal], minVitaminE: Option[BigDecimal], maxVitaminE: Option[BigDecimal], minVitaminK: Option[BigDecimal], maxVitaminK: Option[BigDecimal], minVitaminB1: Option[BigDecimal], maxVitaminB1: Option[BigDecimal], minVitaminB2: Option[BigDecimal], maxVitaminB2: Option[BigDecimal], minVitaminB5: Option[BigDecimal], maxVitaminB5: Option[BigDecimal], minVitaminB3: Option[BigDecimal], maxVitaminB3: Option[BigDecimal], minVitaminB6: Option[BigDecimal], maxVitaminB6: Option[BigDecimal], minVitaminB12: Option[BigDecimal], maxVitaminB12: Option[BigDecimal], minFiber: Option[BigDecimal], maxFiber: Option[BigDecimal], minFolate: Option[BigDecimal], maxFolate: Option[BigDecimal], minFolicAcid: Option[BigDecimal], maxFolicAcid: Option[BigDecimal], minIodine: Option[BigDecimal], maxIodine: Option[BigDecimal], minIron: Option[BigDecimal], maxIron: Option[BigDecimal], minMagnesium: Option[BigDecimal], maxMagnesium: Option[BigDecimal], minManganese: Option[BigDecimal], maxManganese: Option[BigDecimal], minPhosphorus: Option[BigDecimal], maxPhosphorus: Option[BigDecimal], minPotassium: Option[BigDecimal], maxPotassium: Option[BigDecimal], minSelenium: Option[BigDecimal], maxSelenium: Option[BigDecimal], minSodium: Option[BigDecimal], maxSodium: Option[BigDecimal], minSugar: Option[BigDecimal], maxSugar: Option[BigDecimal], minZinc: Option[BigDecimal], maxZinc: Option[BigDecimal], offset: Option[BigDecimal], number: Option[BigDecimal], limitLicense: Option[Boolean]) =>
          da.Default_searchRecipes(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, _type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def searchRecipesByIngredients(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: "findByIngredients" :: param("ingredients") :: paramOption("number").map(_.map(_.toBigDecimal)) :: paramOption("limitLicense").map(_.map(_.toBoolean)) :: paramOption("ranking").map(_.map(_.toBigDecimal)) :: paramOption("ignorePantry").map(_.map(_.toBoolean))) { (ingredients: String, number: Option[BigDecimal], limitLicense: Option[Boolean], ranking: Option[BigDecimal], ignorePantry: Option[Boolean]) =>
          da.Default_searchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def searchRecipesByNutrients(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: "findByNutrients" :: paramOption("minCarbs").map(_.map(_.toBigDecimal)) :: paramOption("maxCarbs").map(_.map(_.toBigDecimal)) :: paramOption("minProtein").map(_.map(_.toBigDecimal)) :: paramOption("maxProtein").map(_.map(_.toBigDecimal)) :: paramOption("minCalories").map(_.map(_.toBigDecimal)) :: paramOption("maxCalories").map(_.map(_.toBigDecimal)) :: paramOption("minFat").map(_.map(_.toBigDecimal)) :: paramOption("maxFat").map(_.map(_.toBigDecimal)) :: paramOption("minAlcohol").map(_.map(_.toBigDecimal)) :: paramOption("maxAlcohol").map(_.map(_.toBigDecimal)) :: paramOption("minCaffeine").map(_.map(_.toBigDecimal)) :: paramOption("maxCaffeine").map(_.map(_.toBigDecimal)) :: paramOption("minCopper").map(_.map(_.toBigDecimal)) :: paramOption("maxCopper").map(_.map(_.toBigDecimal)) :: paramOption("minCalcium").map(_.map(_.toBigDecimal)) :: paramOption("maxCalcium").map(_.map(_.toBigDecimal)) :: paramOption("minCholine").map(_.map(_.toBigDecimal)) :: paramOption("maxCholine").map(_.map(_.toBigDecimal)) :: paramOption("minCholesterol").map(_.map(_.toBigDecimal)) :: paramOption("maxCholesterol").map(_.map(_.toBigDecimal)) :: paramOption("minFluoride").map(_.map(_.toBigDecimal)) :: paramOption("maxFluoride").map(_.map(_.toBigDecimal)) :: paramOption("minSaturatedFat").map(_.map(_.toBigDecimal)) :: paramOption("maxSaturatedFat").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminA").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminA").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminC").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminC").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminD").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminD").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminE").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminE").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminK").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminK").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB1").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB1").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB2").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB2").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB5").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB5").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB3").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB3").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB6").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB6").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB12").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB12").map(_.map(_.toBigDecimal)) :: paramOption("minFiber").map(_.map(_.toBigDecimal)) :: paramOption("maxFiber").map(_.map(_.toBigDecimal)) :: paramOption("minFolate").map(_.map(_.toBigDecimal)) :: paramOption("maxFolate").map(_.map(_.toBigDecimal)) :: paramOption("minFolicAcid").map(_.map(_.toBigDecimal)) :: paramOption("maxFolicAcid").map(_.map(_.toBigDecimal)) :: paramOption("minIodine").map(_.map(_.toBigDecimal)) :: paramOption("maxIodine").map(_.map(_.toBigDecimal)) :: paramOption("minIron").map(_.map(_.toBigDecimal)) :: paramOption("maxIron").map(_.map(_.toBigDecimal)) :: paramOption("minMagnesium").map(_.map(_.toBigDecimal)) :: paramOption("maxMagnesium").map(_.map(_.toBigDecimal)) :: paramOption("minManganese").map(_.map(_.toBigDecimal)) :: paramOption("maxManganese").map(_.map(_.toBigDecimal)) :: paramOption("minPhosphorus").map(_.map(_.toBigDecimal)) :: paramOption("maxPhosphorus").map(_.map(_.toBigDecimal)) :: paramOption("minPotassium").map(_.map(_.toBigDecimal)) :: paramOption("maxPotassium").map(_.map(_.toBigDecimal)) :: paramOption("minSelenium").map(_.map(_.toBigDecimal)) :: paramOption("maxSelenium").map(_.map(_.toBigDecimal)) :: paramOption("minSodium").map(_.map(_.toBigDecimal)) :: paramOption("maxSodium").map(_.map(_.toBigDecimal)) :: paramOption("minSugar").map(_.map(_.toBigDecimal)) :: paramOption("maxSugar").map(_.map(_.toBigDecimal)) :: paramOption("minZinc").map(_.map(_.toBigDecimal)) :: paramOption("maxZinc").map(_.map(_.toBigDecimal)) :: paramOption("offset").map(_.map(_.toBigDecimal)) :: paramOption("number").map(_.map(_.toBigDecimal)) :: paramOption("random").map(_.map(_.toBoolean)) :: paramOption("limitLicense").map(_.map(_.toBoolean))) { (minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], minAlcohol: Option[BigDecimal], maxAlcohol: Option[BigDecimal], minCaffeine: Option[BigDecimal], maxCaffeine: Option[BigDecimal], minCopper: Option[BigDecimal], maxCopper: Option[BigDecimal], minCalcium: Option[BigDecimal], maxCalcium: Option[BigDecimal], minCholine: Option[BigDecimal], maxCholine: Option[BigDecimal], minCholesterol: Option[BigDecimal], maxCholesterol: Option[BigDecimal], minFluoride: Option[BigDecimal], maxFluoride: Option[BigDecimal], minSaturatedFat: Option[BigDecimal], maxSaturatedFat: Option[BigDecimal], minVitaminA: Option[BigDecimal], maxVitaminA: Option[BigDecimal], minVitaminC: Option[BigDecimal], maxVitaminC: Option[BigDecimal], minVitaminD: Option[BigDecimal], maxVitaminD: Option[BigDecimal], minVitaminE: Option[BigDecimal], maxVitaminE: Option[BigDecimal], minVitaminK: Option[BigDecimal], maxVitaminK: Option[BigDecimal], minVitaminB1: Option[BigDecimal], maxVitaminB1: Option[BigDecimal], minVitaminB2: Option[BigDecimal], maxVitaminB2: Option[BigDecimal], minVitaminB5: Option[BigDecimal], maxVitaminB5: Option[BigDecimal], minVitaminB3: Option[BigDecimal], maxVitaminB3: Option[BigDecimal], minVitaminB6: Option[BigDecimal], maxVitaminB6: Option[BigDecimal], minVitaminB12: Option[BigDecimal], maxVitaminB12: Option[BigDecimal], minFiber: Option[BigDecimal], maxFiber: Option[BigDecimal], minFolate: Option[BigDecimal], maxFolate: Option[BigDecimal], minFolicAcid: Option[BigDecimal], maxFolicAcid: Option[BigDecimal], minIodine: Option[BigDecimal], maxIodine: Option[BigDecimal], minIron: Option[BigDecimal], maxIron: Option[BigDecimal], minMagnesium: Option[BigDecimal], maxMagnesium: Option[BigDecimal], minManganese: Option[BigDecimal], maxManganese: Option[BigDecimal], minPhosphorus: Option[BigDecimal], maxPhosphorus: Option[BigDecimal], minPotassium: Option[BigDecimal], maxPotassium: Option[BigDecimal], minSelenium: Option[BigDecimal], maxSelenium: Option[BigDecimal], minSodium: Option[BigDecimal], maxSodium: Option[BigDecimal], minSugar: Option[BigDecimal], maxSugar: Option[BigDecimal], minZinc: Option[BigDecimal], maxZinc: Option[BigDecimal], offset: Option[BigDecimal], number: Option[BigDecimal], random: Option[Boolean], limitLicense: Option[Boolean]) =>
          da.Default_searchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def searchSiteContent(da: DataAccessor): Endpoint[Object] =
        get("food" :: "site" :: "search" :: param("query")) { (query: String) =>
          da.Default_searchSiteContent(query) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def summarizeRecipe(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: bigdecimal :: "summary") { (id: BigDecimal) =>
          da.Default_summarizeRecipe(id) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def talkToChatbot(da: DataAccessor): Endpoint[Object] =
        get("food" :: "converse" :: param("text") :: paramOption("contextId")) { (text: String, contextId: Option[String]) =>
          da.Default_talkToChatbot(text, contextId) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def visualizeEquipment(da: DataAccessor): Endpoint[String] =
        post("recipes" :: "visualizeEquipment" :: string :: paramOption("view") :: paramOption("defaultCss").map(_.map(_.toBoolean)) :: paramOption("showBacklink").map(_.map(_.toBoolean))) { (instructions: String, view: Option[String], defaultCss: Option[Boolean], showBacklink: Option[Boolean]) =>
          da.Default_visualizeEquipment(instructions, view, defaultCss, showBacklink) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def visualizeIngredients(da: DataAccessor): Endpoint[String] =
        post("recipes" :: "visualizeIngredients" :: string :: bigdecimal :: paramOption("measure") :: paramOption("view") :: paramOption("defaultCss").map(_.map(_.toBoolean)) :: paramOption("showBacklink").map(_.map(_.toBoolean))) { (ingredientList: String, servings: BigDecimal, measure: Option[String], view: Option[String], defaultCss: Option[Boolean], showBacklink: Option[Boolean]) =>
          da.Default_visualizeIngredients(ingredientList, servings, measure, view, defaultCss, showBacklink) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def visualizeMenuItemNutritionByID(da: DataAccessor): Endpoint[String] =
        get("food" :: "menuItems" :: bigdecimal :: "nutritionWidget" :: paramOption("defaultCss").map(_.map(_.toBoolean))) { (id: BigDecimal, defaultCss: Option[Boolean]) =>
          da.Default_visualizeMenuItemNutritionByID(id, defaultCss) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def visualizePriceBreakdown(da: DataAccessor): Endpoint[String] =
        post("recipes" :: "visualizePriceEstimator" :: string :: bigdecimal :: paramOption("mode").map(_.map(_.toBigDecimal)) :: paramOption("defaultCss").map(_.map(_.toBoolean)) :: paramOption("showBacklink").map(_.map(_.toBoolean))) { (ingredientList: String, servings: BigDecimal, mode: Option[BigDecimal], defaultCss: Option[Boolean], showBacklink: Option[Boolean]) =>
          da.Default_visualizePriceBreakdown(ingredientList, servings, mode, defaultCss, showBacklink) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def visualizeProductNutritionByID(da: DataAccessor): Endpoint[String] =
        get("food" :: "products" :: bigdecimal :: "nutritionWidget" :: paramOption("defaultCss").map(_.map(_.toBoolean))) { (id: BigDecimal, defaultCss: Option[Boolean]) =>
          da.Default_visualizeProductNutritionByID(id, defaultCss) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def visualizeRecipeEquipmentByID(da: DataAccessor): Endpoint[String] =
        get("recipes" :: bigdecimal :: "equipmentWidget" :: paramOption("defaultCss").map(_.map(_.toBoolean))) { (id: BigDecimal, defaultCss: Option[Boolean]) =>
          da.Default_visualizeRecipeEquipmentByID(id, defaultCss) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def visualizeRecipeIngredientsByID(da: DataAccessor): Endpoint[String] =
        get("recipes" :: bigdecimal :: "ingredientWidget" :: paramOption("defaultCss").map(_.map(_.toBoolean))) { (id: BigDecimal, defaultCss: Option[Boolean]) =>
          da.Default_visualizeRecipeIngredientsByID(id, defaultCss) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def visualizeRecipeNutrition(da: DataAccessor): Endpoint[String] =
        post("recipes" :: "visualizeNutrition" :: string :: bigdecimal :: paramOption("defaultCss").map(_.map(_.toBoolean)) :: paramOption("showBacklink").map(_.map(_.toBoolean))) { (ingredientList: String, servings: BigDecimal, defaultCss: Option[Boolean], showBacklink: Option[Boolean]) =>
          da.Default_visualizeRecipeNutrition(ingredientList, servings, defaultCss, showBacklink) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def visualizeRecipeNutritionByID(da: DataAccessor): Endpoint[String] =
        get("recipes" :: bigdecimal :: "nutritionWidget" :: paramOption("defaultCss").map(_.map(_.toBoolean))) { (id: BigDecimal, defaultCss: Option[Boolean]) =>
          da.Default_visualizeRecipeNutritionByID(id, defaultCss) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def visualizeRecipePriceBreakdownByID(da: DataAccessor): Endpoint[String] =
        get("recipes" :: bigdecimal :: "priceBreakdownWidget" :: paramOption("defaultCss").map(_.map(_.toBoolean))) { (id: BigDecimal, defaultCss: Option[Boolean]) =>
          da.Default_visualizeRecipePriceBreakdownByID(id, defaultCss) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def visualizeRecipeTaste(da: DataAccessor): Endpoint[String] =
        post("recipes" :: "visualizeTaste" :: string) { (ingredientList: String) =>
          da.Default_visualizeRecipeTaste(ingredientList) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def visualizeRecipeTasteByID(da: DataAccessor): Endpoint[String] =
        get("recipes" :: bigdecimal :: "tasteWidget") { (id: BigDecimal) =>
          da.Default_visualizeRecipeTasteByID(id) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }


    implicit private def fileUploadToFile(fileUpload: FileUpload) : File = {
      fileUpload match {
        case upload: InMemoryFileUpload =>
          bytesToFile(Buf.ByteArray.Owned.extract(upload.content))
        case upload: OnDiskFileUpload =>
          upload.content
        case _ => null
      }
    }

    private def bytesToFile(input: Array[Byte]): java.io.File = {
      val file = File.createTempFile("tmpDefaultApi", null)
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
