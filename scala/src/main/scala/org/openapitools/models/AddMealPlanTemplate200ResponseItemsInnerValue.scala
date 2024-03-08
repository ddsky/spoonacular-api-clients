package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param id 
 * @param servings 
 * @param title 
 * @param imageType 
 */
case class AddMealPlanTemplate200ResponseItemsInnerValue(id: Option[Int],
                servings: Option[BigDecimal],
                title: Option[String],
                imageType: Option[String]
                )

object AddMealPlanTemplate200ResponseItemsInnerValue {
    /**
     * Creates the codec for converting AddMealPlanTemplate200ResponseItemsInnerValue from and to JSON.
     */
    implicit val decoder: Decoder[AddMealPlanTemplate200ResponseItemsInnerValue] = deriveDecoder
    implicit val encoder: ObjectEncoder[AddMealPlanTemplate200ResponseItemsInnerValue] = deriveEncoder
}
