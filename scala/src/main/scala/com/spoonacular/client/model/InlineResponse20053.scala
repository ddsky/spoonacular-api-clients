package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20053SearchResults
import scala.collection.immutable.Seq

/**
 * 
 * @param query 
 * @param totalResults 
 * @param limit 
 * @param offset 
 * @param searchResults 
 */
case class InlineResponse20053(query: String,
                totalResults: Int,
                limit: Int,
                offset: Int,
                searchResults: Seq[InlineResponse20053SearchResults]
                )

object InlineResponse20053 {
    /**
     * Creates the codec for converting InlineResponse20053 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20053] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20053] = deriveEncoder
}
