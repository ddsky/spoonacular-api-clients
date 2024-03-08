package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal
import org.openapitools.models.GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount

/**
 * 
 * @param amount 
 * @param image 
 * @param name 
 * @param price 
 */
case class GetRecipePriceBreakdownByID200ResponseIngredientsInner(amount: Option[GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount],
                image: String,
                name: String,
                price: BigDecimal
                )

object GetRecipePriceBreakdownByID200ResponseIngredientsInner {
    /**
     * Creates the codec for converting GetRecipePriceBreakdownByID200ResponseIngredientsInner from and to JSON.
     */
    implicit val decoder: Decoder[GetRecipePriceBreakdownByID200ResponseIngredientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRecipePriceBreakdownByID200ResponseIngredientsInner] = deriveEncoder
}
