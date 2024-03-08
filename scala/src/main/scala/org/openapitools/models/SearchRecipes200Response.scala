package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.SearchRecipes200ResponseResultsInner

/**
 * 
 * @param offset 
 * @param number 
 * @param results 
 * @param totalResults 
 */
case class SearchRecipes200Response(offset: Int,
                number: Int,
                results: Set[SearchRecipes200ResponseResultsInner],
                totalResults: Int
                )

object SearchRecipes200Response {
    /**
     * Creates the codec for converting SearchRecipes200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchRecipes200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRecipes200Response] = deriveEncoder
}
