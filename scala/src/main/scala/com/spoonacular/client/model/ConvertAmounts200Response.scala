package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal

/**
 * 
 * @param sourceAmount 
 * @param sourceUnit 
 * @param targetAmount 
 * @param targetUnit 
 * @param answer 
 */
case class ConvertAmounts200Response(sourceAmount: BigDecimal,
                sourceUnit: String,
                targetAmount: BigDecimal,
                targetUnit: String,
                answer: String
                )

object ConvertAmounts200Response {
    /**
     * Creates the codec for converting ConvertAmounts200Response from and to JSON.
     */
    implicit val decoder: Decoder[ConvertAmounts200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ConvertAmounts200Response] = deriveEncoder
}
