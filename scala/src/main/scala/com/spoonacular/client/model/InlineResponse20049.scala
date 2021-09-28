package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param answer 
 * @param image 
 */
case class InlineResponse20049(answer: String,
                image: String
                )

object InlineResponse20049 {
    /**
     * Creates the codec for converting InlineResponse20049 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20049] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20049] = deriveEncoder
}
