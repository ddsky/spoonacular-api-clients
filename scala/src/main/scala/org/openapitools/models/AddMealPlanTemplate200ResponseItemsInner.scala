package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.AddMealPlanTemplate200ResponseItemsInnerValue

/**
 * 
 * @param day 
 * @param slot 
 * @param position 
 * @param _type 
 * @param value 
 */
case class AddMealPlanTemplate200ResponseItemsInner(day: Int,
                slot: Int,
                position: Int,
                _type: String,
                value: Option[AddMealPlanTemplate200ResponseItemsInnerValue]
                )

object AddMealPlanTemplate200ResponseItemsInner {
    /**
     * Creates the codec for converting AddMealPlanTemplate200ResponseItemsInner from and to JSON.
     */
    implicit val decoder: Decoder[AddMealPlanTemplate200ResponseItemsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[AddMealPlanTemplate200ResponseItemsInner] = deriveEncoder
}
