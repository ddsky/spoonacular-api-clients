package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param username The username.
 * @param date The date in the format yyyy-mm-dd.
 * @param hash The private hash for the username.
 */
case class InlineObject3(username: String,
                date: String,
                hash: String
                )

object InlineObject3 {
    /**
     * Creates the codec for converting InlineObject3 from and to JSON.
     */
    implicit val decoder: Decoder[InlineObject3] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineObject3] = deriveEncoder
}
