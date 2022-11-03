package com.spoonacular

import java.io._
import org.openapitools._
import com.spoonacular.client.model._
import com.spoonacular.client.model.AnalyzeRecipeRequest
import com.spoonacular.client.model.AnalyzeRecipeRequest1
import com.spoonacular.client.model.BigDecimal
import com.spoonacular.client.model.SearchRestaurants200Response
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

object DefaultApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        analyzeRecipe(da) :+:
        searchRestaurants(da)


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
        private def analyzeRecipe(da: DataAccessor): Endpoint[Object] =
        post("recipes" :: "analyze" :: jsonBody[AnalyzeRecipeRequest] :: paramOption("language") :: paramOption("includeNutrition").map(_.map(_.toBoolean)) :: paramOption("includeTaste").map(_.map(_.toBoolean)) :: header("x-api-key")) { (analyzeRecipeRequest: AnalyzeRecipeRequest, language: Option[String], includeNutrition: Option[Boolean], includeTaste: Option[Boolean], authParamapiKeyScheme: String) =>
          da.Default_analyzeRecipe(analyzeRecipeRequest, language, includeNutrition, includeTaste, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchRestaurants200Response
        */
        private def searchRestaurants(da: DataAccessor): Endpoint[SearchRestaurants200Response] =
        get("food" :: "restaurants" :: "search" :: paramOption("query") :: paramOption("lat").map(_.map(_.toBigDecimal)) :: paramOption("lng").map(_.map(_.toBigDecimal)) :: paramOption("distance").map(_.map(_.toBigDecimal)) :: paramOption("budget").map(_.map(_.toBigDecimal)) :: paramOption("cuisine") :: paramOption("min-rating").map(_.map(_.toBigDecimal)) :: paramOption("is-open").map(_.map(_.toBoolean)) :: paramOption("sort") :: paramOption("page").map(_.map(_.toBigDecimal)) :: header("x-api-key")) { (query: Option[String], lat: Option[BigDecimal], lng: Option[BigDecimal], distance: Option[BigDecimal], budget: Option[BigDecimal], cuisine: Option[String], minRating: Option[BigDecimal], isOpen: Option[Boolean], sort: Option[String], page: Option[BigDecimal], authParamapiKeyScheme: String) =>
          da.Default_searchRestaurants(query, lat, lng, distance, budget, cuisine, minRating, isOpen, sort, page, authParamapiKeyScheme) match {
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
      val file = Files.createTempFile("tmpDefaultApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
