package org.openapitools.apis

import java.io._
import spoonacular._
import org.openapitools.models._
import org.openapitools.models.AutocompleteIngredientSearch200ResponseInner
import org.openapitools.models.BigDecimal
import org.openapitools.models.ComputeIngredientAmount200Response
import java.io.File
import org.openapitools.models.GetIngredientInformation200Response
import org.openapitools.models.GetIngredientSubstitutes200Response
import org.openapitools.models.IngredientSearch200Response
import org.openapitools.models.MapIngredientsToGroceryProducts200ResponseInner
import org.openapitools.models.MapIngredientsToGroceryProductsRequest
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
import java.nio.file.Files
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
        * @return An endpoint representing a Set[AutocompleteIngredientSearch200ResponseInner]
        */
        private def autocompleteIngredientSearch(da: DataAccessor): Endpoint[Set[AutocompleteIngredientSearch200ResponseInner]] =
        get("food" :: "ingredients" :: "autocomplete" :: paramOption("query") :: paramOption("number").map(_.map(_.toInt)) :: paramOption("metaInformation").map(_.map(_.toBoolean)) :: paramOption("intolerances") :: paramOption("language") :: header("x-api-key")) { (query: Option[String], number: Option[Int], metaInformation: Option[Boolean], intolerances: Option[String], language: Option[String], authParamapiKeyScheme: String) =>
          da.Ingredients_autocompleteIngredientSearch(query, number, metaInformation, intolerances, language, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ComputeIngredientAmount200Response
        */
        private def computeIngredientAmount(da: DataAccessor): Endpoint[ComputeIngredientAmount200Response] =
        get("food" :: "ingredients" :: bigdecimal :: "amount" :: param("nutrient") :: param("target").map(_.toBigDecimal) :: paramOption("unit") :: header("x-api-key")) { (id: BigDecimal, nutrient: String, target: BigDecimal, unit: Option[String], authParamapiKeyScheme: String) =>
          da.Ingredients_computeIngredientAmount(id, nutrient, target, unit, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GetIngredientInformation200Response
        */
        private def getIngredientInformation(da: DataAccessor): Endpoint[GetIngredientInformation200Response] =
        get("food" :: "ingredients" :: int :: "information" :: paramOption("amount").map(_.map(_.toBigDecimal)) :: paramOption("unit") :: header("x-api-key")) { (id: Int, amount: Option[BigDecimal], unit: Option[String], authParamapiKeyScheme: String) =>
          da.Ingredients_getIngredientInformation(id, amount, unit, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GetIngredientSubstitutes200Response
        */
        private def getIngredientSubstitutes(da: DataAccessor): Endpoint[GetIngredientSubstitutes200Response] =
        get("food" :: "ingredients" :: "substitutes" :: param("ingredientName") :: header("x-api-key")) { (ingredientName: String, authParamapiKeyScheme: String) =>
          da.Ingredients_getIngredientSubstitutes(ingredientName, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GetIngredientSubstitutes200Response
        */
        private def getIngredientSubstitutesByID(da: DataAccessor): Endpoint[GetIngredientSubstitutes200Response] =
        get("food" :: "ingredients" :: int :: "substitutes" :: header("x-api-key")) { (id: Int, authParamapiKeyScheme: String) =>
          da.Ingredients_getIngredientSubstitutesByID(id, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a IngredientSearch200Response
        */
        private def ingredientSearch(da: DataAccessor): Endpoint[IngredientSearch200Response] =
        get("food" :: "ingredients" :: "search" :: paramOption("query") :: paramOption("addChildren").map(_.map(_.toBoolean)) :: paramOption("minProteinPercent").map(_.map(_.toBigDecimal)) :: paramOption("maxProteinPercent").map(_.map(_.toBigDecimal)) :: paramOption("minFatPercent").map(_.map(_.toBigDecimal)) :: paramOption("maxFatPercent").map(_.map(_.toBigDecimal)) :: paramOption("minCarbsPercent").map(_.map(_.toBigDecimal)) :: paramOption("maxCarbsPercent").map(_.map(_.toBigDecimal)) :: paramOption("metaInformation").map(_.map(_.toBoolean)) :: paramOption("intolerances") :: paramOption("sort") :: paramOption("sortDirection") :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: paramOption("language") :: header("x-api-key")) { (query: Option[String], addChildren: Option[Boolean], minProteinPercent: Option[BigDecimal], maxProteinPercent: Option[BigDecimal], minFatPercent: Option[BigDecimal], maxFatPercent: Option[BigDecimal], minCarbsPercent: Option[BigDecimal], maxCarbsPercent: Option[BigDecimal], metaInformation: Option[Boolean], intolerances: Option[String], sort: Option[String], sortDirection: Option[String], offset: Option[Int], number: Option[Int], language: Option[String], authParamapiKeyScheme: String) =>
          da.Ingredients_ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number, language, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a File
        */
        private def ingredientsByIDImage(da: DataAccessor): Endpoint[File] =
        get("recipes" :: bigdecimal :: "ingredientWidget.png" :: paramOption("measure") :: header("x-api-key")) { (id: BigDecimal, measure: Option[String], authParamapiKeyScheme: String) =>
          da.Ingredients_ingredientsByIDImage(id, measure, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Set[MapIngredientsToGroceryProducts200ResponseInner]
        */
        private def mapIngredientsToGroceryProducts(da: DataAccessor): Endpoint[Set[MapIngredientsToGroceryProducts200ResponseInner]] =
        post("food" :: "ingredients" :: "map" :: jsonBody[MapIngredientsToGroceryProductsRequest] :: header("x-api-key")) { (mapIngredientsToGroceryProductsRequest: MapIngredientsToGroceryProductsRequest, authParamapiKeyScheme: String) =>
          da.Ingredients_mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest, authParamapiKeyScheme) match {
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
        post("recipes" :: "visualizeIngredients" :: string :: bigdecimal :: paramOption("language") :: paramOption("measure") :: paramOption("view") :: paramOption("defaultCss").map(_.map(_.toBoolean)) :: paramOption("showBacklink").map(_.map(_.toBoolean)) :: header("x-api-key")) { (ingredientList: String, servings: BigDecimal, language: Option[String], measure: Option[String], view: Option[String], defaultCss: Option[Boolean], showBacklink: Option[Boolean], authParamapiKeyScheme: String) =>
          da.Ingredients_visualizeIngredients(ingredientList, servings, language, measure, view, defaultCss, showBacklink, authParamapiKeyScheme) match {
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
      val file = Files.createTempFile("tmpIngredientsApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
