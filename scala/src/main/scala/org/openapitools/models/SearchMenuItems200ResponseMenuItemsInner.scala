package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.SearchGroceryProductsByUPC200ResponseServings

/**
 * 
 * @param id 
 * @param title 
 * @param restaurantChain 
 * @param image 
 * @param imageType 
 * @param servings 
 */
case class SearchMenuItems200ResponseMenuItemsInner(id: Int,
                title: String,
                restaurantChain: String,
                image: String,
                imageType: String,
                servings: Option[SearchGroceryProductsByUPC200ResponseServings]
                )

object SearchMenuItems200ResponseMenuItemsInner {
    /**
     * Creates the codec for converting SearchMenuItems200ResponseMenuItemsInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchMenuItems200ResponseMenuItemsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchMenuItems200ResponseMenuItemsInner] = deriveEncoder
}
