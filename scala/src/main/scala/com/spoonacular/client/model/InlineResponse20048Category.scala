package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param name 
 * @param probability 
 */
case class InlineResponse20048Category(name: String,
                probability: BigDecimal
                )

object InlineResponse20048Category {
    /**
     * Creates the codec for converting InlineResponse20048Category from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20048Category] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20048Category] = deriveEncoder
}
