package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param description 
 * @param name 
 * @param safetyUnderscorelevel 
 */
case class InlineResponse20028Ingredients(description: Option[Object],
                name: String,
                safetyUnderscorelevel: Option[Object]
                )

object InlineResponse20028Ingredients {
    /**
     * Creates the codec for converting InlineResponse20028Ingredients from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20028Ingredients] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20028Ingredients] = deriveEncoder
}
