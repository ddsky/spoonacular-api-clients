package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.GetMealPlanWeek200ResponseDaysInner
import scala.collection.immutable.Seq

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
