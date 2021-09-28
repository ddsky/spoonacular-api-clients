package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param sweetness 
 * @param saltiness 
 * @param sourness 
 * @param bitterness 
 * @param savoriness 
 * @param fattiness 
 * @param spiciness 
 */
case class InlineResponse2008(sweetness: BigDecimal,
                saltiness: BigDecimal,
                sourness: BigDecimal,
                bitterness: BigDecimal,
                savoriness: BigDecimal,
                fattiness: BigDecimal,
                spiciness: BigDecimal
                )

object InlineResponse2008 {
    /**
     * Creates the codec for converting InlineResponse2008 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2008] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2008] = deriveEncoder
}
