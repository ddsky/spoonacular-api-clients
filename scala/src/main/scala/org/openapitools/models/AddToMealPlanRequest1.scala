package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.AddToMealPlanRequest1Value
import org.openapitools.models.BigDecimal

/**
 * 
 * @param date 
 * @param slot 
 * @param position 
 * @param _type 
 * @param value 
 */
case class AddToMealPlanRequest1(date: BigDecimal,
                slot: Int,
                position: Int,
                _type: String,
                value: AddToMealPlanRequest1Value
                )

object AddToMealPlanRequest1 {
    /**
     * Creates the codec for converting AddToMealPlanRequest1 from and to JSON.
     */
    implicit val decoder: Decoder[AddToMealPlanRequest1] = deriveDecoder
    implicit val encoder: ObjectEncoder[AddToMealPlanRequest1] = deriveEncoder
}
