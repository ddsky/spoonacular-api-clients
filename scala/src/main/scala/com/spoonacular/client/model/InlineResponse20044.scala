package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20044ProductMatches
import scala.collection.immutable.Seq

/**
 * 
 * @param pairedWines 
 * @param pairingText 
 * @param productMatches 
 */
case class InlineResponse20044(pairedWines: Seq[String],
                pairingText: String,
                productMatches: Seq[InlineResponse20044ProductMatches]
                )

object InlineResponse20044 {
    /**
     * Creates the codec for converting InlineResponse20044 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20044] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20044] = deriveEncoder
}
