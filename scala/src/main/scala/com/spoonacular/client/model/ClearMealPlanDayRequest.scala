package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param username The username.
 * @param date The date in the format yyyy-mm-dd.
 * @param hash The private hash for the username.
 */
case class ClearMealPlanDayRequest(username: String,
                date: String,
                hash: String
                )

object ClearMealPlanDayRequest {
    /**
     * Creates the codec for converting ClearMealPlanDayRequest from and to JSON.
     */
    implicit val decoder: Decoder[ClearMealPlanDayRequest] = deriveDecoder
    implicit val encoder: ObjectEncoder[ClearMealPlanDayRequest] = deriveEncoder
}
