package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param min 
 * @param max 
 */
case class InlineResponse20049NutritionCaloriesConfidenceRange95Percent(min: BigDecimal,
                max: BigDecimal
                )

object InlineResponse20049NutritionCaloriesConfidenceRange95Percent {
    /**
     * Creates the codec for converting InlineResponse20049NutritionCaloriesConfidenceRange95Percent from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20049NutritionCaloriesConfidenceRange95Percent] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20049NutritionCaloriesConfidenceRange95Percent] = deriveEncoder
}
