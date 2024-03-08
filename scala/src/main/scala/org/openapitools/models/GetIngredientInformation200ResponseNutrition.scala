package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.ParseIngredients200ResponseInnerNutritionCaloricBreakdown
import org.openapitools.models.ParseIngredients200ResponseInnerNutritionNutrientsInner
import org.openapitools.models.ParseIngredients200ResponseInnerNutritionPropertiesInner
import org.openapitools.models.ParseIngredients200ResponseInnerNutritionWeightPerServing

/**
 * 
 * @param nutrients 
 * @param properties 
 * @param caloricBreakdown 
 * @param weightPerServing 
 */
case class GetIngredientInformation200ResponseNutrition(nutrients: Set[ParseIngredients200ResponseInnerNutritionNutrientsInner],
                properties: Set[ParseIngredients200ResponseInnerNutritionPropertiesInner],
                caloricBreakdown: ParseIngredients200ResponseInnerNutritionCaloricBreakdown,
                weightPerServing: ParseIngredients200ResponseInnerNutritionWeightPerServing
                )

object GetIngredientInformation200ResponseNutrition {
    /**
     * Creates the codec for converting GetIngredientInformation200ResponseNutrition from and to JSON.
     */
    implicit val decoder: Decoder[GetIngredientInformation200ResponseNutrition] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetIngredientInformation200ResponseNutrition] = deriveEncoder
}
