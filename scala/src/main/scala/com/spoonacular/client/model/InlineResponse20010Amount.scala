package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20010AmountMetric

/**
 * 
 * @param metric 
 * @param us 
 */
case class InlineResponse20010Amount(metric: InlineResponse20010AmountMetric,
                us: InlineResponse20010AmountMetric
                )

object InlineResponse20010Amount {
    /**
     * Creates the codec for converting InlineResponse20010Amount from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20010Amount] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20010Amount] = deriveEncoder
}
