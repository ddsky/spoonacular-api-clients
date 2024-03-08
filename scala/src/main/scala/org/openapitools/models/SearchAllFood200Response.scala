package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.SearchAllFood200ResponseSearchResultsInner

/**
 * 
 * @param query 
 * @param totalResults 
 * @param limit 
 * @param offset 
 * @param searchResults 
 */
case class SearchAllFood200Response(query: String,
                totalResults: Int,
                limit: Int,
                offset: Int,
                searchResults: Set[SearchAllFood200ResponseSearchResultsInner]
                )

object SearchAllFood200Response {
    /**
     * Creates the codec for converting SearchAllFood200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchAllFood200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchAllFood200Response] = deriveEncoder
}
