package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.io.File
import java.math.BigDecimal

/**
 * 
 * @param title The title of the recipe.
 * @param image The binary image of the recipe as jpg.
 * @param ingredients The ingredient list of the recipe, one ingredient per line (separate lines with \\n).
 * @param instructions The instructions to make the recipe. One step per line (separate lines with \\n).
 * @param readyInMinutes The number of minutes it takes to get the recipe on the table.
 * @param servings The number of servings the recipe makes.
 * @param mask The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\").
 * @param backgroundImage The background image (\"none\",\"background1\", or \"background2\").
 * @param author The author of the recipe.
 * @param backgroundColor The background color for the recipe card as a hex-string.
 * @param fontColor The font color for the recipe card as a hex-string.
 * @param source The source of the recipe.
 */
case class InlineObject3(title: String,
                image: File,
                ingredients: String,
                instructions: String,
                readyInMinutes: BigDecimal,
                servings: BigDecimal,
                mask: String,
                backgroundImage: String,
                author: Option[String],
                backgroundColor: Option[String],
                fontColor: Option[String],
                source: Option[String]
                )

object InlineObject3 {
    /**
     * Creates the codec for converting InlineObject3 from and to JSON.
     */
    implicit val decoder: Decoder[InlineObject3] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineObject3] = deriveEncoder
}
