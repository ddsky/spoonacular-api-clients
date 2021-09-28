package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import scala.collection.immutable.Seq

/**
 * 
 * @param pairings 
 * @param text 
 */
case class InlineResponse20043(pairings: Seq[String],
                text: String
                )

object InlineResponse20043 {
    /**
     * Creates the codec for converting InlineResponse20043 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20043] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20043] = deriveEncoder
}
