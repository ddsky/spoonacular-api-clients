package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param answer 
 * @param image 
 */
case class QuickAnswer200Response(answer: String,
                image: String
                )

object QuickAnswer200Response {
    /**
     * Creates the codec for converting QuickAnswer200Response from and to JSON.
     */
    implicit val decoder: Decoder[QuickAnswer200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[QuickAnswer200Response] = deriveEncoder
}
