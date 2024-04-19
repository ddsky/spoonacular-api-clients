package org.openapitools.apis

import java.io._
import spoonacular._
import org.openapitools.models._
import org.openapitools.models.AddMealPlanTemplate200Response
import org.openapitools.models.AddToMealPlanRequest
import org.openapitools.models.AddToShoppingListRequest
import org.openapitools.models.BigDecimal
import org.openapitools.models.ConnectUser200Response
import org.openapitools.models.ConnectUserRequest
import org.openapitools.models.GenerateMealPlan200Response
import org.openapitools.models.GenerateShoppingList200Response
import org.openapitools.models.GetMealPlanTemplate200Response
import org.openapitools.models.GetMealPlanTemplates200Response
import org.openapitools.models.GetMealPlanWeek200Response
import org.openapitools.models.GetShoppingList200Response
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

object MealPlanningApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        addMealPlanTemplate(da) :+:
        addToMealPlan(da) :+:
        addToShoppingList(da) :+:
        clearMealPlanDay(da) :+:
        connectUser(da) :+:
        deleteFromMealPlan(da) :+:
        deleteFromShoppingList(da) :+:
        deleteMealPlanTemplate(da) :+:
        generateMealPlan(da) :+:
        generateShoppingList(da) :+:
        getMealPlanTemplate(da) :+:
        getMealPlanTemplates(da) :+:
        getMealPlanWeek(da) :+:
        getShoppingList(da)


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
        * @return An endpoint representing a AddMealPlanTemplate200Response
        */
        private def addMealPlanTemplate(da: DataAccessor): Endpoint[AddMealPlanTemplate200Response] =
        post("mealplanner" :: string :: "templates" :: param("hash") :: header("x-api-key")) { (username: String, hash: String, authParamapiKeyScheme: String) =>
          da.MealPlanning_addMealPlanTemplate(username, hash, authParamapiKeyScheme) match {
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
        private def addToMealPlan(da: DataAccessor): Endpoint[Object] =
        post("mealplanner" :: string :: "items" :: param("hash") :: jsonBody[AddToMealPlanRequest] :: header("x-api-key")) { (username: String, hash: String, addToMealPlanRequest: AddToMealPlanRequest, authParamapiKeyScheme: String) =>
          da.MealPlanning_addToMealPlan(username, hash, addToMealPlanRequest, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GenerateShoppingList200Response
        */
        private def addToShoppingList(da: DataAccessor): Endpoint[GenerateShoppingList200Response] =
        post("mealplanner" :: string :: "shopping-list" :: "items" :: param("hash") :: jsonBody[AddToShoppingListRequest] :: header("x-api-key")) { (username: String, hash: String, addToShoppingListRequest: AddToShoppingListRequest, authParamapiKeyScheme: String) =>
          da.MealPlanning_addToShoppingList(username, hash, addToShoppingListRequest, authParamapiKeyScheme) match {
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
        delete("mealplanner" :: string :: "day" :: string :: param("hash") :: header("x-api-key")) { (username: String, date: String, hash: String, authParamapiKeyScheme: String) =>
          da.MealPlanning_clearMealPlanDay(username, date, hash, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ConnectUser200Response
        */
        private def connectUser(da: DataAccessor): Endpoint[ConnectUser200Response] =
        post("users" :: "connect" :: jsonBody[ConnectUserRequest] :: header("x-api-key")) { (connectUserRequest: ConnectUserRequest, authParamapiKeyScheme: String) =>
          da.MealPlanning_connectUser(connectUserRequest, authParamapiKeyScheme) match {
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
        delete("mealplanner" :: string :: "items" :: bigdecimal :: param("hash") :: header("x-api-key")) { (username: String, id: BigDecimal, hash: String, authParamapiKeyScheme: String) =>
          da.MealPlanning_deleteFromMealPlan(username, id, hash, authParamapiKeyScheme) match {
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
        delete("mealplanner" :: string :: "shopping-list" :: "items" :: int :: param("hash") :: header("x-api-key")) { (username: String, id: Int, hash: String, authParamapiKeyScheme: String) =>
          da.MealPlanning_deleteFromShoppingList(username, id, hash, authParamapiKeyScheme) match {
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
        private def deleteMealPlanTemplate(da: DataAccessor): Endpoint[Object] =
        delete("mealplanner" :: string :: "templates" :: int :: param("hash") :: header("x-api-key")) { (username: String, id: Int, hash: String, authParamapiKeyScheme: String) =>
          da.MealPlanning_deleteMealPlanTemplate(username, id, hash, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GenerateMealPlan200Response
        */
        private def generateMealPlan(da: DataAccessor): Endpoint[GenerateMealPlan200Response] =
        get("mealplanner" :: "generate" :: paramOption("timeFrame") :: paramOption("targetCalories").map(_.map(_.toBigDecimal)) :: paramOption("diet") :: paramOption("exclude") :: header("x-api-key")) { (timeFrame: Option[String], targetCalories: Option[BigDecimal], diet: Option[String], exclude: Option[String], authParamapiKeyScheme: String) =>
          da.MealPlanning_generateMealPlan(timeFrame, targetCalories, diet, exclude, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GenerateShoppingList200Response
        */
        private def generateShoppingList(da: DataAccessor): Endpoint[GenerateShoppingList200Response] =
        post("mealplanner" :: string :: "shopping-list" :: string :: string :: param("hash") :: header("x-api-key")) { (username: String, startDate: String, endDate: String, hash: String, authParamapiKeyScheme: String) =>
          da.MealPlanning_generateShoppingList(username, startDate, endDate, hash, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GetMealPlanTemplate200Response
        */
        private def getMealPlanTemplate(da: DataAccessor): Endpoint[GetMealPlanTemplate200Response] =
        get("mealplanner" :: string :: "templates" :: int :: param("hash") :: header("x-api-key")) { (username: String, id: Int, hash: String, authParamapiKeyScheme: String) =>
          da.MealPlanning_getMealPlanTemplate(username, id, hash, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GetMealPlanTemplates200Response
        */
        private def getMealPlanTemplates(da: DataAccessor): Endpoint[GetMealPlanTemplates200Response] =
        get("mealplanner" :: string :: "templates" :: param("hash") :: header("x-api-key")) { (username: String, hash: String, authParamapiKeyScheme: String) =>
          da.MealPlanning_getMealPlanTemplates(username, hash, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GetMealPlanWeek200Response
        */
        private def getMealPlanWeek(da: DataAccessor): Endpoint[GetMealPlanWeek200Response] =
        get("mealplanner" :: string :: "week" :: string :: param("hash") :: header("x-api-key")) { (username: String, startDate: String, hash: String, authParamapiKeyScheme: String) =>
          da.MealPlanning_getMealPlanWeek(username, startDate, hash, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GetShoppingList200Response
        */
        private def getShoppingList(da: DataAccessor): Endpoint[GetShoppingList200Response] =
        get("mealplanner" :: string :: "shopping-list" :: param("hash") :: header("x-api-key")) { (username: String, hash: String, authParamapiKeyScheme: String) =>
          da.MealPlanning_getShoppingList(username, hash, authParamapiKeyScheme) match {
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
      val file = Files.createTempFile("tmpMealPlanningApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
