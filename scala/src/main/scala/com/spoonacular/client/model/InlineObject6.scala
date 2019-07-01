package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param ingredientList The ingredient list of the recipe, one ingredient per line.
 * @param servings The number of servings that you can make from the ingredients.
 * @param includeNutrition Whether nutrition data should be added to correctly parsed ingredients.
 */
case class InlineObject6(ingredientList: String,
                servings: BigDecimal,
                includeNutrition: Option[Boolean]
                )

object InlineObject6 {
    /**
     * Creates the codec for converting InlineObject6 from and to JSON.
     */
    implicit val decoder: Decoder[InlineObject6] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineObject6] = deriveEncoder
}
