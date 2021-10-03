package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20047RecommendedWines
import scala.collection.immutable.Seq

/**
 * 
 * @param recommendedWines 
 * @param totalFound 
 */
case class InlineResponse20047(recommendedWines: Seq[InlineResponse20047RecommendedWines],
                totalFound: Int
                )

object InlineResponse20047 {
    /**
     * Creates the codec for converting InlineResponse20047 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20047] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20047] = deriveEncoder
}
