package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.ImageAnalysisByURL200ResponseNutritionCalories

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
