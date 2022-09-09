package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.GetWinePairing200ResponseProductMatchesInner
import scala.collection.immutable.Seq

/**
 * 
 * @param pairedWines 
 * @param pairingText 
 * @param productMatches 
 */
case class GetWinePairing200Response(pairedWines: Seq[String],
                pairingText: String,
                productMatches: Set[GetWinePairing200ResponseProductMatchesInner]
                )

object GetWinePairing200Response {
    /**
     * Creates the codec for converting GetWinePairing200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetWinePairing200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetWinePairing200Response] = deriveEncoder
}
