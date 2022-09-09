package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.ImageAnalysisByURL200ResponseNutritionCalories

/**
 * 
 * @param recipesUsed 
 * @param calories 
 * @param fat 
 * @param protein 
 * @param carbs 
 */
case class ImageAnalysisByURL200ResponseNutrition(recipesUsed: Int,
                calories: ImageAnalysisByURL200ResponseNutritionCalories,
                fat: ImageAnalysisByURL200ResponseNutritionCalories,
                protein: ImageAnalysisByURL200ResponseNutritionCalories,
                carbs: ImageAnalysisByURL200ResponseNutritionCalories
                )

object ImageAnalysisByURL200ResponseNutrition {
    /**
     * Creates the codec for converting ImageAnalysisByURL200ResponseNutrition from and to JSON.
     */
    implicit val decoder: Decoder[ImageAnalysisByURL200ResponseNutrition] = deriveDecoder
    implicit val encoder: ObjectEncoder[ImageAnalysisByURL200ResponseNutrition] = deriveEncoder
}
