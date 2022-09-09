package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param username The username.
 * @param hash The private hash for the username.
 */
case class AddToMealPlanRequest(username: String,
                hash: String
                )

object AddToMealPlanRequest {
    /**
     * Creates the codec for converting AddToMealPlanRequest from and to JSON.
     */
    implicit val decoder: Decoder[AddToMealPlanRequest] = deriveDecoder
    implicit val encoder: ObjectEncoder[AddToMealPlanRequest] = deriveEncoder
}
