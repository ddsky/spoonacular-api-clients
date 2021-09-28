package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param number 
 * @param size 
 * @param unit 
 */
case class InlineResponse20028Servings(number: BigDecimal,
                size: BigDecimal,
                unit: String
                )

object InlineResponse20028Servings {
    /**
     * Creates the codec for converting InlineResponse20028Servings from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20028Servings] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20028Servings] = deriveEncoder
}
