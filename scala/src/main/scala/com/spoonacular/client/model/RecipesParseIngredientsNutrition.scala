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
 * @param flavonoids 
 * @param caloricBreakdown 
 * @param weightPerServing 
 */
case class RecipesParseIngredientsNutrition(nutrients: Seq[RecipesParseIngredientsNutritionNutrients],
                properties: Seq[RecipesParseIngredientsNutritionProperties],
                flavonoids: Seq[RecipesParseIngredientsNutritionProperties],
                caloricBreakdown: RecipesParseIngredientsNutritionCaloricBreakdown,
                weightPerServing: RecipesParseIngredientsNutritionWeightPerServing
                )

object RecipesParseIngredientsNutrition {
    /**
     * Creates the codec for converting RecipesParseIngredientsNutrition from and to JSON.
     */
    implicit val decoder: Decoder[RecipesParseIngredientsNutrition] = deriveDecoder
    implicit val encoder: ObjectEncoder[RecipesParseIngredientsNutrition] = deriveEncoder
}
