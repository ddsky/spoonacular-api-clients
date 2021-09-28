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
 * @param original 
 * @param glycemicIndex 
 * @param glycemicLoad 
 */
case class InlineResponse20023Ingredients(id: Int,
                original: String,
                glycemicIndex: BigDecimal,
                glycemicLoad: BigDecimal
                )

object InlineResponse20023Ingredients {
    /**
     * Creates the codec for converting InlineResponse20023Ingredients from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20023Ingredients] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20023Ingredients] = deriveEncoder
}
