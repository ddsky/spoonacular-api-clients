package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param id 
 * @param title 
 * @param imageType 
 */
case class InlineResponse20041Value(id: BigDecimal,
                title: String,
                imageType: String
                )

object InlineResponse20041Value {
    /**
     * Creates the codec for converting InlineResponse20041Value from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20041Value] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20041Value] = deriveEncoder
}
