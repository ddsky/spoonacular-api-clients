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
case class ParseIngredients200ResponseInnerNutritionWeightPerServing(amount: BigDecimal,
                unit: String
                )

object ParseIngredients200ResponseInnerNutritionWeightPerServing {
    /**
     * Creates the codec for converting ParseIngredients200ResponseInnerNutritionWeightPerServing from and to JSON.
     */
    implicit val decoder: Decoder[ParseIngredients200ResponseInnerNutritionWeightPerServing] = deriveDecoder
    implicit val encoder: ObjectEncoder[ParseIngredients200ResponseInnerNutritionWeightPerServing] = deriveEncoder
}
