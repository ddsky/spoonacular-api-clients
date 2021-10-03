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
case class InlineResponse20049Category(name: String,
                probability: BigDecimal
                )

object InlineResponse20049Category {
    /**
     * Creates the codec for converting InlineResponse20049Category from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20049Category] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20049Category] = deriveEncoder
}
