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
case class AddToMealPlanRequest1ValueIngredientsInner(name: String
                )

object AddToMealPlanRequest1ValueIngredientsInner {
    /**
     * Creates the codec for converting AddToMealPlanRequest1ValueIngredientsInner from and to JSON.
     */
    implicit val decoder: Decoder[AddToMealPlanRequest1ValueIngredientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[AddToMealPlanRequest1ValueIngredientsInner] = deriveEncoder
}
