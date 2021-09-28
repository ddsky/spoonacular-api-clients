package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param category 
 * @param probability 
 */
case class InlineResponse20047(category: String,
                probability: BigDecimal
                )

object InlineResponse20047 {
    /**
     * Creates the codec for converting InlineResponse20047 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20047] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20047] = deriveEncoder
}
