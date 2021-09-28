package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param value 
 * @param unit 
 */
case class RecipesParseIngredientsEstimatedCost(value: BigDecimal,
                unit: String
                )

object RecipesParseIngredientsEstimatedCost {
    /**
     * Creates the codec for converting RecipesParseIngredientsEstimatedCost from and to JSON.
     */
    implicit val decoder: Decoder[RecipesParseIngredientsEstimatedCost] = deriveDecoder
    implicit val encoder: ObjectEncoder[RecipesParseIngredientsEstimatedCost] = deriveEncoder
}
