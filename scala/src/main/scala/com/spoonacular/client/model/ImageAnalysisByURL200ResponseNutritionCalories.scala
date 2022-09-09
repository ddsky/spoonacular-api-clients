package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal
import com.spoonacular.client.model.ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent

/**
 * 
 * @param value 
 * @param unit 
 * @param confidenceRange95Percent 
 * @param standardDeviation 
 */
case class ImageAnalysisByURL200ResponseNutritionCalories(value: BigDecimal,
                unit: String,
                confidenceRange95Percent: ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent,
                standardDeviation: BigDecimal
                )

object ImageAnalysisByURL200ResponseNutritionCalories {
    /**
     * Creates the codec for converting ImageAnalysisByURL200ResponseNutritionCalories from and to JSON.
     */
    implicit val decoder: Decoder[ImageAnalysisByURL200ResponseNutritionCalories] = deriveDecoder
    implicit val encoder: ObjectEncoder[ImageAnalysisByURL200ResponseNutritionCalories] = deriveEncoder
}
