package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20049NutritionCalories

/**
 * 
 * @param recipesUsed 
 * @param calories 
 * @param fat 
 * @param protein 
 * @param carbs 
 */
case class InlineResponse20049Nutrition(recipesUsed: Int,
                calories: InlineResponse20049NutritionCalories,
                fat: InlineResponse20049NutritionCalories,
                protein: InlineResponse20049NutritionCalories,
                carbs: InlineResponse20049NutritionCalories
                )

object InlineResponse20049Nutrition {
    /**
     * Creates the codec for converting InlineResponse20049Nutrition from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20049Nutrition] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20049Nutrition] = deriveEncoder
}
