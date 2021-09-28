package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param servings 
 * @param id 
 * @param title 
 * @param imageType 
 */
case class InlineResponse20038Value(servings: BigDecimal,
                id: BigDecimal,
                title: String,
                imageType: String
                )

object InlineResponse20038Value {
    /**
     * Creates the codec for converting InlineResponse20038Value from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20038Value] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20038Value] = deriveEncoder
}
