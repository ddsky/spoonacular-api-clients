package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param category 
 * @param probability 
 */
case class ImageClassificationByURL200Response(category: String,
                probability: BigDecimal
                )

object ImageClassificationByURL200Response {
    /**
     * Creates the codec for converting ImageClassificationByURL200Response from and to JSON.
     */
    implicit val decoder: Decoder[ImageClassificationByURL200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ImageClassificationByURL200Response] = deriveEncoder
}
