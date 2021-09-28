package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param max 
 * @param min 
 */
case class InlineResponse20021CaloriesConfidenceRange95Percent(max: BigDecimal,
                min: BigDecimal
                )

object InlineResponse20021CaloriesConfidenceRange95Percent {
    /**
     * Creates the codec for converting InlineResponse20021CaloriesConfidenceRange95Percent from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20021CaloriesConfidenceRange95Percent] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20021CaloriesConfidenceRange95Percent] = deriveEncoder
}
