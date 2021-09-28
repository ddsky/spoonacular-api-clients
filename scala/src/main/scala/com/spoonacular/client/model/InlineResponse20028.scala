package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20028Ingredients
import com.spoonacular.client.model.InlineResponse20028Nutrition
import com.spoonacular.client.model.InlineResponse20028Servings
import java.math.BigDecimal
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
case class InlineResponse20028(id: Int,
                title: String,
                badges: Seq[String],
                importantBadges: Seq[String],
                breadcrumbs: Seq[String],
                generatedText: String,
                imageType: String,
                ingredientCount: Option[Int],
                ingredientList: String,
                ingredients: Seq[InlineResponse20028Ingredients],
                likes: BigDecimal,
                nutrition: InlineResponse20028Nutrition,
                price: BigDecimal,
                servings: InlineResponse20028Servings,
                spoonacularScore: BigDecimal
                )

object InlineResponse20028 {
    /**
     * Creates the codec for converting InlineResponse20028 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20028] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20028] = deriveEncoder
}
