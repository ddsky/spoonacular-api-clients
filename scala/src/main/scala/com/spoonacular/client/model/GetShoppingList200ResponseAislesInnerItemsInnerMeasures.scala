package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.ParseIngredients200ResponseInnerNutritionWeightPerServing

/**
 * 
 * @param original 
 * @param metric 
 * @param us 
 */
case class GetShoppingList200ResponseAislesInnerItemsInnerMeasures(original: ParseIngredients200ResponseInnerNutritionWeightPerServing,
                metric: ParseIngredients200ResponseInnerNutritionWeightPerServing,
                us: ParseIngredients200ResponseInnerNutritionWeightPerServing
                )

object GetShoppingList200ResponseAislesInnerItemsInnerMeasures {
    /**
     * Creates the codec for converting GetShoppingList200ResponseAislesInnerItemsInnerMeasures from and to JSON.
     */
    implicit val decoder: Decoder[GetShoppingList200ResponseAislesInnerItemsInnerMeasures] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetShoppingList200ResponseAislesInnerItemsInnerMeasures] = deriveEncoder
}
