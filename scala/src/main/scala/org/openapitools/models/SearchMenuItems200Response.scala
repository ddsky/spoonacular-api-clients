package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.SearchMenuItems200ResponseMenuItemsInner

/**
 * 
 * @param menuItems 
 * @param totalMenuItems 
 * @param _type 
 * @param offset 
 * @param number 
 */
case class SearchMenuItems200Response(menuItems: Set[SearchMenuItems200ResponseMenuItemsInner],
                totalMenuItems: Int,
                _type: String,
                offset: Int,
                number: Int
                )

object SearchMenuItems200Response {
    /**
     * Creates the codec for converting SearchMenuItems200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchMenuItems200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchMenuItems200Response] = deriveEncoder
}
