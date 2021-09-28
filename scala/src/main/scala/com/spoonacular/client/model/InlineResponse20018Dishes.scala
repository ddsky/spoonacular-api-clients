package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param image 
 * @param name 
 */
case class InlineResponse20018Dishes(image: String,
                name: String
                )

object InlineResponse20018Dishes {
    /**
     * Creates the codec for converting InlineResponse20018Dishes from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20018Dishes] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20018Dishes] = deriveEncoder
}
