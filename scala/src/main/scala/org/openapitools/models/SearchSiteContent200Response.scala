package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.SearchSiteContent200ResponseArticlesInner
import org.openapitools.models.SearchSiteContent200ResponseGroceryProductsInner

/**
 * 
 * @param Articles 
 * @param Grocery Products 
 * @param Menu Items 
 * @param Recipes 
 */
case class SearchSiteContent200Response(Articles: Set[SearchSiteContent200ResponseArticlesInner],
                Grocery Products: Set[SearchSiteContent200ResponseGroceryProductsInner],
                Menu Items: Set[SearchSiteContent200ResponseGroceryProductsInner],
                Recipes: Set[SearchSiteContent200ResponseGroceryProductsInner]
                )

object SearchSiteContent200Response {
    /**
     * Creates the codec for converting SearchSiteContent200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchSiteContent200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchSiteContent200Response] = deriveEncoder
}
