package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param url 
 */
case class InlineResponse20015(url: String
                )

object InlineResponse20015 {
    /**
     * Creates the codec for converting InlineResponse20015 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20015] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20015] = deriveEncoder
}
