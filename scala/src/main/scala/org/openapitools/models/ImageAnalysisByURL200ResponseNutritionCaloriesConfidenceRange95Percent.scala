package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal

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
