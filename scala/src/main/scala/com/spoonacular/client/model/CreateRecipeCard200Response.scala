package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param url 
 */
case class CreateRecipeCard200Response(url: String
                )

object CreateRecipeCard200Response {
    /**
     * Creates the codec for converting CreateRecipeCard200Response from and to JSON.
     */
    implicit val decoder: Decoder[CreateRecipeCard200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[CreateRecipeCard200Response] = deriveEncoder
}
