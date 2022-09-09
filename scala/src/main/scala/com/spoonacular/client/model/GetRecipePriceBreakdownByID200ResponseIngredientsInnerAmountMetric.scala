package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal

/**
 * 
 * @param unit 
 * @param value 
 */
case class GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric(unit: String,
                value: BigDecimal
                )

object GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric {
    /**
     * Creates the codec for converting GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric from and to JSON.
     */
    implicit val decoder: Decoder[GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric] = deriveEncoder
}
