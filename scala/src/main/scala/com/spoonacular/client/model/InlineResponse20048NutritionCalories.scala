package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20048NutritionCaloriesConfidenceRange95Percent
import java.math.BigDecimal

/**
 * 
 * @param value 
 * @param unit 
 * @param confidenceRange95Percent 
 * @param standardDeviation 
 */
case class InlineResponse20048NutritionCalories(value: BigDecimal,
                unit: String,
                confidenceRange95Percent: InlineResponse20048NutritionCaloriesConfidenceRange95Percent,
                standardDeviation: BigDecimal
                )

object InlineResponse20048NutritionCalories {
    /**
     * Creates the codec for converting InlineResponse20048NutritionCalories from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20048NutritionCalories] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20048NutritionCalories] = deriveEncoder
}
