package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.GetMealPlanWeek200ResponseDaysInner

/**
 * 
 * @param days 
 */
case class GetMealPlanWeek200Response(days: Set[GetMealPlanWeek200ResponseDaysInner]
                )

object GetMealPlanWeek200Response {
    /**
     * Creates the codec for converting GetMealPlanWeek200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetMealPlanWeek200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetMealPlanWeek200Response] = deriveEncoder
}
