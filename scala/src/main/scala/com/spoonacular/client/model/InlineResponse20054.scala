package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param text 
 */
case class InlineResponse20054(text: String
                )

object InlineResponse20054 {
    /**
     * Creates the codec for converting InlineResponse20054 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20054] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20054] = deriveEncoder
}
