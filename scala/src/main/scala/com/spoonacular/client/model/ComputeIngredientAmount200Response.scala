package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal

/**
 * 
 * @param amount 
 * @param unit 
 */
case class ComputeIngredientAmount200Response(amount: BigDecimal,
                unit: String
                )

object ComputeIngredientAmount200Response {
    /**
     * Creates the codec for converting ComputeIngredientAmount200Response from and to JSON.
     */
    implicit val decoder: Decoder[ComputeIngredientAmount200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ComputeIngredientAmount200Response] = deriveEncoder
}
