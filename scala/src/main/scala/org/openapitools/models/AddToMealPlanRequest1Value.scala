package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.AddToMealPlanRequest1ValueIngredientsInner

/**
 * 
 * @param ingredients 
 */
case class AddToMealPlanRequest1Value(ingredients: Set[AddToMealPlanRequest1ValueIngredientsInner]
                )

object AddToMealPlanRequest1Value {
    /**
     * Creates the codec for converting AddToMealPlanRequest1Value from and to JSON.
     */
    implicit val decoder: Decoder[AddToMealPlanRequest1Value] = deriveDecoder
    implicit val encoder: ObjectEncoder[AddToMealPlanRequest1Value] = deriveEncoder
}
