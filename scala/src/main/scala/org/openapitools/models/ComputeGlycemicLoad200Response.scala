package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal
import org.openapitools.models.ComputeGlycemicLoad200ResponseIngredientsInner

/**
 * 
 * @param totalGlycemicLoad 
 * @param ingredients 
 */
case class ComputeGlycemicLoad200Response(totalGlycemicLoad: BigDecimal,
                ingredients: Set[ComputeGlycemicLoad200ResponseIngredientsInner]
                )

object ComputeGlycemicLoad200Response {
    /**
     * Creates the codec for converting ComputeGlycemicLoad200Response from and to JSON.
     */
    implicit val decoder: Decoder[ComputeGlycemicLoad200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ComputeGlycemicLoad200Response] = deriveEncoder
}
