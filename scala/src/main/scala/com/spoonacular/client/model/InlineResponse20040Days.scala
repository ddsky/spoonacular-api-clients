package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20038NutritionSummary
import com.spoonacular.client.model.InlineResponse20040Items
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
case class InlineResponse20040Days(nutritionSummary: Option[InlineResponse20038NutritionSummary],
                nutritionSummaryBreakfast: Option[InlineResponse20038NutritionSummary],
                nutritionSummaryLunch: Option[InlineResponse20038NutritionSummary],
                nutritionSummaryDinner: Option[InlineResponse20038NutritionSummary],
                day: String,
                items: Option[Seq[InlineResponse20040Items]]
                )

object InlineResponse20040Days {
    /**
     * Creates the codec for converting InlineResponse20040Days from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20040Days] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20040Days] = deriveEncoder
}
