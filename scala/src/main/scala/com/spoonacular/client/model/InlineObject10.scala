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
case class InlineObject10(username: String,
                date: String,
                hash: String
                )

object InlineObject10 {
    /**
     * Creates the codec for converting InlineObject10 from and to JSON.
     */
    implicit val decoder: Decoder[InlineObject10] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineObject10] = deriveEncoder
}
