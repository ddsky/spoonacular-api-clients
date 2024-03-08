package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param id 
 * @param name 
 * @param image 
 * @param link 
 * @param _type 
 * @param relevance 
 * @param content 
 */
case class SearchAllFood200ResponseSearchResultsInnerResultsInner(id: String,
                name: String,
                image: String,
                link: String,
                _type: String,
                relevance: BigDecimal,
                content: String
                )

object SearchAllFood200ResponseSearchResultsInnerResultsInner {
    /**
     * Creates the codec for converting SearchAllFood200ResponseSearchResultsInnerResultsInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchAllFood200ResponseSearchResultsInnerResultsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchAllFood200ResponseSearchResultsInnerResultsInner] = deriveEncoder
}
