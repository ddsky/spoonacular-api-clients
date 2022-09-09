package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.GuessNutritionByDishName200ResponseCalories

/**
 * 
 * @param calories 
 * @param carbs 
 * @param fat 
 * @param protein 
 * @param recipesUsed 
 */
case class GuessNutritionByDishName200Response(calories: GuessNutritionByDishName200ResponseCalories,
                carbs: GuessNutritionByDishName200ResponseCalories,
                fat: GuessNutritionByDishName200ResponseCalories,
                protein: GuessNutritionByDishName200ResponseCalories,
                recipesUsed: Int
                )

object GuessNutritionByDishName200Response {
    /**
     * Creates the codec for converting GuessNutritionByDishName200Response from and to JSON.
     */
    implicit val decoder: Decoder[GuessNutritionByDishName200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GuessNutritionByDishName200Response] = deriveEncoder
}
