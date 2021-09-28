package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param image 
 * @param include 
 * @param name 
 */
case class InlineResponse20018Ingredients(image: String,
                include: Boolean,
                name: String
                )

object InlineResponse20018Ingredients {
    /**
     * Creates the codec for converting InlineResponse20018Ingredients from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20018Ingredients] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20018Ingredients] = deriveEncoder
}
