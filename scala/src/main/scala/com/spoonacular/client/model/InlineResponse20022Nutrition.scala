package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.RecipesParseIngredientsNutritionCaloricBreakdown
import com.spoonacular.client.model.RecipesParseIngredientsNutritionNutrients
import com.spoonacular.client.model.RecipesParseIngredientsNutritionProperties
import com.spoonacular.client.model.RecipesParseIngredientsNutritionWeightPerServing
import scala.collection.immutable.Seq

/**
 * 
 * @param nutrients 
 * @param properties 
 * @param caloricBreakdown 
 * @param weightPerServing 
 */
case class InlineResponse20022Nutrition(nutrients: Seq[RecipesParseIngredientsNutritionNutrients],
                properties: Seq[RecipesParseIngredientsNutritionProperties],
                caloricBreakdown: RecipesParseIngredientsNutritionCaloricBreakdown,
                weightPerServing: RecipesParseIngredientsNutritionWeightPerServing
                )

object InlineResponse20022Nutrition {
    /**
     * Creates the codec for converting InlineResponse20022Nutrition from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20022Nutrition] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20022Nutrition] = deriveEncoder
}
