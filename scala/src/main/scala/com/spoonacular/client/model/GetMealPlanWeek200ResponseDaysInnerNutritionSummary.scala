package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param nutrients 
 */
case class GetMealPlanWeek200ResponseDaysInnerNutritionSummary(nutrients: Set[GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner]
                )

object GetMealPlanWeek200ResponseDaysInnerNutritionSummary {
    /**
     * Creates the codec for converting GetMealPlanWeek200ResponseDaysInnerNutritionSummary from and to JSON.
     */
    implicit val decoder: Decoder[GetMealPlanWeek200ResponseDaysInnerNutritionSummary] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetMealPlanWeek200ResponseDaysInnerNutritionSummary] = deriveEncoder
}
