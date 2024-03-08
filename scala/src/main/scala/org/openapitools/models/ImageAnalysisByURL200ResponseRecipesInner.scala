package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param id 
 * @param title 
 * @param imageType 
 * @param url 
 */
case class ImageAnalysisByURL200ResponseRecipesInner(id: Int,
                title: String,
                imageType: String,
                url: String
                )

object ImageAnalysisByURL200ResponseRecipesInner {
    /**
     * Creates the codec for converting ImageAnalysisByURL200ResponseRecipesInner from and to JSON.
     */
    implicit val decoder: Decoder[ImageAnalysisByURL200ResponseRecipesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[ImageAnalysisByURL200ResponseRecipesInner] = deriveEncoder
}
