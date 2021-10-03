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
case class InlineResponse20048(category: String,
                probability: BigDecimal
                )

object InlineResponse20048 {
    /**
     * Creates the codec for converting InlineResponse20048 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20048] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20048] = deriveEncoder
}
