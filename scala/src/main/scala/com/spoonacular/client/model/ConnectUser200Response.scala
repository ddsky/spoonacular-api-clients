package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param username 
 * @param hash 
 */
case class ConnectUser200Response(username: String,
                hash: String
                )

object ConnectUser200Response {
    /**
     * Creates the codec for converting ConnectUser200Response from and to JSON.
     */
    implicit val decoder: Decoder[ConnectUser200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ConnectUser200Response] = deriveEncoder
}
