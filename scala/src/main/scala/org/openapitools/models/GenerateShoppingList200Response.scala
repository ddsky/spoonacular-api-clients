package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal
import org.openapitools.models.GetShoppingList200ResponseAislesInner

/**
 * 
 * @param aisles 
 * @param cost 
 * @param startDate 
 * @param endDate 
 */
case class GenerateShoppingList200Response(aisles: Set[GetShoppingList200ResponseAislesInner],
                cost: BigDecimal,
                startDate: BigDecimal,
                endDate: BigDecimal
                )

object GenerateShoppingList200Response {
    /**
     * Creates the codec for converting GenerateShoppingList200Response from and to JSON.
     */
    implicit val decoder: Decoder[GenerateShoppingList200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GenerateShoppingList200Response] = deriveEncoder
}
