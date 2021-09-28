package com.spoonacular

import java.io._
import spoonacular._
import com.spoonacular.client.model._
import java.math.BigDecimal
import com.spoonacular.client.model.InlineObject3
import com.spoonacular.client.model.InlineObject4
import com.spoonacular.client.model.InlineObject5
import com.spoonacular.client.model.InlineObject6
import com.spoonacular.client.model.InlineObject7
import com.spoonacular.client.model.InlineObject8
import com.spoonacular.client.model.InlineResponse20037
import com.spoonacular.client.model.InlineResponse20038
import com.spoonacular.client.model.InlineResponse20039
import com.spoonacular.client.model.InlineResponse20040
import com.spoonacular.client.model.InlineResponse20041
import com.spoonacular.client.model.InlineResponse20042
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

object MealPlanningApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        addToMealPlan(da) :+:
        addToShoppingList(da) :+:
        clearMealPlanDay(da) :+:
        connectUser(da) :+:
        deleteFromMealPlan(da) :+:
        deleteFromShoppingList(da) :+:
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
        * @return An endpoint representing a Object
        */
        private def addToMealPlan(da: DataAccessor): Endpoint[Object] =
        post("mealplanner" :: string :: "items" :: param("hash") :: jsonBody[InlineObject4] :: param("apiKey")) { (username: String, hash: String, inlineObject4: InlineObject4, authParamapiKeyScheme: String) =>
          da.MealPlanning_addToMealPlan(username, hash, inlineObject4, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20041
        */
        private def addToShoppingList(da: DataAccessor): Endpoint[InlineResponse20041] =
        post("mealplanner" :: string :: "shopping-list" :: "items" :: param("hash") :: jsonBody[InlineObject7] :: param("apiKey")) { (username: String, hash: String, inlineObject7: InlineObject7, authParamapiKeyScheme: String) =>
          da.MealPlanning_addToShoppingList(username, hash, inlineObject7, authParamapiKeyScheme) match {
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
        delete("mealplanner" :: string :: "day" :: string :: param("hash") :: jsonBody[InlineObject3] :: param("apiKey")) { (username: String, date: String, hash: String, inlineObject3: InlineObject3, authParamapiKeyScheme: String) =>
          da.MealPlanning_clearMealPlanDay(username, date, hash, inlineObject3, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20042
        */
        private def connectUser(da: DataAccessor): Endpoint[InlineResponse20042] =
        post("users" :: "connect" :: jsonBody[Object] :: param("apiKey")) { (body: Object, authParamapiKeyScheme: String) =>
          da.MealPlanning_connectUser(body, authParamapiKeyScheme) match {
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
        delete("mealplanner" :: string :: "items" :: bigdecimal :: param("hash") :: jsonBody[InlineObject5] :: param("apiKey")) { (username: String, id: BigDecimal, hash: String, inlineObject5: InlineObject5, authParamapiKeyScheme: String) =>
          da.MealPlanning_deleteFromMealPlan(username, id, hash, inlineObject5, authParamapiKeyScheme) match {
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
        delete("mealplanner" :: string :: "shopping-list" :: "items" :: int :: param("hash") :: jsonBody[InlineObject8] :: param("apiKey")) { (username: String, id: Int, hash: String, inlineObject8: InlineObject8, authParamapiKeyScheme: String) =>
          da.MealPlanning_deleteFromShoppingList(username, id, hash, inlineObject8, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20037
        */
        private def generateMealPlan(da: DataAccessor): Endpoint[InlineResponse20037] =
        get("mealplanner" :: "generate" :: paramOption("timeFrame") :: paramOption("targetCalories").map(_.map(_.toBigDecimal)) :: paramOption("diet") :: paramOption("exclude") :: param("apiKey")) { (timeFrame: Option[String], targetCalories: Option[BigDecimal], diet: Option[String], exclude: Option[String], authParamapiKeyScheme: String) =>
          da.MealPlanning_generateMealPlan(timeFrame, targetCalories, diet, exclude, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20041
        */
        private def generateShoppingList(da: DataAccessor): Endpoint[InlineResponse20041] =
        post("mealplanner" :: string :: "shopping-list" :: string :: string :: param("hash") :: jsonBody[InlineObject6] :: param("apiKey")) { (username: String, startDate: String, endDate: String, hash: String, inlineObject6: InlineObject6, authParamapiKeyScheme: String) =>
          da.MealPlanning_generateShoppingList(username, startDate, endDate, hash, inlineObject6, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20040
        */
        private def getMealPlanTemplate(da: DataAccessor): Endpoint[InlineResponse20040] =
        get("mealplanner" :: string :: "templates" :: int :: param("hash") :: param("apiKey")) { (username: String, id: Int, hash: String, authParamapiKeyScheme: String) =>
          da.MealPlanning_getMealPlanTemplate(username, id, hash, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20039
        */
        private def getMealPlanTemplates(da: DataAccessor): Endpoint[InlineResponse20039] =
        get("mealplanner" :: string :: "templates" :: param("hash") :: param("apiKey")) { (username: String, hash: String, authParamapiKeyScheme: String) =>
          da.MealPlanning_getMealPlanTemplates(username, hash, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20038
        */
        private def getMealPlanWeek(da: DataAccessor): Endpoint[InlineResponse20038] =
        get("mealplanner" :: string :: "week" :: string :: param("hash") :: param("apiKey")) { (username: String, startDate: String, hash: String, authParamapiKeyScheme: String) =>
          da.MealPlanning_getMealPlanWeek(username, startDate, hash, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20041
        */
        private def getShoppingList(da: DataAccessor): Endpoint[InlineResponse20041] =
        get("mealplanner" :: string :: "shopping-list" :: param("hash") :: param("apiKey")) { (username: String, hash: String, authParamapiKeyScheme: String) =>
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
      val file = File.createTempFile("tmpMealPlanningApi", null)
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
