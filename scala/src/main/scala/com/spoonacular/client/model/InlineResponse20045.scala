package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20045ProductMatches
import scala.collection.immutable.Seq

/**
 * 
 * @param pairedWines 
 * @param pairingText 
 * @param productMatches 
 */
case class InlineResponse20045(pairedWines: Seq[String],
                pairingText: String,
                productMatches: Seq[InlineResponse20045ProductMatches]
                )

object InlineResponse20045 {
    /**
     * Creates the codec for converting InlineResponse20045 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20045] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20045] = deriveEncoder
}
