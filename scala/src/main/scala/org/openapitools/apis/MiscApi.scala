package org.openapitools.apis

import java.io._
import spoonacular._
import org.openapitools.models._
import org.openapitools.models.BigDecimal
import org.openapitools.models.DetectFoodInText200Response
import org.openapitools.models.GetARandomFoodJoke200Response
import org.openapitools.models.GetConversationSuggests200Response
import org.openapitools.models.GetRandomFoodTrivia200Response
import org.openapitools.models.ImageAnalysisByURL200Response
import org.openapitools.models.ImageClassificationByURL200Response
import org.openapitools.models.SearchAllFood200Response
import org.openapitools.models.SearchCustomFoods200Response
import org.openapitools.models.SearchFoodVideos200Response
import org.openapitools.models.SearchSiteContent200Response
import org.openapitools.models.TalkToChatbot200Response
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

object MiscApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        detectFoodInText(da) :+:
        getARandomFoodJoke(da) :+:
        getConversationSuggests(da) :+:
        getRandomFoodTrivia(da) :+:
        imageAnalysisByURL(da) :+:
        imageClassificationByURL(da) :+:
        searchAllFood(da) :+:
        searchCustomFoods(da) :+:
        searchFoodVideos(da) :+:
        searchSiteContent(da) :+:
        talkToChatbot(da)


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
        * @return An endpoint representing a DetectFoodInText200Response
        */
        private def detectFoodInText(da: DataAccessor): Endpoint[DetectFoodInText200Response] =
        post("food" :: "detect" :: string :: header("x-api-key")) { (text: String, authParamapiKeyScheme: String) =>
          da.Misc_detectFoodInText(text, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GetARandomFoodJoke200Response
        */
        private def getARandomFoodJoke(da: DataAccessor): Endpoint[GetARandomFoodJoke200Response] =
        get("food" :: "jokes" :: "random" :: header("x-api-key")) { (authParamapiKeyScheme: String) =>
          da.Misc_getARandomFoodJoke(authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GetConversationSuggests200Response
        */
        private def getConversationSuggests(da: DataAccessor): Endpoint[GetConversationSuggests200Response] =
        get("food" :: "converse" :: "suggest" :: param("query") :: paramOption("number").map(_.map(_.toBigDecimal)) :: header("x-api-key")) { (query: String, number: Option[BigDecimal], authParamapiKeyScheme: String) =>
          da.Misc_getConversationSuggests(query, number, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GetRandomFoodTrivia200Response
        */
        private def getRandomFoodTrivia(da: DataAccessor): Endpoint[GetRandomFoodTrivia200Response] =
        get("food" :: "trivia" :: "random" :: header("x-api-key")) { (authParamapiKeyScheme: String) =>
          da.Misc_getRandomFoodTrivia(authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ImageAnalysisByURL200Response
        */
        private def imageAnalysisByURL(da: DataAccessor): Endpoint[ImageAnalysisByURL200Response] =
        get("food" :: "images" :: "analyze" :: param("imageUrl") :: header("x-api-key")) { (imageUrl: String, authParamapiKeyScheme: String) =>
          da.Misc_imageAnalysisByURL(imageUrl, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ImageClassificationByURL200Response
        */
        private def imageClassificationByURL(da: DataAccessor): Endpoint[ImageClassificationByURL200Response] =
        get("food" :: "images" :: "classify" :: param("imageUrl") :: header("x-api-key")) { (imageUrl: String, authParamapiKeyScheme: String) =>
          da.Misc_imageClassificationByURL(imageUrl, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchAllFood200Response
        */
        private def searchAllFood(da: DataAccessor): Endpoint[SearchAllFood200Response] =
        get("food" :: "search" :: param("query") :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: header("x-api-key")) { (query: String, offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String) =>
          da.Misc_searchAllFood(query, offset, number, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchCustomFoods200Response
        */
        private def searchCustomFoods(da: DataAccessor): Endpoint[SearchCustomFoods200Response] =
        get("food" :: "customFoods" :: "search" :: param("username") :: param("hash") :: paramOption("query") :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: header("x-api-key")) { (username: String, hash: String, query: Option[String], offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String) =>
          da.Misc_searchCustomFoods(username, hash, query, offset, number, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchFoodVideos200Response
        */
        private def searchFoodVideos(da: DataAccessor): Endpoint[SearchFoodVideos200Response] =
        get("food" :: "videos" :: "search" :: paramOption("query") :: paramOption("type") :: paramOption("cuisine") :: paramOption("diet") :: paramOption("includeIngredients") :: paramOption("excludeIngredients") :: paramOption("minLength").map(_.map(_.toBigDecimal)) :: paramOption("maxLength").map(_.map(_.toBigDecimal)) :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: header("x-api-key")) { (query: Option[String], _type: Option[String], cuisine: Option[String], diet: Option[String], includeIngredients: Option[String], excludeIngredients: Option[String], minLength: Option[BigDecimal], maxLength: Option[BigDecimal], offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String) =>
          da.Misc_searchFoodVideos(query, _type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchSiteContent200Response
        */
        private def searchSiteContent(da: DataAccessor): Endpoint[SearchSiteContent200Response] =
        get("food" :: "site" :: "search" :: param("query") :: header("x-api-key")) { (query: String, authParamapiKeyScheme: String) =>
          da.Misc_searchSiteContent(query, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a TalkToChatbot200Response
        */
        private def talkToChatbot(da: DataAccessor): Endpoint[TalkToChatbot200Response] =
        get("food" :: "converse" :: param("text") :: paramOption("contextId") :: header("x-api-key")) { (text: String, contextId: Option[String], authParamapiKeyScheme: String) =>
          da.Misc_talkToChatbot(text, contextId, authParamapiKeyScheme) match {
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
      val file = Files.createTempFile("tmpMiscApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
