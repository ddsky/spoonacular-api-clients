package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.AutocompleteRecipeSearch200ResponseInner

/**
 * 
 * @param products 
 * @param totalProducts 
 * @param _type 
 * @param offset 
 * @param number 
 */
case class SearchGroceryProducts200Response(products: Set[AutocompleteRecipeSearch200ResponseInner],
                totalProducts: Int,
                _type: String,
                offset: Int,
                number: Int
                )

object SearchGroceryProducts200Response {
    /**
     * Creates the codec for converting SearchGroceryProducts200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchGroceryProducts200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchGroceryProducts200Response] = deriveEncoder
}
