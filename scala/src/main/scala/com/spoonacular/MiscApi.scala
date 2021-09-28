package com.spoonacular

import java.io._
import spoonacular._
import com.spoonacular.client.model._
import java.math.BigDecimal
import com.spoonacular.client.model.InlineResponse20029
import com.spoonacular.client.model.InlineResponse20047
import com.spoonacular.client.model.InlineResponse20048
import com.spoonacular.client.model.InlineResponse20050
import com.spoonacular.client.model.InlineResponse20051
import com.spoonacular.client.model.InlineResponse20052
import com.spoonacular.client.model.InlineResponse20053
import com.spoonacular.client.model.InlineResponse20054
import com.spoonacular.client.model.InlineResponse20055
import com.spoonacular.client.model.InlineResponse20056
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
        * @return An endpoint representing a InlineResponse20050
        */
        private def detectFoodInText(da: DataAccessor): Endpoint[InlineResponse20050] =
        post("food" :: "detect" :: headerOption("Content-Type") :: param("apiKey")) { (contentType: Option[String], authParamapiKeyScheme: String) =>
          da.Misc_detectFoodInText(contentType, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20054
        */
        private def getARandomFoodJoke(da: DataAccessor): Endpoint[InlineResponse20054] =
        get("food" :: "jokes" :: "random" :: param("apiKey")) { (authParamapiKeyScheme: String) =>
          da.Misc_getARandomFoodJoke(authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20056
        */
        private def getConversationSuggests(da: DataAccessor): Endpoint[InlineResponse20056] =
        get("food" :: "converse" :: "suggest" :: param("query") :: paramOption("number").map(_.map(_.toBigDecimal)) :: param("apiKey")) { (query: String, number: Option[BigDecimal], authParamapiKeyScheme: String) =>
          da.Misc_getConversationSuggests(query, number, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20054
        */
        private def getRandomFoodTrivia(da: DataAccessor): Endpoint[InlineResponse20054] =
        get("food" :: "trivia" :: "random" :: param("apiKey")) { (authParamapiKeyScheme: String) =>
          da.Misc_getRandomFoodTrivia(authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20048
        */
        private def imageAnalysisByURL(da: DataAccessor): Endpoint[InlineResponse20048] =
        get("food" :: "images" :: "analyze" :: param("imageUrl") :: param("apiKey")) { (imageUrl: String, authParamapiKeyScheme: String) =>
          da.Misc_imageAnalysisByURL(imageUrl, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20047
        */
        private def imageClassificationByURL(da: DataAccessor): Endpoint[InlineResponse20047] =
        get("food" :: "images" :: "classify" :: param("imageUrl") :: param("apiKey")) { (imageUrl: String, authParamapiKeyScheme: String) =>
          da.Misc_imageClassificationByURL(imageUrl, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20052
        */
        private def searchAllFood(da: DataAccessor): Endpoint[InlineResponse20052] =
        get("food" :: "search" :: param("query") :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: param("apiKey")) { (query: String, offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String) =>
          da.Misc_searchAllFood(query, offset, number, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20029
        */
        private def searchCustomFoods(da: DataAccessor): Endpoint[InlineResponse20029] =
        get("food" :: "customFoods" :: "search" :: param("username") :: param("hash") :: paramOption("query") :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: param("apiKey")) { (username: String, hash: String, query: Option[String], offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String) =>
          da.Misc_searchCustomFoods(username, hash, query, offset, number, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20053
        */
        private def searchFoodVideos(da: DataAccessor): Endpoint[InlineResponse20053] =
        get("food" :: "videos" :: "search" :: paramOption("query") :: paramOption("type") :: paramOption("cuisine") :: paramOption("diet") :: paramOption("includeIngredients") :: paramOption("excludeIngredients") :: paramOption("minLength").map(_.map(_.toBigDecimal)) :: paramOption("maxLength").map(_.map(_.toBigDecimal)) :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: param("apiKey")) { (query: Option[String], _type: Option[String], cuisine: Option[String], diet: Option[String], includeIngredients: Option[String], excludeIngredients: Option[String], minLength: Option[BigDecimal], maxLength: Option[BigDecimal], offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String) =>
          da.Misc_searchFoodVideos(query, _type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20051
        */
        private def searchSiteContent(da: DataAccessor): Endpoint[InlineResponse20051] =
        get("food" :: "site" :: "search" :: param("query") :: param("apiKey")) { (query: String, authParamapiKeyScheme: String) =>
          da.Misc_searchSiteContent(query, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20055
        */
        private def talkToChatbot(da: DataAccessor): Endpoint[InlineResponse20055] =
        get("food" :: "converse" :: param("text") :: paramOption("contextId") :: param("apiKey")) { (text: String, contextId: Option[String], authParamapiKeyScheme: String) =>
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
      val file = File.createTempFile("tmpMiscApi", null)
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
