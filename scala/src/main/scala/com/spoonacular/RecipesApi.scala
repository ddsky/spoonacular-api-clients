package com.spoonacular

import java.io._
import spoonacular._
import com.spoonacular.client.model._
import java.math.BigDecimal
import com.spoonacular.client.model.InlineObject
import com.spoonacular.client.model.InlineResponse200
import com.spoonacular.client.model.InlineResponse2001
import com.spoonacular.client.model.InlineResponse20010
import com.spoonacular.client.model.InlineResponse20011
import com.spoonacular.client.model.InlineResponse20012
import com.spoonacular.client.model.InlineResponse20013
import com.spoonacular.client.model.InlineResponse20014
import com.spoonacular.client.model.InlineResponse20015
import com.spoonacular.client.model.InlineResponse20016
import com.spoonacular.client.model.InlineResponse20017
import com.spoonacular.client.model.InlineResponse20018
import com.spoonacular.client.model.InlineResponse20019
import com.spoonacular.client.model.InlineResponse2002
import com.spoonacular.client.model.InlineResponse20020
import com.spoonacular.client.model.InlineResponse20021
import com.spoonacular.client.model.InlineResponse20023
import com.spoonacular.client.model.InlineResponse2003
import com.spoonacular.client.model.InlineResponse2004
import com.spoonacular.client.model.InlineResponse20049
import com.spoonacular.client.model.InlineResponse2005
import com.spoonacular.client.model.InlineResponse2006
import com.spoonacular.client.model.InlineResponse2007
import com.spoonacular.client.model.InlineResponse2008
import com.spoonacular.client.model.InlineResponse2009
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

object RecipesApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        analyzeARecipeSearchQuery(da) :+:
        analyzeRecipeInstructions(da) :+:
        autocompleteRecipeSearch(da) :+:
        classifyCuisine(da) :+:
        computeGlycemicLoad(da) :+:
        convertAmounts(da) :+:
        createRecipeCard(da) :+:
        equipmentByIDImage(da) :+:
        extractRecipeFromWebsite(da) :+:
        getAnalyzedRecipeInstructions(da) :+:
        getRandomRecipes(da) :+:
        getRecipeEquipmentByID(da) :+:
        getRecipeInformation(da) :+:
        getRecipeInformationBulk(da) :+:
        getRecipeIngredientsByID(da) :+:
        getRecipeNutritionWidgetByID(da) :+:
        getRecipePriceBreakdownByID(da) :+:
        getRecipeTasteByID(da) :+:
        getSimilarRecipes(da) :+:
        guessNutritionByDishName(da) :+:
        ingredientsByIDImage(da) :+:
        parseIngredients(da) :+:
        priceBreakdownByIDImage(da) :+:
        quickAnswer(da) :+:
        recipeNutritionByIDImage(da) :+:
        recipeNutritionLabelImage(da) :+:
        recipeNutritionLabelWidget(da) :+:
        recipeTasteByIDImage(da) :+:
        searchRecipes(da) :+:
        searchRecipesByIngredients(da) :+:
        searchRecipesByNutrients(da) :+:
        summarizeRecipe(da) :+:
        visualizeEquipment(da) :+:
        visualizePriceBreakdown(da) :+:
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
        * @return An endpoint representing a InlineResponse20018
        */
        private def analyzeARecipeSearchQuery(da: DataAccessor): Endpoint[InlineResponse20018] =
        get("recipes" :: "queries" :: "analyze" :: param("q") :: param("apiKey")) { (q: String, authParamapiKeyScheme: String) =>
          da.Recipes_analyzeARecipeSearchQuery(q, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20016
        */
        private def analyzeRecipeInstructions(da: DataAccessor): Endpoint[InlineResponse20016] =
        post("recipes" :: "analyzeInstructions" :: headerOption("Content-Type") :: param("apiKey")) { (contentType: Option[String], authParamapiKeyScheme: String) =>
          da.Recipes_analyzeRecipeInstructions(contentType, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[InlineResponse2007]
        */
        private def autocompleteRecipeSearch(da: DataAccessor): Endpoint[Seq[InlineResponse2007]] =
        get("recipes" :: "autocomplete" :: paramOption("query") :: paramOption("number").map(_.map(_.toInt)) :: param("apiKey")) { (query: Option[String], number: Option[Int], authParamapiKeyScheme: String) =>
          da.Recipes_autocompleteRecipeSearch(query, number, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20017
        */
        private def classifyCuisine(da: DataAccessor): Endpoint[InlineResponse20017] =
        post("recipes" :: "cuisine" :: headerOption("Content-Type") :: param("apiKey")) { (contentType: Option[String], authParamapiKeyScheme: String) =>
          da.Recipes_classifyCuisine(contentType, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20023
        */
        private def computeGlycemicLoad(da: DataAccessor): Endpoint[InlineResponse20023] =
        post("food" :: "ingredients" :: "glycemicLoad" :: jsonBody[InlineObject] :: paramOption("language") :: param("apiKey")) { (inlineObject: InlineObject, language: Option[String], authParamapiKeyScheme: String) =>
          da.Recipes_computeGlycemicLoad(inlineObject, language, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20019
        */
        private def convertAmounts(da: DataAccessor): Endpoint[InlineResponse20019] =
        get("recipes" :: "convert" :: param("ingredientName") :: param("sourceAmount").map(_.toBigDecimal) :: param("sourceUnit") :: param("targetUnit") :: param("apiKey")) { (ingredientName: String, sourceAmount: BigDecimal, sourceUnit: String, targetUnit: String, authParamapiKeyScheme: String) =>
          da.Recipes_convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20015
        */
        private def createRecipeCard(da: DataAccessor): Endpoint[InlineResponse20015] =
        post("recipes" :: "visualizeRecipe" :: headerOption("Content-Type") :: param("apiKey")) { (contentType: Option[String], authParamapiKeyScheme: String) =>
          da.Recipes_createRecipeCard(contentType, authParamapiKeyScheme) match {
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
        private def equipmentByIDImage(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: bigdecimal :: "equipmentWidget.png" :: param("apiKey")) { (id: BigDecimal, authParamapiKeyScheme: String) =>
          da.Recipes_equipmentByIDImage(id, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse2003
        */
        private def extractRecipeFromWebsite(da: DataAccessor): Endpoint[InlineResponse2003] =
        get("recipes" :: "extract" :: param("url") :: paramOption("forceExtraction").map(_.map(_.toBoolean)) :: paramOption("analyze").map(_.map(_.toBoolean)) :: paramOption("includeNutrition").map(_.map(_.toBoolean)) :: paramOption("includeTaste").map(_.map(_.toBoolean)) :: param("apiKey")) { (url: String, forceExtraction: Option[Boolean], analyze: Option[Boolean], includeNutrition: Option[Boolean], includeTaste: Option[Boolean], authParamapiKeyScheme: String) =>
          da.Recipes_extractRecipeFromWebsite(url, forceExtraction, analyze, includeNutrition, includeTaste, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20013
        */
        private def getAnalyzedRecipeInstructions(da: DataAccessor): Endpoint[InlineResponse20013] =
        get("recipes" :: int :: "analyzedInstructions" :: paramOption("stepBreakdown").map(_.map(_.toBoolean)) :: param("apiKey")) { (id: Int, stepBreakdown: Option[Boolean], authParamapiKeyScheme: String) =>
          da.Recipes_getAnalyzedRecipeInstructions(id, stepBreakdown, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse2006
        */
        private def getRandomRecipes(da: DataAccessor): Endpoint[InlineResponse2006] =
        get("recipes" :: "random" :: paramOption("limitLicense").map(_.map(_.toBoolean)) :: paramOption("tags") :: paramOption("number").map(_.map(_.toInt)) :: param("apiKey")) { (limitLicense: Option[Boolean], tags: Option[String], number: Option[Int], authParamapiKeyScheme: String) =>
          da.Recipes_getRandomRecipes(limitLicense, tags, number, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse2009
        */
        private def getRecipeEquipmentByID(da: DataAccessor): Endpoint[InlineResponse2009] =
        get("recipes" :: int :: "equipmentWidget.json" :: param("apiKey")) { (id: Int, authParamapiKeyScheme: String) =>
          da.Recipes_getRecipeEquipmentByID(id, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse2003
        */
        private def getRecipeInformation(da: DataAccessor): Endpoint[InlineResponse2003] =
        get("recipes" :: int :: "information" :: paramOption("includeNutrition").map(_.map(_.toBoolean)) :: param("apiKey")) { (id: Int, includeNutrition: Option[Boolean], authParamapiKeyScheme: String) =>
          da.Recipes_getRecipeInformation(id, includeNutrition, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[InlineResponse2004]
        */
        private def getRecipeInformationBulk(da: DataAccessor): Endpoint[Seq[InlineResponse2004]] =
        get("recipes" :: "informationBulk" :: param("ids") :: paramOption("includeNutrition").map(_.map(_.toBoolean)) :: param("apiKey")) { (ids: String, includeNutrition: Option[Boolean], authParamapiKeyScheme: String) =>
          da.Recipes_getRecipeInformationBulk(ids, includeNutrition, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20011
        */
        private def getRecipeIngredientsByID(da: DataAccessor): Endpoint[InlineResponse20011] =
        get("recipes" :: int :: "ingredientWidget.json" :: param("apiKey")) { (id: Int, authParamapiKeyScheme: String) =>
          da.Recipes_getRecipeIngredientsByID(id, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20012
        */
        private def getRecipeNutritionWidgetByID(da: DataAccessor): Endpoint[InlineResponse20012] =
        get("recipes" :: int :: "nutritionWidget.json" :: param("apiKey")) { (id: Int, authParamapiKeyScheme: String) =>
          da.Recipes_getRecipeNutritionWidgetByID(id, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20010
        */
        private def getRecipePriceBreakdownByID(da: DataAccessor): Endpoint[InlineResponse20010] =
        get("recipes" :: int :: "priceBreakdownWidget.json" :: param("apiKey")) { (id: Int, authParamapiKeyScheme: String) =>
          da.Recipes_getRecipePriceBreakdownByID(id, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse2008
        */
        private def getRecipeTasteByID(da: DataAccessor): Endpoint[InlineResponse2008] =
        get("recipes" :: int :: "tasteWidget.json" :: paramOption("normalize").map(_.map(_.toBoolean)) :: param("apiKey")) { (id: Int, normalize: Option[Boolean], authParamapiKeyScheme: String) =>
          da.Recipes_getRecipeTasteByID(id, normalize, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[InlineResponse2005]
        */
        private def getSimilarRecipes(da: DataAccessor): Endpoint[Seq[InlineResponse2005]] =
        get("recipes" :: int :: "similar" :: paramOption("number").map(_.map(_.toInt)) :: paramOption("limitLicense").map(_.map(_.toBoolean)) :: param("apiKey")) { (id: Int, number: Option[Int], limitLicense: Option[Boolean], authParamapiKeyScheme: String) =>
          da.Recipes_getSimilarRecipes(id, number, limitLicense, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20021
        */
        private def guessNutritionByDishName(da: DataAccessor): Endpoint[InlineResponse20021] =
        get("recipes" :: "guessNutrition" :: param("title") :: param("apiKey")) { (title: String, authParamapiKeyScheme: String) =>
          da.Recipes_guessNutritionByDishName(title, authParamapiKeyScheme) match {
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
        private def ingredientsByIDImage(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: bigdecimal :: "ingredientWidget.png" :: paramOption("measure") :: param("apiKey")) { (id: BigDecimal, measure: Option[String], authParamapiKeyScheme: String) =>
          da.Recipes_ingredientsByIDImage(id, measure, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[InlineResponse20020]
        */
        private def parseIngredients(da: DataAccessor): Endpoint[Seq[InlineResponse20020]] =
        post("recipes" :: "parseIngredients" :: headerOption("Content-Type") :: paramOption("language") :: param("apiKey")) { (contentType: Option[String], language: Option[String], authParamapiKeyScheme: String) =>
          da.Recipes_parseIngredients(contentType, language, authParamapiKeyScheme) match {
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
        private def priceBreakdownByIDImage(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: bigdecimal :: "priceBreakdownWidget.png" :: param("apiKey")) { (id: BigDecimal, authParamapiKeyScheme: String) =>
          da.Recipes_priceBreakdownByIDImage(id, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20049
        */
        private def quickAnswer(da: DataAccessor): Endpoint[InlineResponse20049] =
        get("recipes" :: "quickAnswer" :: param("q") :: param("apiKey")) { (q: String, authParamapiKeyScheme: String) =>
          da.Recipes_quickAnswer(q, authParamapiKeyScheme) match {
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
        private def recipeNutritionByIDImage(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: bigdecimal :: "nutritionWidget.png" :: param("apiKey")) { (id: BigDecimal, authParamapiKeyScheme: String) =>
          da.Recipes_recipeNutritionByIDImage(id, authParamapiKeyScheme) match {
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
        private def recipeNutritionLabelImage(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: bigdecimal :: "nutritionLabel.png" :: paramOption("showOptionalNutrients").map(_.map(_.toBoolean)) :: paramOption("showZeroValues").map(_.map(_.toBoolean)) :: paramOption("showIngredients").map(_.map(_.toBoolean)) :: param("apiKey")) { (id: BigDecimal, showOptionalNutrients: Option[Boolean], showZeroValues: Option[Boolean], showIngredients: Option[Boolean], authParamapiKeyScheme: String) =>
          da.Recipes_recipeNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients, authParamapiKeyScheme) match {
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
        private def recipeNutritionLabelWidget(da: DataAccessor): Endpoint[String] =
        get("recipes" :: bigdecimal :: "nutritionLabel" :: paramOption("defaultCss").map(_.map(_.toBoolean)) :: paramOption("showOptionalNutrients").map(_.map(_.toBoolean)) :: paramOption("showZeroValues").map(_.map(_.toBoolean)) :: paramOption("showIngredients").map(_.map(_.toBoolean)) :: param("apiKey")) { (id: BigDecimal, defaultCss: Option[Boolean], showOptionalNutrients: Option[Boolean], showZeroValues: Option[Boolean], showIngredients: Option[Boolean], authParamapiKeyScheme: String) =>
          da.Recipes_recipeNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients, authParamapiKeyScheme) match {
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
        private def recipeTasteByIDImage(da: DataAccessor): Endpoint[Object] =
        get("recipes" :: bigdecimal :: "tasteWidget.png" :: paramOption("normalize").map(_.map(_.toBoolean)) :: paramOption("rgb") :: param("apiKey")) { (id: BigDecimal, normalize: Option[Boolean], rgb: Option[String], authParamapiKeyScheme: String) =>
          da.Recipes_recipeTasteByIDImage(id, normalize, rgb, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse200
        */
        private def searchRecipes(da: DataAccessor): Endpoint[InlineResponse200] =
        get("recipes" :: "complexSearch" :: paramOption("query") :: paramOption("cuisine") :: paramOption("excludeCuisine") :: paramOption("diet") :: paramOption("intolerances") :: paramOption("equipment") :: paramOption("includeIngredients") :: paramOption("excludeIngredients") :: paramOption("type") :: paramOption("instructionsRequired").map(_.map(_.toBoolean)) :: paramOption("fillIngredients").map(_.map(_.toBoolean)) :: paramOption("addRecipeInformation").map(_.map(_.toBoolean)) :: paramOption("addRecipeNutrition").map(_.map(_.toBoolean)) :: paramOption("author") :: paramOption("tags") :: paramOption("recipeBoxId").map(_.map(_.toBigDecimal)) :: paramOption("titleMatch") :: paramOption("maxReadyTime").map(_.map(_.toBigDecimal)) :: paramOption("ignorePantry").map(_.map(_.toBoolean)) :: paramOption("sort") :: paramOption("sortDirection") :: paramOption("minCarbs").map(_.map(_.toBigDecimal)) :: paramOption("maxCarbs").map(_.map(_.toBigDecimal)) :: paramOption("minProtein").map(_.map(_.toBigDecimal)) :: paramOption("maxProtein").map(_.map(_.toBigDecimal)) :: paramOption("minCalories").map(_.map(_.toBigDecimal)) :: paramOption("maxCalories").map(_.map(_.toBigDecimal)) :: paramOption("minFat").map(_.map(_.toBigDecimal)) :: paramOption("maxFat").map(_.map(_.toBigDecimal)) :: paramOption("minAlcohol").map(_.map(_.toBigDecimal)) :: paramOption("maxAlcohol").map(_.map(_.toBigDecimal)) :: paramOption("minCaffeine").map(_.map(_.toBigDecimal)) :: paramOption("maxCaffeine").map(_.map(_.toBigDecimal)) :: paramOption("minCopper").map(_.map(_.toBigDecimal)) :: paramOption("maxCopper").map(_.map(_.toBigDecimal)) :: paramOption("minCalcium").map(_.map(_.toBigDecimal)) :: paramOption("maxCalcium").map(_.map(_.toBigDecimal)) :: paramOption("minCholine").map(_.map(_.toBigDecimal)) :: paramOption("maxCholine").map(_.map(_.toBigDecimal)) :: paramOption("minCholesterol").map(_.map(_.toBigDecimal)) :: paramOption("maxCholesterol").map(_.map(_.toBigDecimal)) :: paramOption("minFluoride").map(_.map(_.toBigDecimal)) :: paramOption("maxFluoride").map(_.map(_.toBigDecimal)) :: paramOption("minSaturatedFat").map(_.map(_.toBigDecimal)) :: paramOption("maxSaturatedFat").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminA").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminA").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminC").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminC").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminD").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminD").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminE").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminE").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminK").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminK").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB1").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB1").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB2").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB2").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB5").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB5").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB3").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB3").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB6").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB6").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB12").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB12").map(_.map(_.toBigDecimal)) :: paramOption("minFiber").map(_.map(_.toBigDecimal)) :: paramOption("maxFiber").map(_.map(_.toBigDecimal)) :: paramOption("minFolate").map(_.map(_.toBigDecimal)) :: paramOption("maxFolate").map(_.map(_.toBigDecimal)) :: paramOption("minFolicAcid").map(_.map(_.toBigDecimal)) :: paramOption("maxFolicAcid").map(_.map(_.toBigDecimal)) :: paramOption("minIodine").map(_.map(_.toBigDecimal)) :: paramOption("maxIodine").map(_.map(_.toBigDecimal)) :: paramOption("minIron").map(_.map(_.toBigDecimal)) :: paramOption("maxIron").map(_.map(_.toBigDecimal)) :: paramOption("minMagnesium").map(_.map(_.toBigDecimal)) :: paramOption("maxMagnesium").map(_.map(_.toBigDecimal)) :: paramOption("minManganese").map(_.map(_.toBigDecimal)) :: paramOption("maxManganese").map(_.map(_.toBigDecimal)) :: paramOption("minPhosphorus").map(_.map(_.toBigDecimal)) :: paramOption("maxPhosphorus").map(_.map(_.toBigDecimal)) :: paramOption("minPotassium").map(_.map(_.toBigDecimal)) :: paramOption("maxPotassium").map(_.map(_.toBigDecimal)) :: paramOption("minSelenium").map(_.map(_.toBigDecimal)) :: paramOption("maxSelenium").map(_.map(_.toBigDecimal)) :: paramOption("minSodium").map(_.map(_.toBigDecimal)) :: paramOption("maxSodium").map(_.map(_.toBigDecimal)) :: paramOption("minSugar").map(_.map(_.toBigDecimal)) :: paramOption("maxSugar").map(_.map(_.toBigDecimal)) :: paramOption("minZinc").map(_.map(_.toBigDecimal)) :: paramOption("maxZinc").map(_.map(_.toBigDecimal)) :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: paramOption("limitLicense").map(_.map(_.toBoolean)) :: param("apiKey")) { (query: Option[String], cuisine: Option[String], excludeCuisine: Option[String], diet: Option[String], intolerances: Option[String], equipment: Option[String], includeIngredients: Option[String], excludeIngredients: Option[String], _type: Option[String], instructionsRequired: Option[Boolean], fillIngredients: Option[Boolean], addRecipeInformation: Option[Boolean], addRecipeNutrition: Option[Boolean], author: Option[String], tags: Option[String], recipeBoxId: Option[BigDecimal], titleMatch: Option[String], maxReadyTime: Option[BigDecimal], ignorePantry: Option[Boolean], sort: Option[String], sortDirection: Option[String], minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], minAlcohol: Option[BigDecimal], maxAlcohol: Option[BigDecimal], minCaffeine: Option[BigDecimal], maxCaffeine: Option[BigDecimal], minCopper: Option[BigDecimal], maxCopper: Option[BigDecimal], minCalcium: Option[BigDecimal], maxCalcium: Option[BigDecimal], minCholine: Option[BigDecimal], maxCholine: Option[BigDecimal], minCholesterol: Option[BigDecimal], maxCholesterol: Option[BigDecimal], minFluoride: Option[BigDecimal], maxFluoride: Option[BigDecimal], minSaturatedFat: Option[BigDecimal], maxSaturatedFat: Option[BigDecimal], minVitaminA: Option[BigDecimal], maxVitaminA: Option[BigDecimal], minVitaminC: Option[BigDecimal], maxVitaminC: Option[BigDecimal], minVitaminD: Option[BigDecimal], maxVitaminD: Option[BigDecimal], minVitaminE: Option[BigDecimal], maxVitaminE: Option[BigDecimal], minVitaminK: Option[BigDecimal], maxVitaminK: Option[BigDecimal], minVitaminB1: Option[BigDecimal], maxVitaminB1: Option[BigDecimal], minVitaminB2: Option[BigDecimal], maxVitaminB2: Option[BigDecimal], minVitaminB5: Option[BigDecimal], maxVitaminB5: Option[BigDecimal], minVitaminB3: Option[BigDecimal], maxVitaminB3: Option[BigDecimal], minVitaminB6: Option[BigDecimal], maxVitaminB6: Option[BigDecimal], minVitaminB12: Option[BigDecimal], maxVitaminB12: Option[BigDecimal], minFiber: Option[BigDecimal], maxFiber: Option[BigDecimal], minFolate: Option[BigDecimal], maxFolate: Option[BigDecimal], minFolicAcid: Option[BigDecimal], maxFolicAcid: Option[BigDecimal], minIodine: Option[BigDecimal], maxIodine: Option[BigDecimal], minIron: Option[BigDecimal], maxIron: Option[BigDecimal], minMagnesium: Option[BigDecimal], maxMagnesium: Option[BigDecimal], minManganese: Option[BigDecimal], maxManganese: Option[BigDecimal], minPhosphorus: Option[BigDecimal], maxPhosphorus: Option[BigDecimal], minPotassium: Option[BigDecimal], maxPotassium: Option[BigDecimal], minSelenium: Option[BigDecimal], maxSelenium: Option[BigDecimal], minSodium: Option[BigDecimal], maxSodium: Option[BigDecimal], minSugar: Option[BigDecimal], maxSugar: Option[BigDecimal], minZinc: Option[BigDecimal], maxZinc: Option[BigDecimal], offset: Option[Int], number: Option[Int], limitLicense: Option[Boolean], authParamapiKeyScheme: String) =>
          da.Recipes_searchRecipes(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, _type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[InlineResponse2001]
        */
        private def searchRecipesByIngredients(da: DataAccessor): Endpoint[Seq[InlineResponse2001]] =
        get("recipes" :: "findByIngredients" :: paramOption("ingredients") :: paramOption("number").map(_.map(_.toInt)) :: paramOption("limitLicense").map(_.map(_.toBoolean)) :: paramOption("ranking").map(_.map(_.toBigDecimal)) :: paramOption("ignorePantry").map(_.map(_.toBoolean)) :: param("apiKey")) { (ingredients: Option[String], number: Option[Int], limitLicense: Option[Boolean], ranking: Option[BigDecimal], ignorePantry: Option[Boolean], authParamapiKeyScheme: String) =>
          da.Recipes_searchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[InlineResponse2002]
        */
        private def searchRecipesByNutrients(da: DataAccessor): Endpoint[Seq[InlineResponse2002]] =
        get("recipes" :: "findByNutrients" :: paramOption("minCarbs").map(_.map(_.toBigDecimal)) :: paramOption("maxCarbs").map(_.map(_.toBigDecimal)) :: paramOption("minProtein").map(_.map(_.toBigDecimal)) :: paramOption("maxProtein").map(_.map(_.toBigDecimal)) :: paramOption("minCalories").map(_.map(_.toBigDecimal)) :: paramOption("maxCalories").map(_.map(_.toBigDecimal)) :: paramOption("minFat").map(_.map(_.toBigDecimal)) :: paramOption("maxFat").map(_.map(_.toBigDecimal)) :: paramOption("minAlcohol").map(_.map(_.toBigDecimal)) :: paramOption("maxAlcohol").map(_.map(_.toBigDecimal)) :: paramOption("minCaffeine").map(_.map(_.toBigDecimal)) :: paramOption("maxCaffeine").map(_.map(_.toBigDecimal)) :: paramOption("minCopper").map(_.map(_.toBigDecimal)) :: paramOption("maxCopper").map(_.map(_.toBigDecimal)) :: paramOption("minCalcium").map(_.map(_.toBigDecimal)) :: paramOption("maxCalcium").map(_.map(_.toBigDecimal)) :: paramOption("minCholine").map(_.map(_.toBigDecimal)) :: paramOption("maxCholine").map(_.map(_.toBigDecimal)) :: paramOption("minCholesterol").map(_.map(_.toBigDecimal)) :: paramOption("maxCholesterol").map(_.map(_.toBigDecimal)) :: paramOption("minFluoride").map(_.map(_.toBigDecimal)) :: paramOption("maxFluoride").map(_.map(_.toBigDecimal)) :: paramOption("minSaturatedFat").map(_.map(_.toBigDecimal)) :: paramOption("maxSaturatedFat").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminA").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminA").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminC").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminC").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminD").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminD").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminE").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminE").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminK").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminK").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB1").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB1").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB2").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB2").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB5").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB5").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB3").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB3").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB6").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB6").map(_.map(_.toBigDecimal)) :: paramOption("minVitaminB12").map(_.map(_.toBigDecimal)) :: paramOption("maxVitaminB12").map(_.map(_.toBigDecimal)) :: paramOption("minFiber").map(_.map(_.toBigDecimal)) :: paramOption("maxFiber").map(_.map(_.toBigDecimal)) :: paramOption("minFolate").map(_.map(_.toBigDecimal)) :: paramOption("maxFolate").map(_.map(_.toBigDecimal)) :: paramOption("minFolicAcid").map(_.map(_.toBigDecimal)) :: paramOption("maxFolicAcid").map(_.map(_.toBigDecimal)) :: paramOption("minIodine").map(_.map(_.toBigDecimal)) :: paramOption("maxIodine").map(_.map(_.toBigDecimal)) :: paramOption("minIron").map(_.map(_.toBigDecimal)) :: paramOption("maxIron").map(_.map(_.toBigDecimal)) :: paramOption("minMagnesium").map(_.map(_.toBigDecimal)) :: paramOption("maxMagnesium").map(_.map(_.toBigDecimal)) :: paramOption("minManganese").map(_.map(_.toBigDecimal)) :: paramOption("maxManganese").map(_.map(_.toBigDecimal)) :: paramOption("minPhosphorus").map(_.map(_.toBigDecimal)) :: paramOption("maxPhosphorus").map(_.map(_.toBigDecimal)) :: paramOption("minPotassium").map(_.map(_.toBigDecimal)) :: paramOption("maxPotassium").map(_.map(_.toBigDecimal)) :: paramOption("minSelenium").map(_.map(_.toBigDecimal)) :: paramOption("maxSelenium").map(_.map(_.toBigDecimal)) :: paramOption("minSodium").map(_.map(_.toBigDecimal)) :: paramOption("maxSodium").map(_.map(_.toBigDecimal)) :: paramOption("minSugar").map(_.map(_.toBigDecimal)) :: paramOption("maxSugar").map(_.map(_.toBigDecimal)) :: paramOption("minZinc").map(_.map(_.toBigDecimal)) :: paramOption("maxZinc").map(_.map(_.toBigDecimal)) :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: paramOption("random").map(_.map(_.toBoolean)) :: paramOption("limitLicense").map(_.map(_.toBoolean)) :: param("apiKey")) { (minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], minAlcohol: Option[BigDecimal], maxAlcohol: Option[BigDecimal], minCaffeine: Option[BigDecimal], maxCaffeine: Option[BigDecimal], minCopper: Option[BigDecimal], maxCopper: Option[BigDecimal], minCalcium: Option[BigDecimal], maxCalcium: Option[BigDecimal], minCholine: Option[BigDecimal], maxCholine: Option[BigDecimal], minCholesterol: Option[BigDecimal], maxCholesterol: Option[BigDecimal], minFluoride: Option[BigDecimal], maxFluoride: Option[BigDecimal], minSaturatedFat: Option[BigDecimal], maxSaturatedFat: Option[BigDecimal], minVitaminA: Option[BigDecimal], maxVitaminA: Option[BigDecimal], minVitaminC: Option[BigDecimal], maxVitaminC: Option[BigDecimal], minVitaminD: Option[BigDecimal], maxVitaminD: Option[BigDecimal], minVitaminE: Option[BigDecimal], maxVitaminE: Option[BigDecimal], minVitaminK: Option[BigDecimal], maxVitaminK: Option[BigDecimal], minVitaminB1: Option[BigDecimal], maxVitaminB1: Option[BigDecimal], minVitaminB2: Option[BigDecimal], maxVitaminB2: Option[BigDecimal], minVitaminB5: Option[BigDecimal], maxVitaminB5: Option[BigDecimal], minVitaminB3: Option[BigDecimal], maxVitaminB3: Option[BigDecimal], minVitaminB6: Option[BigDecimal], maxVitaminB6: Option[BigDecimal], minVitaminB12: Option[BigDecimal], maxVitaminB12: Option[BigDecimal], minFiber: Option[BigDecimal], maxFiber: Option[BigDecimal], minFolate: Option[BigDecimal], maxFolate: Option[BigDecimal], minFolicAcid: Option[BigDecimal], maxFolicAcid: Option[BigDecimal], minIodine: Option[BigDecimal], maxIodine: Option[BigDecimal], minIron: Option[BigDecimal], maxIron: Option[BigDecimal], minMagnesium: Option[BigDecimal], maxMagnesium: Option[BigDecimal], minManganese: Option[BigDecimal], maxManganese: Option[BigDecimal], minPhosphorus: Option[BigDecimal], maxPhosphorus: Option[BigDecimal], minPotassium: Option[BigDecimal], maxPotassium: Option[BigDecimal], minSelenium: Option[BigDecimal], maxSelenium: Option[BigDecimal], minSodium: Option[BigDecimal], maxSodium: Option[BigDecimal], minSugar: Option[BigDecimal], maxSugar: Option[BigDecimal], minZinc: Option[BigDecimal], maxZinc: Option[BigDecimal], offset: Option[Int], number: Option[Int], random: Option[Boolean], limitLicense: Option[Boolean], authParamapiKeyScheme: String) =>
          da.Recipes_searchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20014
        */
        private def summarizeRecipe(da: DataAccessor): Endpoint[InlineResponse20014] =
        get("recipes" :: int :: "summary" :: param("apiKey")) { (id: Int, authParamapiKeyScheme: String) =>
          da.Recipes_summarizeRecipe(id, authParamapiKeyScheme) match {
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
        post("recipes" :: "visualizeEquipment" :: headerOption("Content-Type") :: headerOption("Accept") :: param("apiKey")) { (contentType: Option[String], accept: Option[String], authParamapiKeyScheme: String) =>
          da.Recipes_visualizeEquipment(contentType, accept, authParamapiKeyScheme) match {
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
        post("recipes" :: "visualizePriceEstimator" :: headerOption("Content-Type") :: headerOption("Accept") :: paramOption("language") :: param("apiKey")) { (contentType: Option[String], accept: Option[String], language: Option[String], authParamapiKeyScheme: String) =>
          da.Recipes_visualizePriceBreakdown(contentType, accept, language, authParamapiKeyScheme) match {
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
        get("recipes" :: int :: "equipmentWidget" :: paramOption("defaultCss").map(_.map(_.toBoolean)) :: param("apiKey")) { (id: Int, defaultCss: Option[Boolean], authParamapiKeyScheme: String) =>
          da.Recipes_visualizeRecipeEquipmentByID(id, defaultCss, authParamapiKeyScheme) match {
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
        get("recipes" :: int :: "ingredientWidget" :: paramOption("defaultCss").map(_.map(_.toBoolean)) :: paramOption("measure") :: param("apiKey")) { (id: Int, defaultCss: Option[Boolean], measure: Option[String], authParamapiKeyScheme: String) =>
          da.Recipes_visualizeRecipeIngredientsByID(id, defaultCss, measure, authParamapiKeyScheme) match {
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
        post("recipes" :: "visualizeNutrition" :: headerOption("Content-Type") :: headerOption("Accept") :: paramOption("language") :: param("apiKey")) { (contentType: Option[String], accept: Option[String], language: Option[String], authParamapiKeyScheme: String) =>
          da.Recipes_visualizeRecipeNutrition(contentType, accept, language, authParamapiKeyScheme) match {
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
        get("recipes" :: int :: "nutritionWidget" :: paramOption("defaultCss").map(_.map(_.toBoolean)) :: headerOption("Accept") :: param("apiKey")) { (id: Int, defaultCss: Option[Boolean], accept: Option[String], authParamapiKeyScheme: String) =>
          da.Recipes_visualizeRecipeNutritionByID(id, defaultCss, accept, authParamapiKeyScheme) match {
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
        get("recipes" :: int :: "priceBreakdownWidget" :: paramOption("defaultCss").map(_.map(_.toBoolean)) :: param("apiKey")) { (id: Int, defaultCss: Option[Boolean], authParamapiKeyScheme: String) =>
          da.Recipes_visualizeRecipePriceBreakdownByID(id, defaultCss, authParamapiKeyScheme) match {
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
        post("recipes" :: "visualizeTaste" :: paramOption("language") :: headerOption("Content-Type") :: headerOption("Accept") :: paramOption("normalize").map(_.map(_.toBoolean)) :: paramOption("rgb") :: param("apiKey")) { (language: Option[String], contentType: Option[String], accept: Option[String], normalize: Option[Boolean], rgb: Option[String], authParamapiKeyScheme: String) =>
          da.Recipes_visualizeRecipeTaste(language, contentType, accept, normalize, rgb, authParamapiKeyScheme) match {
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
        get("recipes" :: int :: "tasteWidget" :: paramOption("normalize").map(_.map(_.toBoolean)) :: paramOption("rgb") :: param("apiKey")) { (id: Int, normalize: Option[Boolean], rgb: Option[String], authParamapiKeyScheme: String) =>
          da.Recipes_visualizeRecipeTasteByID(id, normalize, rgb, authParamapiKeyScheme) match {
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
      val file = File.createTempFile("tmpRecipesApi", null)
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
