package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param username 
 * @param hash 
 */
case class InlineResponse20042(username: String,
                hash: String
                )

object InlineResponse20042 {
    /**
     * Creates the codec for converting InlineResponse20042 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20042] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20042] = deriveEncoder
}
