package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.AddToMealPlanRequestValue
import org.openapitools.models.BigDecimal

/**
 * 
 * @param date 
 * @param slot 
 * @param position 
 * @param _type 
 * @param value 
 */
case class AddToMealPlanRequest(date: BigDecimal,
                slot: Int,
                position: Int,
                _type: String,
                value: AddToMealPlanRequestValue
                )

object AddToMealPlanRequest {
    /**
     * Creates the codec for converting AddToMealPlanRequest from and to JSON.
     */
    implicit val decoder: Decoder[AddToMealPlanRequest] = deriveDecoder
    implicit val encoder: ObjectEncoder[AddToMealPlanRequest] = deriveEncoder
}
