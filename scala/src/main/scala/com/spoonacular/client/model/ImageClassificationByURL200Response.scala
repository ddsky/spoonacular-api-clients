package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal

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
