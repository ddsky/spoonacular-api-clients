package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20031ComparableProducts

/**
 * 
 * @param comparableProducts 
 */
case class InlineResponse20031(comparableProducts: InlineResponse20031ComparableProducts
                )

object InlineResponse20031 {
    /**
     * Creates the codec for converting InlineResponse20031 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20031] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20031] = deriveEncoder
}
