package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param username The username.
 * @param hash The private hash for the username.
 */
case class InlineObject4(username: String,
                hash: String
                )

object InlineObject4 {
    /**
     * Creates the codec for converting InlineObject4 from and to JSON.
     */
    implicit val decoder: Decoder[InlineObject4] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineObject4] = deriveEncoder
}
