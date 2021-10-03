package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param wineDescription 
 */
case class InlineResponse20046(wineDescription: String
                )

object InlineResponse20046 {
    /**
     * Creates the codec for converting InlineResponse20046 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20046] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20046] = deriveEncoder
}
