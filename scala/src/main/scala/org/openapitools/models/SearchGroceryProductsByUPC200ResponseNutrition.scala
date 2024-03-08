package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.ParseIngredients200ResponseInnerNutritionCaloricBreakdown
import org.openapitools.models.ParseIngredients200ResponseInnerNutritionNutrientsInner

/**
 * 
 * @param nutrients 
 * @param caloricBreakdown 
 */
case class SearchGroceryProductsByUPC200ResponseNutrition(nutrients: Set[ParseIngredients200ResponseInnerNutritionNutrientsInner],
                caloricBreakdown: ParseIngredients200ResponseInnerNutritionCaloricBreakdown
                )

object SearchGroceryProductsByUPC200ResponseNutrition {
    /**
     * Creates the codec for converting SearchGroceryProductsByUPC200ResponseNutrition from and to JSON.
     */
    implicit val decoder: Decoder[SearchGroceryProductsByUPC200ResponseNutrition] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchGroceryProductsByUPC200ResponseNutrition] = deriveEncoder
}
