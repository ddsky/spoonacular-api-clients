package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param name 
 * @param amount 
 * @param unit 
 */
case class ParseIngredients200ResponseInnerNutritionPropertiesInner(name: String,
                amount: BigDecimal,
                unit: String
                )

object ParseIngredients200ResponseInnerNutritionPropertiesInner {
    /**
     * Creates the codec for converting ParseIngredients200ResponseInnerNutritionPropertiesInner from and to JSON.
     */
    implicit val decoder: Decoder[ParseIngredients200ResponseInnerNutritionPropertiesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[ParseIngredients200ResponseInnerNutritionPropertiesInner] = deriveEncoder
}
