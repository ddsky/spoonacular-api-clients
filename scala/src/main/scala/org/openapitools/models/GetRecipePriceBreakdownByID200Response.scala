package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal
import org.openapitools.models.GetRecipePriceBreakdownByID200ResponseIngredientsInner

/**
 * 
 * @param ingredients 
 * @param totalCost 
 * @param totalCostPerServing 
 */
case class GetRecipePriceBreakdownByID200Response(ingredients: Set[GetRecipePriceBreakdownByID200ResponseIngredientsInner],
                totalCost: BigDecimal,
                totalCostPerServing: BigDecimal
                )

object GetRecipePriceBreakdownByID200Response {
    /**
     * Creates the codec for converting GetRecipePriceBreakdownByID200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetRecipePriceBreakdownByID200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRecipePriceBreakdownByID200Response] = deriveEncoder
}
