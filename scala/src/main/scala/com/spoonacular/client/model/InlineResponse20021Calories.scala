package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20021CaloriesConfidenceRange95Percent
import java.math.BigDecimal

/**
 * 
 * @param confidenceRange95Percent 
 * @param standardDeviation 
 * @param unit 
 * @param value 
 */
case class InlineResponse20021Calories(confidenceRange95Percent: InlineResponse20021CaloriesConfidenceRange95Percent,
                standardDeviation: BigDecimal,
                unit: String,
                value: BigDecimal
                )

object InlineResponse20021Calories {
    /**
     * Creates the codec for converting InlineResponse20021Calories from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20021Calories] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20021Calories] = deriveEncoder
}
