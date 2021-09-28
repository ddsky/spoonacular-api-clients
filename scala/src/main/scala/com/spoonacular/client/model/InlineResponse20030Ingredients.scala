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
case class InlineResponse20030Ingredients(description: Option[Object],
                name: String,
                safetyUnderscorelevel: Option[Object]
                )

object InlineResponse20030Ingredients {
    /**
     * Creates the codec for converting InlineResponse20030Ingredients from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20030Ingredients] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20030Ingredients] = deriveEncoder
}
