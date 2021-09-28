package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param unit 
 * @param value 
 */
case class InlineResponse20010AmountMetric(unit: String,
                value: BigDecimal
                )

object InlineResponse20010AmountMetric {
    /**
     * Creates the codec for converting InlineResponse20010AmountMetric from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20010AmountMetric] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20010AmountMetric] = deriveEncoder
}
