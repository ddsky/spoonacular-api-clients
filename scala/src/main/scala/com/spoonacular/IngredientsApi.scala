package com.spoonacular

import java.io._
import spoonacular._
import com.spoonacular.client.model._
import java.math.BigDecimal
import com.spoonacular.client.model.InlineObject2
import com.spoonacular.client.model.InlineResponse20022
import com.spoonacular.client.model.InlineResponse20024
import com.spoonacular.client.model.InlineResponse20025
import com.spoonacular.client.model.InlineResponse20026
import com.spoonacular.client.model.InlineResponse20034
import com.spoonacular.client.model.RecipesParseIngredientsNutritionWeightPerServing
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

object IngredientsApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        autocompleteIngredientSearch(da) :+:
        computeIngredientAmount(da) :+:
        getIngredientInformation(da) :+:
        getIngredientSubstitutes(da) :+:
        getIngredientSubstitutesByID(da) :+:
        ingredientSearch(da) :+:
        ingredientsByIDImage(da) :+:
        mapIngredientsToGroceryProducts(da) :+:
        visualizeIngredients(da)


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
        * @return An endpoint representing a Seq[InlineResponse20024]
        */
        private def autocompleteIngredientSearch(da: DataAccessor): Endpoint[Seq[InlineResponse20024]] =
        get("food" :: "ingredients" :: "autocomplete" :: paramOption("query") :: paramOption("number").map(_.map(_.toInt)) :: paramOption("metaInformation").map(_.map(_.toBoolean)) :: paramOption("intolerances") :: param("apiKey")) { (query: Option[String], number: Option[Int], metaInformation: Option[Boolean], intolerances: Option[String], authParamapiKeyScheme: String) =>
          da.Ingredients_autocompleteIngredientSearch(query, number, metaInformation, intolerances, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a RecipesParseIngredientsNutritionWeightPerServing
        */
        private def computeIngredientAmount(da: DataAccessor): Endpoint[RecipesParseIngredientsNutritionWeightPerServing] =
        get("food" :: "ingredients" :: bigdecimal :: "amount" :: param("nutrient") :: param("target").map(_.toBigDecimal) :: paramOption("unit") :: param("apiKey")) { (id: BigDecimal, nutrient: String, target: BigDecimal, unit: Option[String], authParamapiKeyScheme: String) =>
          da.Ingredients_computeIngredientAmount(id, nutrient, target, unit, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20022
        */
        private def getIngredientInformation(da: DataAccessor): Endpoint[InlineResponse20022] =
        get("food" :: "ingredients" :: int :: "information" :: paramOption("amount").map(_.map(_.toBigDecimal)) :: paramOption("unit") :: param("apiKey")) { (id: Int, amount: Option[BigDecimal], unit: Option[String], authParamapiKeyScheme: String) =>
          da.Ingredients_getIngredientInformation(id, amount, unit, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20026
        */
        private def getIngredientSubstitutes(da: DataAccessor): Endpoint[InlineResponse20026] =
        get("food" :: "ingredients" :: "substitutes" :: param("ingredientName") :: param("apiKey")) { (ingredientName: String, authParamapiKeyScheme: String) =>
          da.Ingredients_getIngredientSubstitutes(ingredientName, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20026
        */
        private def getIngredientSubstitutesByID(da: DataAccessor): Endpoint[InlineResponse20026] =
        get("food" :: "ingredients" :: int :: "substitutes" :: param("apiKey")) { (id: Int, authParamapiKeyScheme: String) =>
          da.Ingredients_getIngredientSubstitutesByID(id, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20025
        */
        private def ingredientSearch(da: DataAccessor): Endpoint[InlineResponse20025] =
        get("food" :: "ingredients" :: "search" :: paramOption("query") :: paramOption("addChildren").map(_.map(_.toBoolean)) :: paramOption("minProteinPercent").map(_.map(_.toBigDecimal)) :: paramOption("maxProteinPercent").map(_.map(_.toBigDecimal)) :: paramOption("minFatPercent").map(_.map(_.toBigDecimal)) :: paramOption("maxFatPercent").map(_.map(_.toBigDecimal)) :: paramOption("minCarbsPercent").map(_.map(_.toBigDecimal)) :: paramOption("maxCarbsPercent").map(_.map(_.toBigDecimal)) :: paramOption("metaInformation").map(_.map(_.toBoolean)) :: paramOption("intolerances") :: paramOption("sort") :: paramOption("sortDirection") :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: param("apiKey")) { (query: Option[String], addChildren: Option[Boolean], minProteinPercent: Option[BigDecimal], maxProteinPercent: Option[BigDecimal], minFatPercent: Option[BigDecimal], maxFatPercent: Option[BigDecimal], minCarbsPercent: Option[BigDecimal], maxCarbsPercent: Option[BigDecimal], metaInformation: Option[Boolean], intolerances: Option[String], sort: Option[String], sortDirection: Option[String], offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String) =>
          da.Ingredients_ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number, authParamapiKeyScheme) match {
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
          da.Ingredients_ingredientsByIDImage(id, measure, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[InlineResponse20034]
        */
        private def mapIngredientsToGroceryProducts(da: DataAccessor): Endpoint[Seq[InlineResponse20034]] =
        post("food" :: "ingredients" :: "map" :: jsonBody[InlineObject2] :: param("apiKey")) { (inlineObject2: InlineObject2, authParamapiKeyScheme: String) =>
          da.Ingredients_mapIngredientsToGroceryProducts(inlineObject2, authParamapiKeyScheme) match {
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
        post("recipes" :: "visualizeIngredients" :: headerOption("Content-Type") :: paramOption("language") :: headerOption("Accept") :: param("apiKey")) { (contentType: Option[String], language: Option[String], accept: Option[String], authParamapiKeyScheme: String) =>
          da.Ingredients_visualizeIngredients(contentType, language, accept, authParamapiKeyScheme) match {
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
      val file = File.createTempFile("tmpIngredientsApi", null)
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
