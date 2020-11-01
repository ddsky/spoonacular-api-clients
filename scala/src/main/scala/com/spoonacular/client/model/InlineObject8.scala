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
 * @param measure The original system of measurement, either \"metric\" or \"us\".
 * @param view How to visualize the ingredients, either \"grid\" or \"list\".
 * @param defaultCss Whether the default CSS should be added to the response.
 * @param showBacklink Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
 */
case class InlineObject8(ingredientList: String,
                servings: BigDecimal,
                measure: Option[String],
                view: Option[String],
                defaultCss: Option[Boolean],
                showBacklink: Option[Boolean]
                )

object InlineObject8 {
    /**
     * Creates the codec for converting InlineObject8 from and to JSON.
     */
    implicit val decoder: Decoder[InlineObject8] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineObject8] = deriveEncoder
}
