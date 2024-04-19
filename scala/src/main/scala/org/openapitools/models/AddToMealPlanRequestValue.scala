package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.AddToMealPlanRequestValueIngredientsInner

/**
 * 
 * @param ingredients 
 */
case class AddToMealPlanRequestValue(ingredients: Set[AddToMealPlanRequestValueIngredientsInner]
                )

object AddToMealPlanRequestValue {
    /**
     * Creates the codec for converting AddToMealPlanRequestValue from and to JSON.
     */
    implicit val decoder: Decoder[AddToMealPlanRequestValue] = deriveDecoder
    implicit val encoder: ObjectEncoder[AddToMealPlanRequestValue] = deriveEncoder
}
