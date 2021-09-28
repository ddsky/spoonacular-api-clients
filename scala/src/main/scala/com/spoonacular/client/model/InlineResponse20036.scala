package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20028Nutrition
import com.spoonacular.client.model.InlineResponse20028Servings
import java.math.BigDecimal
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
case class InlineResponse20036(id: Int,
                title: String,
                restaurantChain: String,
                nutrition: InlineResponse20028Nutrition,
                badges: Seq[String],
                breadcrumbs: Seq[String],
                generatedText: Option[String],
                imageType: String,
                likes: BigDecimal,
                servings: InlineResponse20028Servings,
                price: Option[BigDecimal],
                spoonacularScore: Option[BigDecimal]
                )

object InlineResponse20036 {
    /**
     * Creates the codec for converting InlineResponse20036 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20036] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20036] = deriveEncoder
}
