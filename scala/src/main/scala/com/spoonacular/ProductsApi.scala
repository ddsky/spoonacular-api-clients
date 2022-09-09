package com.spoonacular

import java.io._
import org.openapitools._
import com.spoonacular.client.model._
import com.spoonacular.client.model.AutocompleteProductSearch200Response
import com.spoonacular.client.model.BigDecimal
import com.spoonacular.client.model.ClassifyGroceryProduct200Response
import com.spoonacular.client.model.ClassifyGroceryProductBulk200ResponseInner
import com.spoonacular.client.model.ClassifyGroceryProductBulkRequestInner
import com.spoonacular.client.model.ClassifyGroceryProductRequest
import com.spoonacular.client.model.GetComparableProducts200Response
import com.spoonacular.client.model.GetProductInformation200Response
import com.spoonacular.client.model.SearchGroceryProducts200Response
import com.spoonacular.client.model.SearchGroceryProductsByUPC200Response
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

object ProductsApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        autocompleteProductSearch(da) :+:
        classifyGroceryProduct(da) :+:
        classifyGroceryProductBulk(da) :+:
        getComparableProducts(da) :+:
        getProductInformation(da) :+:
        productNutritionByIDImage(da) :+:
        productNutritionLabelImage(da) :+:
        productNutritionLabelWidget(da) :+:
        searchGroceryProducts(da) :+:
        searchGroceryProductsByUPC(da) :+:
        visualizeProductNutritionByID(da)


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
        * @return An endpoint representing a AutocompleteProductSearch200Response
        */
        private def autocompleteProductSearch(da: DataAccessor): Endpoint[AutocompleteProductSearch200Response] =
        get("food" :: "products" :: "suggest" :: param("query") :: paramOption("number").map(_.map(_.toInt)) :: header("x-api-key")) { (query: String, number: Option[Int], authParamapiKeyScheme: String) =>
          da.Products_autocompleteProductSearch(query, number, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ClassifyGroceryProduct200Response
        */
        private def classifyGroceryProduct(da: DataAccessor): Endpoint[ClassifyGroceryProduct200Response] =
        post("food" :: "products" :: "classify" :: jsonBody[ClassifyGroceryProductRequest] :: paramOption("locale") :: header("x-api-key")) { (classifyGroceryProductRequest: ClassifyGroceryProductRequest, locale: Option[String], authParamapiKeyScheme: String) =>
          da.Products_classifyGroceryProduct(classifyGroceryProductRequest, locale, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Set[ClassifyGroceryProductBulk200ResponseInner]
        */
        private def classifyGroceryProductBulk(da: DataAccessor): Endpoint[Set[ClassifyGroceryProductBulk200ResponseInner]] =
        post("food" :: "products" :: "classifyBatch" :: jsonBody[Set[ClassifyGroceryProductBulkRequestInner]] :: paramOption("locale") :: header("x-api-key")) { (classifyGroceryProductBulkRequestInner: Set[ClassifyGroceryProductBulkRequestInner], locale: Option[String], authParamapiKeyScheme: String) =>
          da.Products_classifyGroceryProductBulk(classifyGroceryProductBulkRequestInner, locale, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GetComparableProducts200Response
        */
        private def getComparableProducts(da: DataAccessor): Endpoint[GetComparableProducts200Response] =
        get("food" :: "products" :: "upc" :: bigdecimal :: "comparable" :: header("x-api-key")) { (upc: BigDecimal, authParamapiKeyScheme: String) =>
          da.Products_getComparableProducts(upc, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GetProductInformation200Response
        */
        private def getProductInformation(da: DataAccessor): Endpoint[GetProductInformation200Response] =
        get("food" :: "products" :: int :: header("x-api-key")) { (id: Int, authParamapiKeyScheme: String) =>
          da.Products_getProductInformation(id, authParamapiKeyScheme) match {
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
        private def productNutritionByIDImage(da: DataAccessor): Endpoint[Object] =
        get("food" :: "products" :: bigdecimal :: "nutritionWidget.png" :: header("x-api-key")) { (id: BigDecimal, authParamapiKeyScheme: String) =>
          da.Products_productNutritionByIDImage(id, authParamapiKeyScheme) match {
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
        private def productNutritionLabelImage(da: DataAccessor): Endpoint[Object] =
        get("food" :: "products" :: bigdecimal :: "nutritionLabel.png" :: paramOption("showOptionalNutrients").map(_.map(_.toBoolean)) :: paramOption("showZeroValues").map(_.map(_.toBoolean)) :: paramOption("showIngredients").map(_.map(_.toBoolean)) :: header("x-api-key")) { (id: BigDecimal, showOptionalNutrients: Option[Boolean], showZeroValues: Option[Boolean], showIngredients: Option[Boolean], authParamapiKeyScheme: String) =>
          da.Products_productNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients, authParamapiKeyScheme) match {
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
        private def productNutritionLabelWidget(da: DataAccessor): Endpoint[String] =
        get("food" :: "products" :: bigdecimal :: "nutritionLabel" :: paramOption("defaultCss").map(_.map(_.toBoolean)) :: paramOption("showOptionalNutrients").map(_.map(_.toBoolean)) :: paramOption("showZeroValues").map(_.map(_.toBoolean)) :: paramOption("showIngredients").map(_.map(_.toBoolean)) :: header("x-api-key")) { (id: BigDecimal, defaultCss: Option[Boolean], showOptionalNutrients: Option[Boolean], showZeroValues: Option[Boolean], showIngredients: Option[Boolean], authParamapiKeyScheme: String) =>
          da.Products_productNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchGroceryProducts200Response
        */
        private def searchGroceryProducts(da: DataAccessor): Endpoint[SearchGroceryProducts200Response] =
        get("food" :: "products" :: "search" :: paramOption("query") :: paramOption("minCalories").map(_.map(_.toBigDecimal)) :: paramOption("maxCalories").map(_.map(_.toBigDecimal)) :: paramOption("minCarbs").map(_.map(_.toBigDecimal)) :: paramOption("maxCarbs").map(_.map(_.toBigDecimal)) :: paramOption("minProtein").map(_.map(_.toBigDecimal)) :: paramOption("maxProtein").map(_.map(_.toBigDecimal)) :: paramOption("minFat").map(_.map(_.toBigDecimal)) :: paramOption("maxFat").map(_.map(_.toBigDecimal)) :: paramOption("addProductInformation").map(_.map(_.toBoolean)) :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: header("x-api-key")) { (query: Option[String], minCalories: Option[BigDecimal], maxCalories: Option[BigDecimal], minCarbs: Option[BigDecimal], maxCarbs: Option[BigDecimal], minProtein: Option[BigDecimal], maxProtein: Option[BigDecimal], minFat: Option[BigDecimal], maxFat: Option[BigDecimal], addProductInformation: Option[Boolean], offset: Option[Int], number: Option[Int], authParamapiKeyScheme: String) =>
          da.Products_searchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addProductInformation, offset, number, authParamapiKeyScheme) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchGroceryProductsByUPC200Response
        */
        private def searchGroceryProductsByUPC(da: DataAccessor): Endpoint[SearchGroceryProductsByUPC200Response] =
        get("food" :: "products" :: "upc" :: bigdecimal :: header("x-api-key")) { (upc: BigDecimal, authParamapiKeyScheme: String) =>
          da.Products_searchGroceryProductsByUPC(upc, authParamapiKeyScheme) match {
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
        private def visualizeProductNutritionByID(da: DataAccessor): Endpoint[String] =
        get("food" :: "products" :: int :: "nutritionWidget" :: paramOption("defaultCss").map(_.map(_.toBoolean)) :: headerOption("Accept") :: header("x-api-key")) { (id: Int, defaultCss: Option[Boolean], accept: Option[String], authParamapiKeyScheme: String) =>
          da.Products_visualizeProductNutritionByID(id, defaultCss, accept, authParamapiKeyScheme) match {
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
      val file = Files.createTempFile("tmpProductsApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
