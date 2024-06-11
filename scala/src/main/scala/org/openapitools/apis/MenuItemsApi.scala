package org.openapitools.apis

import java.io._
import spoonacular._
import org.openapitools.models._
import org.openapitools.models.AutocompleteMenuItemSearch200Response
import org.openapitools.models.BigDecimal
import java.io.File
import org.openapitools.models.GetMenuItemInformation200Response
import org.openapitools.models.SearchMenuItems200Response
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

object MenuItemsApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        autocompleteMenuItemSearch(da) :+:
        getMenuItemInformation(da) :+:
        menuItemNutritionByIDImage(da) :+:
        menuItemNutritionLabelImage(da) :+:
        menuItemNutritionLabelWidget(da) :+:
        searchMenuItems(da) :+:
        visualizeMenuItemNutritionByID(da)


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
        * @return An endpoint representing a AutocompleteMenuItemSearch200Response
        */
        private def autocompleteMenuItemSearch(da: DataAccessor): Endpoint[AutocompleteMenuItemSearch200Response] =
        get("food" :: "menuItems" :: "suggest" :: param("query") :: paramOption("number").map(_.map(_.toBigDecimal)) :: header("x-api-key")) { (query: String, number: Option[BigDecimal], authParamapiKeyScheme: String) =>
          da.MenuItems_autocompleteMenuItemSearch(query, number, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GetMenuItemInformation200Response
        */
        private def getMenuItemInformation(da: DataAccessor): Endpoint[GetMenuItemInformation200Response] =
        get("food" :: "menuItems" :: int :: header("x-api-key")) { (id: Int, authParamapiKeyScheme: String) =>
          da.MenuItems_getMenuItemInformation(id, authParamapiKeyScheme) match {
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
        private def menuItemNutritionByIDImage(da: DataAccessor): Endpoint[File] =
        get("food" :: "menuItems" :: bigdecimal :: "nutritionWidget.png" :: header("x-api-key")) { (id: BigDecimal, authParamapiKeyScheme: String) =>
          da.MenuItems_menuItemNutritionByIDImage(id, authParamapiKeyScheme) match {
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
        private def menuItemNutritionLabelImage(da: DataAccessor): Endpoint[File] =
        get("food" :: "menuItems" :: bigdecimal :: "nutritionLabel.png" :: paramOption("showOptionalNutrients").map(_.map(_.toBoolean)) :: paramOption("showZeroValues").map(_.map(_.toBoolean)) :: paramOption("showIngredients").map(_.map(_.toBoolean)) :: header("x-api-key")) { (id: BigDecimal, showOptionalNutrients: Option[Boolean], showZeroValues: Option[Boolean], showIngredients: Option[Boolean], authParamapiKeyScheme: String) =>
          da.MenuItems_menuItemNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients, authParamapiKeyScheme) match {
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
        private def menuItemNutritionLabelWidget(da: DataAccessor): Endpoint[String] =
        get("food" :: "menuItems" :: bigdecimal :: "nutritionLabel" :: paramOption("defaultCss").map(_.map(_.toBoolean)) :: paramOption("showOptionalNutrients").map(_.map(_.toBoolean)) :: paramOption("showZeroValues").map(_.map(_.toBoolean)) :: paramOption("showIngredients").map(_.map(_.toBoolean)) :: header("x-api-key")) { (id: BigDecimal, defaultCss: Option[Boolean], showOptionalNutrients: Option[Boolean], showZeroValues: Option[Boolean], showIngredients: Option[Boolean], authParamapiKeyScheme: String) =>
          da.MenuItems_menuItemNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchMenuItems200Response
        */
        private def searchMenuItems(da: DataAccessor): Endpoint[SearchMenuItems200Response] =
        get("food" :: "menuItems" :: "search" :: paramOption("query") :: paramOption("minCalories").map(_.map(_.toBigDecimal)) :: paramOption("maxCalories").map(_.map(_.toBigDecimal)) :: paramOption("minCarbs").map(_.map(_.toBigDecimal)) :: paramOption("maxCarbs").map(_.map(_.toBigDecimal)) :: paramOption("minProtein").map(_.map(_.toBigDecimal)) :: paramOption("maxProtein").map(_.map(_.toBigDecimal)) :: paramOption("minFat").map(_.map(_.toBigDecimal)) :: paramOption("maxFat").map(_.map(_.toBigDecimal)) :: paramOption("addMenuItemInformation").map(_.map(_.toBoolean)) :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: header("x-api-key")) { (query: Option[String], minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], addMenuItemInformation: Option[Boolean], offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String) =>
          da.MenuItems_searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addMenuItemInformation, offset, number, authParamapiKeyScheme) match {
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
        get("food" :: "menuItems" :: int :: "nutritionWidget" :: paramOption("defaultCss").map(_.map(_.toBoolean)) :: header("x-api-key")) { (id: Int, defaultCss: Option[Boolean], authParamapiKeyScheme: String) =>
          da.MenuItems_visualizeMenuItemNutritionByID(id, defaultCss, authParamapiKeyScheme) match {
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
      val file = Files.createTempFile("tmpMenuItemsApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
