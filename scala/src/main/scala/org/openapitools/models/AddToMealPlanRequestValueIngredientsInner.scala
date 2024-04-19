package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param name 
 */
case class AddToMealPlanRequestValueIngredientsInner(name: String
                )

object AddToMealPlanRequestValueIngredientsInner {
    /**
     * Creates the codec for converting AddToMealPlanRequestValueIngredientsInner from and to JSON.
     */
    implicit val decoder: Decoder[AddToMealPlanRequestValueIngredientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[AddToMealPlanRequestValueIngredientsInner] = deriveEncoder
}
