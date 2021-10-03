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
case class InlineResponse20044(pairings: Seq[String],
                text: String
                )

object InlineResponse20044 {
    /**
     * Creates the codec for converting InlineResponse20044 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20044] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20044] = deriveEncoder
}
