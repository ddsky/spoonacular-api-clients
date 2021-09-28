package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20038Items
import com.spoonacular.client.model.InlineResponse20038NutritionSummary
import java.math.BigDecimal
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
case class InlineResponse20038Days(nutritionSummary: Option[InlineResponse20038NutritionSummary],
                nutritionSummaryBreakfast: Option[InlineResponse20038NutritionSummary],
                nutritionSummaryLunch: Option[InlineResponse20038NutritionSummary],
                nutritionSummaryDinner: Option[InlineResponse20038NutritionSummary],
                date: BigDecimal,
                day: String,
                items: Option[Seq[InlineResponse20038Items]]
                )

object InlineResponse20038Days {
    /**
     * Creates the codec for converting InlineResponse20038Days from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20038Days] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20038Days] = deriveEncoder
}
