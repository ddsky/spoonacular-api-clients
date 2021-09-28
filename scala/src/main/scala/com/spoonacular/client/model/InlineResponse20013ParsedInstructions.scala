package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20013Steps
import scala.collection.immutable.Seq

/**
 * 
 * @param name 
 * @param steps 
 */
case class InlineResponse20013ParsedInstructions(name: String,
                steps: Option[Seq[InlineResponse20013Steps]]
                )

object InlineResponse20013ParsedInstructions {
    /**
     * Creates the codec for converting InlineResponse20013ParsedInstructions from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20013ParsedInstructions] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20013ParsedInstructions] = deriveEncoder
}
