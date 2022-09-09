package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.AddToMealPlanRequest1ValueIngredientsInner
import scala.collection.immutable.Seq

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
