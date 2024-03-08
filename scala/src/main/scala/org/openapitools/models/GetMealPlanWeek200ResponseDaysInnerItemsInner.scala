package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.GetMealPlanWeek200ResponseDaysInnerItemsInnerValue

/**
 * 
 * @param id 
 * @param slot 
 * @param position 
 * @param _type 
 * @param value 
 */
case class GetMealPlanWeek200ResponseDaysInnerItemsInner(id: Int,
                slot: Int,
                position: Int,
                _type: String,
                value: Option[GetMealPlanWeek200ResponseDaysInnerItemsInnerValue]
                )

object GetMealPlanWeek200ResponseDaysInnerItemsInner {
    /**
     * Creates the codec for converting GetMealPlanWeek200ResponseDaysInnerItemsInner from and to JSON.
     */
    implicit val decoder: Decoder[GetMealPlanWeek200ResponseDaysInnerItemsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetMealPlanWeek200ResponseDaysInnerItemsInner] = deriveEncoder
}
