package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20046RecommendedWines
import scala.collection.immutable.Seq

/**
 * 
 * @param recommendedWines 
 * @param totalFound 
 */
case class InlineResponse20046(recommendedWines: Seq[InlineResponse20046RecommendedWines],
                totalFound: Int
                )

object InlineResponse20046 {
    /**
     * Creates the codec for converting InlineResponse20046 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20046] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20046] = deriveEncoder
}
