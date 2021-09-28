package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import scala.collection.immutable.Seq

/**
 * 
 * @param parsedInstructions 
 * @param ingredients 
 * @param equipment 
 */
case class InlineResponse20016(parsedInstructions: Seq[Object],
                ingredients: Seq[Object],
                equipment: Seq[Object]
                )

object InlineResponse20016 {
    /**
     * Creates the codec for converting InlineResponse20016 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20016] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20016] = deriveEncoder
}
