package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param username The username.
 * @param startMinusdate The start date in the format yyyy-mm-dd.
 * @param endMinusdate The end date in the format yyyy-mm-dd.
 * @param hash The private hash for the username.
 */
case class InlineObject6(username: String,
                startMinusdate: String,
                endMinusdate: String,
                hash: String
                )

object InlineObject6 {
    /**
     * Creates the codec for converting InlineObject6 from and to JSON.
     */
    implicit val decoder: Decoder[InlineObject6] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineObject6] = deriveEncoder
}
