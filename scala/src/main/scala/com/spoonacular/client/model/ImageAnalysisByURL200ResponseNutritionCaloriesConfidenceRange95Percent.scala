package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal

/**
 * 
 * @param min 
 * @param max 
 */
case class ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent(min: BigDecimal,
                max: BigDecimal
                )

object ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent {
    /**
     * Creates the codec for converting ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent from and to JSON.
     */
    implicit val decoder: Decoder[ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent] = deriveDecoder
    implicit val encoder: ObjectEncoder[ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent] = deriveEncoder
}
