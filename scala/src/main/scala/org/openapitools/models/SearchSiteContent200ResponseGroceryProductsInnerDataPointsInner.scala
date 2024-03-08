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
case class SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner(key: String,
                value: String
                )

object SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner {
    /**
     * Creates the codec for converting SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner] = deriveEncoder
}
