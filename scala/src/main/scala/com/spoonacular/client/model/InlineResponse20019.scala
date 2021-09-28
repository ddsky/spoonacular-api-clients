package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param sourceAmount 
 * @param sourceUnit 
 * @param targetAmount 
 * @param targetUnit 
 * @param answer 
 */
case class InlineResponse20019(sourceAmount: BigDecimal,
                sourceUnit: String,
                targetAmount: BigDecimal,
                targetUnit: String,
                answer: String
                )

object InlineResponse20019 {
    /**
     * Creates the codec for converting InlineResponse20019 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20019] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20019] = deriveEncoder
}
