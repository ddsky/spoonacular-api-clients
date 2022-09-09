package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal

/**
 * 
 * @param servings 
 * @param id 
 * @param title 
 * @param imageType 
 */
case class GetMealPlanWeek200ResponseDaysInnerItemsInnerValue(servings: BigDecimal,
                id: BigDecimal,
                title: String,
                imageType: String
                )

object GetMealPlanWeek200ResponseDaysInnerItemsInnerValue {
    /**
     * Creates the codec for converting GetMealPlanWeek200ResponseDaysInnerItemsInnerValue from and to JSON.
     */
    implicit val decoder: Decoder[GetMealPlanWeek200ResponseDaysInnerItemsInnerValue] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetMealPlanWeek200ResponseDaysInnerItemsInnerValue] = deriveEncoder
}
