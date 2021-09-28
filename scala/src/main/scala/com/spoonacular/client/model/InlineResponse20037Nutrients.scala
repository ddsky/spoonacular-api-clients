package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param calories 
 * @param carbohydrates 
 * @param fat 
 * @param protein 
 */
case class InlineResponse20037Nutrients(calories: BigDecimal,
                carbohydrates: BigDecimal,
                fat: BigDecimal,
                protein: BigDecimal
                )

object InlineResponse20037Nutrients {
    /**
     * Creates the codec for converting InlineResponse20037Nutrients from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20037Nutrients] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20037Nutrients] = deriveEncoder
}
