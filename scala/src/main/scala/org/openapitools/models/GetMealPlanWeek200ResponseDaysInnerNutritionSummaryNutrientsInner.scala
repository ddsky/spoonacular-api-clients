package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param name 
 * @param amount 
 * @param unit 
 * @param percentDailyNeeds 
 */
case class GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner(name: String,
                amount: BigDecimal,
                unit: String,
                percentDailyNeeds: BigDecimal
                )

object GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner {
    /**
     * Creates the codec for converting GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner from and to JSON.
     */
    implicit val decoder: Decoder[GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner] = deriveEncoder
}
