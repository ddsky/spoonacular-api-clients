package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param text The text in which food items, such as dish names and ingredients, should be detected in.
 */
case class InlineObject14(text: String
                )

object InlineObject14 {
    /**
     * Creates the codec for converting InlineObject14 from and to JSON.
     */
    implicit val decoder: Decoder[InlineObject14] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineObject14] = deriveEncoder
}
