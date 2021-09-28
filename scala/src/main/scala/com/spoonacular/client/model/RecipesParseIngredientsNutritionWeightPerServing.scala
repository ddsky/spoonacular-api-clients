package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param amount 
 * @param unit 
 */
case class RecipesParseIngredientsNutritionWeightPerServing(amount: BigDecimal,
                unit: String
                )

object RecipesParseIngredientsNutritionWeightPerServing {
    /**
     * Creates the codec for converting RecipesParseIngredientsNutritionWeightPerServing from and to JSON.
     */
    implicit val decoder: Decoder[RecipesParseIngredientsNutritionWeightPerServing] = deriveDecoder
    implicit val encoder: ObjectEncoder[RecipesParseIngredientsNutritionWeightPerServing] = deriveEncoder
}
