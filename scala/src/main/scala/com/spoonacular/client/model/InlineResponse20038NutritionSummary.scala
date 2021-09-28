package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20038NutritionSummaryNutrients
import scala.collection.immutable.Seq

/**
 * 
 * @param nutrients 
 */
case class InlineResponse20038NutritionSummary(nutrients: Seq[InlineResponse20038NutritionSummaryNutrients]
                )

object InlineResponse20038NutritionSummary {
    /**
     * Creates the codec for converting InlineResponse20038NutritionSummary from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20038NutritionSummary] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20038NutritionSummary] = deriveEncoder
}
