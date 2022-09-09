package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.ParseIngredients200ResponseInnerNutritionCaloricBreakdown
import com.spoonacular.client.model.ParseIngredients200ResponseInnerNutritionNutrientsInner
import com.spoonacular.client.model.ParseIngredients200ResponseInnerNutritionPropertiesInner
import com.spoonacular.client.model.ParseIngredients200ResponseInnerNutritionWeightPerServing
import scala.collection.immutable.Seq

/**
 * 
 * @param nutrients 
 * @param properties 
 * @param flavonoids 
 * @param caloricBreakdown 
 * @param weightPerServing 
 */
case class ParseIngredients200ResponseInnerNutrition(nutrients: Set[ParseIngredients200ResponseInnerNutritionNutrientsInner],
                properties: Set[ParseIngredients200ResponseInnerNutritionPropertiesInner],
                flavonoids: Set[ParseIngredients200ResponseInnerNutritionPropertiesInner],
                caloricBreakdown: ParseIngredients200ResponseInnerNutritionCaloricBreakdown,
                weightPerServing: ParseIngredients200ResponseInnerNutritionWeightPerServing
                )

object ParseIngredients200ResponseInnerNutrition {
    /**
     * Creates the codec for converting ParseIngredients200ResponseInnerNutrition from and to JSON.
     */
    implicit val decoder: Decoder[ParseIngredients200ResponseInnerNutrition] = deriveDecoder
    implicit val encoder: ObjectEncoder[ParseIngredients200ResponseInnerNutrition] = deriveEncoder
}
