package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param name 
 * @param amount 
 * @param unit 
 * @param percentOfDailyNeeds 
 */
case class RecipesParseIngredientsNutritionNutrients(name: String,
                amount: BigDecimal,
                unit: String,
                percentOfDailyNeeds: BigDecimal
                )

object RecipesParseIngredientsNutritionNutrients {
    /**
     * Creates the codec for converting RecipesParseIngredientsNutritionNutrients from and to JSON.
     */
    implicit val decoder: Decoder[RecipesParseIngredientsNutritionNutrients] = deriveDecoder
    implicit val encoder: ObjectEncoder[RecipesParseIngredientsNutritionNutrients] = deriveEncoder
}
