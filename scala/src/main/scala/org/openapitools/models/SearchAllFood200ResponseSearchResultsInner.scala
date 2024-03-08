package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.SearchAllFood200ResponseSearchResultsInnerResultsInner

/**
 * 
 * @param name 
 * @param totalResults 
 * @param results 
 */
case class SearchAllFood200ResponseSearchResultsInner(name: String,
                totalResults: Int,
                results: Option[Set[SearchAllFood200ResponseSearchResultsInnerResultsInner]]
                )

object SearchAllFood200ResponseSearchResultsInner {
    /**
     * Creates the codec for converting SearchAllFood200ResponseSearchResultsInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchAllFood200ResponseSearchResultsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchAllFood200ResponseSearchResultsInner] = deriveEncoder
}
