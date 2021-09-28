package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.RecipesParseIngredientsNutritionCaloricBreakdown
import com.spoonacular.client.model.RecipesParseIngredientsNutritionNutrients
import scala.collection.immutable.Seq

/**
 * 
 * @param nutrients 
 * @param caloricBreakdown 
 */
case class InlineResponse20028Nutrition(nutrients: Seq[RecipesParseIngredientsNutritionNutrients],
                caloricBreakdown: RecipesParseIngredientsNutritionCaloricBreakdown
                )

object InlineResponse20028Nutrition {
    /**
     * Creates the codec for converting InlineResponse20028Nutrition from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20028Nutrition] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20028Nutrition] = deriveEncoder
}
