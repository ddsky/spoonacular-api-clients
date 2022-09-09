package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal

/**
 * 
 * @param id 
 * @param title 
 * @param imageType 
 */
case class GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue(id: BigDecimal,
                title: String,
                imageType: String
                )

object GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue {
    /**
     * Creates the codec for converting GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue from and to JSON.
     */
    implicit val decoder: Decoder[GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue] = deriveEncoder
}
