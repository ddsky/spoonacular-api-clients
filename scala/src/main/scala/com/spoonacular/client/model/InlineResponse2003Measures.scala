package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse2003MeasuresMetric

/**
 * 
 * @param metric 
 * @param us 
 */
case class InlineResponse2003Measures(metric: InlineResponse2003MeasuresMetric,
                us: InlineResponse2003MeasuresMetric
                )

object InlineResponse2003Measures {
    /**
     * Creates the codec for converting InlineResponse2003Measures from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2003Measures] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2003Measures] = deriveEncoder
}
