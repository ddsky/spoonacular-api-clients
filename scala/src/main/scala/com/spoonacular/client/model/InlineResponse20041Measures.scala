package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.RecipesParseIngredientsNutritionWeightPerServing

/**
 * 
 * @param original 
 * @param metric 
 * @param us 
 */
case class InlineResponse20041Measures(original: RecipesParseIngredientsNutritionWeightPerServing,
                metric: RecipesParseIngredientsNutritionWeightPerServing,
                us: RecipesParseIngredientsNutritionWeightPerServing
                )

object InlineResponse20041Measures {
    /**
     * Creates the codec for converting InlineResponse20041Measures from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20041Measures] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20041Measures] = deriveEncoder
}
