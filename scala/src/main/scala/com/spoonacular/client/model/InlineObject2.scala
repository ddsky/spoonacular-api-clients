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
 * @param servings The number of servings.
 * @param mode The mode in which the widget should be delivered. 1 = separate views (compact), 2 = all in one view (full).
 * @param defaultCss Whether the default CSS should be added to the response.
 * @param showBacklink Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
 */
case class InlineObject2(ingredientList: String,
                servings: BigDecimal,
                mode: Option[BigDecimal],
                defaultCss: Option[Boolean],
                showBacklink: Option[Boolean]
                )

object InlineObject2 {
    /**
     * Creates the codec for converting InlineObject2 from and to JSON.
     */
    implicit val decoder: Decoder[InlineObject2] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineObject2] = deriveEncoder
}
