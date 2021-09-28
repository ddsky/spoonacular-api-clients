package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse2003WinePairingProductMatches
import scala.collection.immutable.Seq

/**
 * 
 * @param pairedWines 
 * @param pairingText 
 * @param productMatches 
 */
case class InlineResponse2003WinePairing(pairedWines: Seq[String],
                pairingText: String,
                productMatches: Seq[InlineResponse2003WinePairingProductMatches]
                )

object InlineResponse2003WinePairing {
    /**
     * Creates the codec for converting InlineResponse2003WinePairing from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2003WinePairing] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2003WinePairing] = deriveEncoder
}
