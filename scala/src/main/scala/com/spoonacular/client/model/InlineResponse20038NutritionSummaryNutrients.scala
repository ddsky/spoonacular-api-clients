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
 * @param amount 
 * @param unit 
 * @param percentDailyNeeds 
 */
case class InlineResponse20038NutritionSummaryNutrients(name: String,
                amount: BigDecimal,
                unit: String,
                percentDailyNeeds: BigDecimal
                )

object InlineResponse20038NutritionSummaryNutrients {
    /**
     * Creates the codec for converting InlineResponse20038NutritionSummaryNutrients from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20038NutritionSummaryNutrients] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20038NutritionSummaryNutrients] = deriveEncoder
}
