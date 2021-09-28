package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param id 
 * @param name 
 */
case class InlineResponse20013Ingredients1(id: Int,
                name: String
                )

object InlineResponse20013Ingredients1 {
    /**
     * Creates the codec for converting InlineResponse20013Ingredients1 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20013Ingredients1] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20013Ingredients1] = deriveEncoder
}
