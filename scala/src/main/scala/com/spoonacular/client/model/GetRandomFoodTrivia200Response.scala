package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param text 
 */
case class GetRandomFoodTrivia200Response(text: String
                )

object GetRandomFoodTrivia200Response {
    /**
     * Creates the codec for converting GetRandomFoodTrivia200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetRandomFoodTrivia200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRandomFoodTrivia200Response] = deriveEncoder
}
