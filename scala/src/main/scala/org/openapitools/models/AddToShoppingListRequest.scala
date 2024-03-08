package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param item 
 * @param aisle 
 * @param parse 
 */
case class AddToShoppingListRequest(item: String,
                aisle: String,
                parse: Boolean
                )

object AddToShoppingListRequest {
    /**
     * Creates the codec for converting AddToShoppingListRequest from and to JSON.
     */
    implicit val decoder: Decoder[AddToShoppingListRequest] = deriveDecoder
    implicit val encoder: ObjectEncoder[AddToShoppingListRequest] = deriveEncoder
}
