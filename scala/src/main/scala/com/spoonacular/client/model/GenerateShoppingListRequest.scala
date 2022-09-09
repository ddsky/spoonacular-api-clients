package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param username The username.
 * @param startMinusdate The start date in the format yyyy-mm-dd.
 * @param endMinusdate The end date in the format yyyy-mm-dd.
 * @param hash The private hash for the username.
 */
case class GenerateShoppingListRequest(username: String,
                startMinusdate: String,
                endMinusdate: String,
                hash: String
                )

object GenerateShoppingListRequest {
    /**
     * Creates the codec for converting GenerateShoppingListRequest from and to JSON.
     */
    implicit val decoder: Decoder[GenerateShoppingListRequest] = deriveDecoder
    implicit val encoder: ObjectEncoder[GenerateShoppingListRequest] = deriveEncoder
}
