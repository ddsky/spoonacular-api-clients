package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20048NutritionCalories

/**
 * 
 * @param recipesUsed 
 * @param calories 
 * @param fat 
 * @param protein 
 * @param carbs 
 */
case class InlineResponse20048Nutrition(recipesUsed: Int,
                calories: InlineResponse20048NutritionCalories,
                fat: InlineResponse20048NutritionCalories,
                protein: InlineResponse20048NutritionCalories,
                carbs: InlineResponse20048NutritionCalories
                )

object InlineResponse20048Nutrition {
    /**
     * Creates the codec for converting InlineResponse20048Nutrition from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20048Nutrition] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20048Nutrition] = deriveEncoder
}
