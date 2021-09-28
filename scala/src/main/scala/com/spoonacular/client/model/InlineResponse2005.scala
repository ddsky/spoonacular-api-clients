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
 * @param readyInMinutes 
 * @param servings 
 * @param sourceUrl 
 */
case class InlineResponse2005(id: Int,
                title: String,
                imageType: String,
                readyInMinutes: Int,
                servings: BigDecimal,
                sourceUrl: String
                )

object InlineResponse2005 {
    /**
     * Creates the codec for converting InlineResponse2005 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2005] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2005] = deriveEncoder
}
