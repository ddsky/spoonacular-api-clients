package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param username The username.
 * @param id The shopping list item id.
 * @param hash The private hash for the username.
 */
case class DeleteFromMealPlanRequest(username: String,
                id: BigDecimal,
                hash: String
                )

object DeleteFromMealPlanRequest {
    /**
     * Creates the codec for converting DeleteFromMealPlanRequest from and to JSON.
     */
    implicit val decoder: Decoder[DeleteFromMealPlanRequest] = deriveDecoder
    implicit val encoder: ObjectEncoder[DeleteFromMealPlanRequest] = deriveEncoder
}
