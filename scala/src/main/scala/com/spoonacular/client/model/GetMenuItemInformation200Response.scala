package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal
import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseNutrition
import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseServings
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param title 
 * @param restaurantChain 
 * @param nutrition 
 * @param badges 
 * @param breadcrumbs 
 * @param generatedText 
 * @param imageType 
 * @param likes 
 * @param servings 
 * @param price 
 * @param spoonacularScore 
 */
case class GetMenuItemInformation200Response(id: Int,
                title: String,
                restaurantChain: String,
                nutrition: SearchGroceryProductsByUPC200ResponseNutrition,
                badges: Seq[String],
                breadcrumbs: Seq[String],
                generatedText: Option[String],
                imageType: String,
                likes: BigDecimal,
                servings: SearchGroceryProductsByUPC200ResponseServings,
                price: Option[BigDecimal],
                spoonacularScore: Option[BigDecimal]
                )

object GetMenuItemInformation200Response {
    /**
     * Creates the codec for converting GetMenuItemInformation200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetMenuItemInformation200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetMenuItemInformation200Response] = deriveEncoder
}
