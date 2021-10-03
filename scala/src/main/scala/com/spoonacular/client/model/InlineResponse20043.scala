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
case class InlineResponse20043(username: String,
                hash: String
                )

object InlineResponse20043 {
    /**
     * Creates the codec for converting InlineResponse20043 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20043] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20043] = deriveEncoder
}
