package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal
import com.spoonacular.client.model.GetMealPlanWeek200ResponseDaysInnerItemsInner
import com.spoonacular.client.model.GetMealPlanWeek200ResponseDaysInnerNutritionSummary
import scala.collection.immutable.Seq

/**
 * 
 * @param nutritionSummary 
 * @param nutritionSummaryBreakfast 
 * @param nutritionSummaryLunch 
 * @param nutritionSummaryDinner 
 * @param date 
 * @param day 
 * @param items 
 */
case class GetMealPlanWeek200ResponseDaysInner(nutritionSummary: Option[GetMealPlanWeek200ResponseDaysInnerNutritionSummary],
                nutritionSummaryBreakfast: Option[GetMealPlanWeek200ResponseDaysInnerNutritionSummary],
                nutritionSummaryLunch: Option[GetMealPlanWeek200ResponseDaysInnerNutritionSummary],
                nutritionSummaryDinner: Option[GetMealPlanWeek200ResponseDaysInnerNutritionSummary],
                date: BigDecimal,
                day: String,
                items: Option[Set[GetMealPlanWeek200ResponseDaysInnerItemsInner]]
                )

object GetMealPlanWeek200ResponseDaysInner {
    /**
     * Creates the codec for converting GetMealPlanWeek200ResponseDaysInner from and to JSON.
     */
    implicit val decoder: Decoder[GetMealPlanWeek200ResponseDaysInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetMealPlanWeek200ResponseDaysInner] = deriveEncoder
}
