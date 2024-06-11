package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.SearchSiteContent200ResponseArticlesInner

/**
 * 
 * @param Articles 
 * @param Grocery Products 
 * @param Menu Items 
 * @param Recipes 
 */
case class SearchSiteContent200Response(Articles: Set[SearchSiteContent200ResponseArticlesInner],
                Grocery Products: Set[SearchSiteContent200ResponseArticlesInner],
                Menu Items: Set[SearchSiteContent200ResponseArticlesInner],
                Recipes: Set[SearchSiteContent200ResponseArticlesInner]
                )

object SearchSiteContent200Response {
    /**
     * Creates the codec for converting SearchSiteContent200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchSiteContent200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchSiteContent200Response] = deriveEncoder
}
