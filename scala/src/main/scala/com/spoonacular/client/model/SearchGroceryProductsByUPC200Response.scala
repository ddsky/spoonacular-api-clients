package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal
import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseIngredientsInner
import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseNutrition
import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseServings
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param title 
 * @param badges 
 * @param importantBadges 
 * @param breadcrumbs 
 * @param generatedText 
 * @param imageType 
 * @param ingredientCount 
 * @param ingredientList 
 * @param ingredients 
 * @param likes 
 * @param nutrition 
 * @param price 
 * @param servings 
 * @param spoonacularScore 
 */
case class SearchGroceryProductsByUPC200Response(id: Int,
                title: String,
                badges: Seq[String],
                importantBadges: Seq[String],
                breadcrumbs: Seq[String],
                generatedText: String,
                imageType: String,
                ingredientCount: Option[Int],
                ingredientList: String,
                ingredients: Set[SearchGroceryProductsByUPC200ResponseIngredientsInner],
                likes: BigDecimal,
                nutrition: SearchGroceryProductsByUPC200ResponseNutrition,
                price: BigDecimal,
                servings: SearchGroceryProductsByUPC200ResponseServings,
                spoonacularScore: BigDecimal
                )

object SearchGroceryProductsByUPC200Response {
    /**
     * Creates the codec for converting SearchGroceryProductsByUPC200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchGroceryProductsByUPC200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchGroceryProductsByUPC200Response] = deriveEncoder
}
