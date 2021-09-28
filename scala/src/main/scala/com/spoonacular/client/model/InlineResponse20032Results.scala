package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param id 
 * @param title 
 */
case class InlineResponse20032Results(id: Int,
                title: String
                )

object InlineResponse20032Results {
    /**
     * Creates the codec for converting InlineResponse20032Results from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20032Results] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20032Results] = deriveEncoder
}
