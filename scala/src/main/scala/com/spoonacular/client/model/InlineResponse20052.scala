package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20052SearchResults
import scala.collection.immutable.Seq

/**
 * 
 * @param query 
 * @param totalResults 
 * @param limit 
 * @param offset 
 * @param searchResults 
 */
case class InlineResponse20052(query: String,
                totalResults: Int,
                limit: Int,
                offset: Int,
                searchResults: Seq[InlineResponse20052SearchResults]
                )

object InlineResponse20052 {
    /**
     * Creates the codec for converting InlineResponse20052 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20052] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20052] = deriveEncoder
}
