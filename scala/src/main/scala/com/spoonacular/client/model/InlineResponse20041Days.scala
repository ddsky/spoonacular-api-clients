package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20038NutritionSummary
import com.spoonacular.client.model.InlineResponse20041Items
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
case class InlineResponse20041Days(nutritionSummary: Option[InlineResponse20038NutritionSummary],
                nutritionSummaryBreakfast: Option[InlineResponse20038NutritionSummary],
                nutritionSummaryLunch: Option[InlineResponse20038NutritionSummary],
                nutritionSummaryDinner: Option[InlineResponse20038NutritionSummary],
                day: String,
                items: Option[Seq[InlineResponse20041Items]]
                )

object InlineResponse20041Days {
    /**
     * Creates the codec for converting InlineResponse20041Days from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20041Days] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20041Days] = deriveEncoder
}
