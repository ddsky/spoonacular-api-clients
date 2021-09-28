package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param percentProtein 
 * @param percentFat 
 * @param percentCarbs 
 */
case class RecipesParseIngredientsNutritionCaloricBreakdown(percentProtein: BigDecimal,
                percentFat: BigDecimal,
                percentCarbs: BigDecimal
                )

object RecipesParseIngredientsNutritionCaloricBreakdown {
    /**
     * Creates the codec for converting RecipesParseIngredientsNutritionCaloricBreakdown from and to JSON.
     */
    implicit val decoder: Decoder[RecipesParseIngredientsNutritionCaloricBreakdown] = deriveDecoder
    implicit val encoder: ObjectEncoder[RecipesParseIngredientsNutritionCaloricBreakdown] = deriveEncoder
}
