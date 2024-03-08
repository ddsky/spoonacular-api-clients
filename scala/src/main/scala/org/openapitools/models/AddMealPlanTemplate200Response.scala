package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.AddMealPlanTemplate200ResponseItemsInner

/**
 * 
 * @param name 
 * @param items 
 * @param publishAsPublic 
 */
case class AddMealPlanTemplate200Response(name: String,
                items: Set[AddMealPlanTemplate200ResponseItemsInner],
                publishAsPublic: Boolean
                )

object AddMealPlanTemplate200Response {
    /**
     * Creates the codec for converting AddMealPlanTemplate200Response from and to JSON.
     */
    implicit val decoder: Decoder[AddMealPlanTemplate200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[AddMealPlanTemplate200Response] = deriveEncoder
}
