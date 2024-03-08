package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param text 
 */
case class GetARandomFoodJoke200Response(text: String
                )

object GetARandomFoodJoke200Response {
    /**
     * Creates the codec for converting GetARandomFoodJoke200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetARandomFoodJoke200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetARandomFoodJoke200Response] = deriveEncoder
}
