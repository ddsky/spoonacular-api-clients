package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20028Nutrition
import com.spoonacular.client.model.InlineResponse20028Servings
import com.spoonacular.client.model.InlineResponse20030Ingredients
import java.math.BigDecimal
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
case class InlineResponse20030(id: Int,
                title: String,
                breadcrumbs: Seq[String],
                imageType: String,
                badges: Seq[String],
                importantBadges: Seq[String],
                ingredientCount: Int,
                generatedText: Option[Object],
                ingredientList: String,
                ingredients: Seq[InlineResponse20030Ingredients],
                likes: BigDecimal,
                aisle: String,
                nutrition: InlineResponse20028Nutrition,
                price: BigDecimal,
                servings: InlineResponse20028Servings,
                spoonacularScore: BigDecimal
                )

object InlineResponse20030 {
    /**
     * Creates the codec for converting InlineResponse20030 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20030] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20030] = deriveEncoder
}
