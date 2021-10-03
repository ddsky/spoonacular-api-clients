package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param username The username.
 * @param id The shopping list item id.
 * @param hash The private hash for the username.
 */
case class InlineObject7(username: String,
                id: BigDecimal,
                hash: String
                )

object InlineObject7 {
    /**
     * Creates the codec for converting InlineObject7 from and to JSON.
     */
    implicit val decoder: Decoder[InlineObject7] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineObject7] = deriveEncoder
}
