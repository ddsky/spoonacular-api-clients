package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner

/**
 * 
 * @param dataPoints 
 * @param image 
 * @param link 
 * @param name 
 */
case class SearchSiteContent200ResponseGroceryProductsInner(dataPoints: Option[Set[SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner]],
                image: String,
                link: String,
                name: String
                )

object SearchSiteContent200ResponseGroceryProductsInner {
    /**
     * Creates the codec for converting SearchSiteContent200ResponseGroceryProductsInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchSiteContent200ResponseGroceryProductsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchSiteContent200ResponseGroceryProductsInner] = deriveEncoder
}
