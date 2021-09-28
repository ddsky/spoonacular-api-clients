package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20025Results
import scala.collection.immutable.Seq

/**
 * 
 * @param results 
 * @param offset 
 * @param number 
 * @param totalResults 
 */
case class InlineResponse20025(results: Seq[InlineResponse20025Results],
                offset: Int,
                number: Int,
                totalResults: Int
                )

object InlineResponse20025 {
    /**
     * Creates the codec for converting InlineResponse20025 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20025] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20025] = deriveEncoder
}
