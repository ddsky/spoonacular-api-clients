package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param instructions The instructions to be analyzed.
 */
case class InlineObject5(instructions: String
                )

object InlineObject5 {
    /**
     * Creates the codec for converting InlineObject5 from and to JSON.
     */
    implicit val decoder: Decoder[InlineObject5] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineObject5] = deriveEncoder
}
