package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue

/**
 * 
 * @param id 
 * @param slot 
 * @param position 
 * @param _type 
 * @param value 
 */
case class GetMealPlanTemplate200ResponseDaysInnerItemsInner(id: Int,
                slot: Int,
                position: Int,
                _type: String,
                value: Option[GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue]
                )

object GetMealPlanTemplate200ResponseDaysInnerItemsInner {
    /**
     * Creates the codec for converting GetMealPlanTemplate200ResponseDaysInnerItemsInner from and to JSON.
     */
    implicit val decoder: Decoder[GetMealPlanTemplate200ResponseDaysInnerItemsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetMealPlanTemplate200ResponseDaysInnerItemsInner] = deriveEncoder
}
