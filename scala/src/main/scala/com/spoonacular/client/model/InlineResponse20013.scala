package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20013Ingredients1
import com.spoonacular.client.model.InlineResponse20013ParsedInstructions
import scala.collection.immutable.Seq

/**
 * 
 * @param parsedInstructions 
 * @param ingredients 
 * @param equipment 
 */
case class InlineResponse20013(parsedInstructions: Seq[InlineResponse20013ParsedInstructions],
                ingredients: Seq[InlineResponse20013Ingredients1],
                equipment: Seq[InlineResponse20013Ingredients1]
                )

object InlineResponse20013 {
    /**
     * Creates the codec for converting InlineResponse20013 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20013] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20013] = deriveEncoder
}
