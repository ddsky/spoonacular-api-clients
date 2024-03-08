package org.openapitools.models

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
case class GetDishPairingForWine200Response(pairings: Seq[String],
                text: String
                )

object GetDishPairingForWine200Response {
    /**
     * Creates the codec for converting GetDishPairingForWine200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetDishPairingForWine200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetDishPairingForWine200Response] = deriveEncoder
}
