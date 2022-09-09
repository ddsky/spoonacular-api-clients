package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal
import com.spoonacular.client.model.ComputeGlycemicLoad200ResponseIngredientsInner
import scala.collection.immutable.Seq

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
