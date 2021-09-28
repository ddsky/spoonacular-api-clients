package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param id 
 * @param summary 
 * @param title 
 */
case class InlineResponse20014(id: Int,
                summary: String,
                title: String
                )

object InlineResponse20014 {
    /**
     * Creates the codec for converting InlineResponse20014 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20014] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20014] = deriveEncoder
}
