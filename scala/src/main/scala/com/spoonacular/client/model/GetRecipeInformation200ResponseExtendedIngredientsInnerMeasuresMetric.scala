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
 * @param unitLong 
 * @param unitShort 
 */
case class GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric(amount: BigDecimal,
                unitLong: String,
                unitShort: String
                )

object GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric {
    /**
     * Creates the codec for converting GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric from and to JSON.
     */
    implicit val decoder: Decoder[GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric] = deriveEncoder
}
