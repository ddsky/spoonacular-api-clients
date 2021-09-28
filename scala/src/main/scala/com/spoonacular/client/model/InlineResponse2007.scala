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
 * @param imageType 
 */
case class InlineResponse2007(id: Int,
                title: String,
                imageType: String
                )

object InlineResponse2007 {
    /**
     * Creates the codec for converting InlineResponse2007 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2007] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2007] = deriveEncoder
}
