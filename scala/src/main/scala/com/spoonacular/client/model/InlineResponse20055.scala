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
case class InlineResponse20055(text: String
                )

object InlineResponse20055 {
    /**
     * Creates the codec for converting InlineResponse20055 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20055] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20055] = deriveEncoder
}
