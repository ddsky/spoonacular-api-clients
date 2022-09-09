package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param id 
 * @param summary 
 * @param title 
 */
case class SummarizeRecipe200Response(id: Int,
                summary: String,
                title: String
                )

object SummarizeRecipe200Response {
    /**
     * Creates the codec for converting SummarizeRecipe200Response from and to JSON.
     */
    implicit val decoder: Decoder[SummarizeRecipe200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SummarizeRecipe200Response] = deriveEncoder
}
