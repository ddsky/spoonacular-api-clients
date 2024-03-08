package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.ImageAnalysisByURL200ResponseCategory
import org.openapitools.models.ImageAnalysisByURL200ResponseNutrition
import org.openapitools.models.ImageAnalysisByURL200ResponseRecipesInner

/**
 * 
 * @param nutrition 
 * @param category 
 * @param recipes 
 */
case class ImageAnalysisByURL200Response(nutrition: ImageAnalysisByURL200ResponseNutrition,
                category: ImageAnalysisByURL200ResponseCategory,
                recipes: Set[ImageAnalysisByURL200ResponseRecipesInner]
                )

object ImageAnalysisByURL200Response {
    /**
     * Creates the codec for converting ImageAnalysisByURL200Response from and to JSON.
     */
    implicit val decoder: Decoder[ImageAnalysisByURL200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ImageAnalysisByURL200Response] = deriveEncoder
}
