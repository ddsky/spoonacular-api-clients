package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.ImageAnalysisByURL200ResponseCategory
import com.spoonacular.client.model.ImageAnalysisByURL200ResponseNutrition
import com.spoonacular.client.model.ImageAnalysisByURL200ResponseRecipesInner
import scala.collection.immutable.Seq

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
