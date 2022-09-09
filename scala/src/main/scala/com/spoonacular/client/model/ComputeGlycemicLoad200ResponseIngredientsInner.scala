package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal

/**
 * 
 * @param id 
 * @param original 
 * @param glycemicIndex 
 * @param glycemicLoad 
 */
case class ComputeGlycemicLoad200ResponseIngredientsInner(id: Int,
                original: String,
                glycemicIndex: BigDecimal,
                glycemicLoad: BigDecimal
                )

object ComputeGlycemicLoad200ResponseIngredientsInner {
    /**
     * Creates the codec for converting ComputeGlycemicLoad200ResponseIngredientsInner from and to JSON.
     */
    implicit val decoder: Decoder[ComputeGlycemicLoad200ResponseIngredientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[ComputeGlycemicLoad200ResponseIngredientsInner] = deriveEncoder
}
