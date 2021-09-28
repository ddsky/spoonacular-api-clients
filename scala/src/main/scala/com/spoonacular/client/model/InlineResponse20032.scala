package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20032Results
import scala.collection.immutable.Seq

/**
 * 
 * @param results 
 */
case class InlineResponse20032(results: Seq[InlineResponse20032Results]
                )

object InlineResponse20032 {
    /**
     * Creates the codec for converting InlineResponse20032 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20032] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20032] = deriveEncoder
}
