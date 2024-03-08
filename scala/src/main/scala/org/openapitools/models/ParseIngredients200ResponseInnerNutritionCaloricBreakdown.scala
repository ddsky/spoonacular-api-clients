package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param percentProtein 
 * @param percentFat 
 * @param percentCarbs 
 */
case class ParseIngredients200ResponseInnerNutritionCaloricBreakdown(percentProtein: BigDecimal,
                percentFat: BigDecimal,
                percentCarbs: BigDecimal
                )

object ParseIngredients200ResponseInnerNutritionCaloricBreakdown {
    /**
     * Creates the codec for converting ParseIngredients200ResponseInnerNutritionCaloricBreakdown from and to JSON.
     */
    implicit val decoder: Decoder[ParseIngredients200ResponseInnerNutritionCaloricBreakdown] = deriveDecoder
    implicit val encoder: ObjectEncoder[ParseIngredients200ResponseInnerNutritionCaloricBreakdown] = deriveEncoder
}
