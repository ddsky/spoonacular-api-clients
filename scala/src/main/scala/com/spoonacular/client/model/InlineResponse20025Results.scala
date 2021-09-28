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
 * @param image 
 */
case class InlineResponse20025Results(id: Int,
                name: String,
                image: String
                )

object InlineResponse20025Results {
    /**
     * Creates the codec for converting InlineResponse20025Results from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20025Results] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20025Results] = deriveEncoder
}
