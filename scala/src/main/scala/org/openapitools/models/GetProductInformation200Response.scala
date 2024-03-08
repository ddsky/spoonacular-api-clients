package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.AnyType
import org.openapitools.models.BigDecimal
import org.openapitools.models.GetProductInformation200ResponseIngredientsInner
import org.openapitools.models.SearchGroceryProductsByUPC200ResponseNutrition
import org.openapitools.models.SearchGroceryProductsByUPC200ResponseServings
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param title 
 * @param breadcrumbs 
 * @param imageType 
 * @param badges 
 * @param importantBadges 
 * @param ingredientCount 
 * @param generatedText 
 * @param ingredientList 
 * @param ingredients 
 * @param likes 
 * @param aisle 
 * @param nutrition 
 * @param price 
 * @param servings 
 * @param spoonacularScore 
 */
case class GetProductInformation200Response(id: Int,
                title: String,
                breadcrumbs: Seq[String],
                imageType: String,
                badges: Seq[String],
                importantBadges: Seq[String],
                ingredientCount: Int,
                generatedText: Option[AnyType],
                ingredientList: String,
                ingredients: Seq[GetProductInformation200ResponseIngredientsInner],
                likes: BigDecimal,
                aisle: String,
                nutrition: SearchGroceryProductsByUPC200ResponseNutrition,
                price: BigDecimal,
                servings: SearchGroceryProductsByUPC200ResponseServings,
                spoonacularScore: BigDecimal
                )

object GetProductInformation200Response {
    /**
     * Creates the codec for converting GetProductInformation200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetProductInformation200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetProductInformation200Response] = deriveEncoder
}
