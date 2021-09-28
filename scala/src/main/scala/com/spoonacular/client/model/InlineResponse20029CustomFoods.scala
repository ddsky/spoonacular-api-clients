package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param id 
 * @param title 
 * @param servings 
 * @param imageUrl 
 * @param price 
 */
case class InlineResponse20029CustomFoods(id: Int,
                title: String,
                servings: BigDecimal,
                imageUrl: String,
                price: BigDecimal
                )

object InlineResponse20029CustomFoods {
    /**
     * Creates the codec for converting InlineResponse20029CustomFoods from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20029CustomFoods] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20029CustomFoods] = deriveEncoder
}
