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
case class InlineResponse20042Measures(original: RecipesParseIngredientsNutritionWeightPerServing,
                metric: RecipesParseIngredientsNutritionWeightPerServing,
                us: RecipesParseIngredientsNutritionWeightPerServing
                )

object InlineResponse20042Measures {
    /**
     * Creates the codec for converting InlineResponse20042Measures from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20042Measures] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20042Measures] = deriveEncoder
}
