package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.GetRecipeInformation200ResponseWinePairingProductMatchesInner
import scala.collection.immutable.Seq

/**
 * 
 * @param pairedWines 
 * @param pairingText 
 * @param productMatches 
 */
case class GetRecipeInformation200ResponseWinePairing(pairedWines: Seq[String],
                pairingText: String,
                productMatches: Set[GetRecipeInformation200ResponseWinePairingProductMatchesInner]
                )

object GetRecipeInformation200ResponseWinePairing {
    /**
     * Creates the codec for converting GetRecipeInformation200ResponseWinePairing from and to JSON.
     */
    implicit val decoder: Decoder[GetRecipeInformation200ResponseWinePairing] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRecipeInformation200ResponseWinePairing] = deriveEncoder
}
