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
 */
case class RecipesParseIngredientsNutritionProperties(name: String,
                amount: BigDecimal,
                unit: String
                )

object RecipesParseIngredientsNutritionProperties {
    /**
     * Creates the codec for converting RecipesParseIngredientsNutritionProperties from and to JSON.
     */
    implicit val decoder: Decoder[RecipesParseIngredientsNutritionProperties] = deriveDecoder
    implicit val encoder: ObjectEncoder[RecipesParseIngredientsNutritionProperties] = deriveEncoder
}
