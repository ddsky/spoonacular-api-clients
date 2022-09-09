package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.GetMealPlanTemplate200ResponseDaysInnerItemsInner
import com.spoonacular.client.model.GetMealPlanWeek200ResponseDaysInnerNutritionSummary
import scala.collection.immutable.Seq

/**
 * 
 * @param nutritionSummary 
 * @param nutritionSummaryBreakfast 
 * @param nutritionSummaryLunch 
 * @param nutritionSummaryDinner 
 * @param day 
 * @param items 
 */
case class GetMealPlanTemplate200ResponseDaysInner(nutritionSummary: Option[GetMealPlanWeek200ResponseDaysInnerNutritionSummary],
                nutritionSummaryBreakfast: Option[GetMealPlanWeek200ResponseDaysInnerNutritionSummary],
                nutritionSummaryLunch: Option[GetMealPlanWeek200ResponseDaysInnerNutritionSummary],
                nutritionSummaryDinner: Option[GetMealPlanWeek200ResponseDaysInnerNutritionSummary],
                day: String,
                items: Option[Set[GetMealPlanTemplate200ResponseDaysInnerItemsInner]]
                )

object GetMealPlanTemplate200ResponseDaysInner {
    /**
     * Creates the codec for converting GetMealPlanTemplate200ResponseDaysInner from and to JSON.
     */
    implicit val decoder: Decoder[GetMealPlanTemplate200ResponseDaysInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetMealPlanTemplate200ResponseDaysInner] = deriveEncoder
}
