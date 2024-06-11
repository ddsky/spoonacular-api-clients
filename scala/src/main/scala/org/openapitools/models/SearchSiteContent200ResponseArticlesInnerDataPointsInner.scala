package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param key 
 * @param value 
 */
case class SearchSiteContent200ResponseArticlesInnerDataPointsInner(key: String,
                value: String
                )

object SearchSiteContent200ResponseArticlesInnerDataPointsInner {
    /**
     * Creates the codec for converting SearchSiteContent200ResponseArticlesInnerDataPointsInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchSiteContent200ResponseArticlesInnerDataPointsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchSiteContent200ResponseArticlesInnerDataPointsInner] = deriveEncoder
}
