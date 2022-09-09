package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal
import com.spoonacular.client.model.GetRecipePriceBreakdownByID200ResponseIngredientsInner
import scala.collection.immutable.Seq

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
