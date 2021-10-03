package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20053Results
import scala.collection.immutable.Seq

/**
 * 
 * @param name 
 * @param totalResults 
 * @param results 
 */
case class InlineResponse20053SearchResults(name: String,
                totalResults: Int,
                results: Option[Seq[InlineResponse20053Results]]
                )

object InlineResponse20053SearchResults {
    /**
     * Creates the codec for converting InlineResponse20053SearchResults from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20053SearchResults] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20053SearchResults] = deriveEncoder
}
