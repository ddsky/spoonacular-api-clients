package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param amount 
 * @param unitLong 
 * @param unitShort 
 */
case class InlineResponse2003MeasuresMetric(amount: BigDecimal,
                unitLong: String,
                unitShort: String
                )

object InlineResponse2003MeasuresMetric {
    /**
     * Creates the codec for converting InlineResponse2003MeasuresMetric from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2003MeasuresMetric] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2003MeasuresMetric] = deriveEncoder
}
