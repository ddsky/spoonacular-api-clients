package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param username 
 * @param firstName 
 * @param lastName 
 * @param email 
 */
case class ConnectUserRequest(username: String,
                firstName: String,
                lastName: String,
                email: String
                )

object ConnectUserRequest {
    /**
     * Creates the codec for converting ConnectUserRequest from and to JSON.
     */
    implicit val decoder: Decoder[ConnectUserRequest] = deriveDecoder
    implicit val encoder: ObjectEncoder[ConnectUserRequest] = deriveEncoder
}
