package com.spoonacular

import java.io._
import spoonacular._
import com.spoonacular.client.model._
import java.math.BigDecimal
import com.spoonacular.client.model.InlineResponse20044
import com.spoonacular.client.model.InlineResponse20045
import com.spoonacular.client.model.InlineResponse20046
import com.spoonacular.client.model.InlineResponse20047
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

object WineApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        getDishPairingForWine(da) :+:
        getWineDescription(da) :+:
        getWinePairing(da) :+:
        getWineRecommendation(da)


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
        * @return An endpoint representing a InlineResponse20044
        */
        private def getDishPairingForWine(da: DataAccessor): Endpoint[InlineResponse20044] =
        get("food" :: "wine" :: "dishes" :: param("wine") :: param("apiKey")) { (wine: String, authParamapiKeyScheme: String) =>
          da.Wine_getDishPairingForWine(wine, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20046
        */
        private def getWineDescription(da: DataAccessor): Endpoint[InlineResponse20046] =
        get("food" :: "wine" :: "description" :: param("wine") :: param("apiKey")) { (wine: String, authParamapiKeyScheme: String) =>
          da.Wine_getWineDescription(wine, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20045
        */
        private def getWinePairing(da: DataAccessor): Endpoint[InlineResponse20045] =
        get("food" :: "wine" :: "pairing" :: param("food") :: paramOption("maxPrice").map(_.map(_.toBigDecimal)) :: param("apiKey")) { (food: String, maxPrice: Option[BigDecimal], authParamapiKeyScheme: String) =>
          da.Wine_getWinePairing(food, maxPrice, authParamapiKeyScheme) match {
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
        private def getWineRecommendation(da: DataAccessor): Endpoint[InlineResponse20047] =
        get("food" :: "wine" :: "recommendation" :: param("wine") :: paramOption("maxPrice").map(_.map(_.toBigDecimal)) :: paramOption("minRating").map(_.map(_.toBigDecimal)) :: paramOption("number").map(_.map(_.toBigDecimal)) :: param("apiKey")) { (wine: String, maxPrice: Option[BigDecimal], minRating: Option[BigDecimal], number: Option[BigDecimal], authParamapiKeyScheme: String) =>
          da.Wine_getWineRecommendation(wine, maxPrice, minRating, number, authParamapiKeyScheme) match {
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
      val file = File.createTempFile("tmpWineApi", null)
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
