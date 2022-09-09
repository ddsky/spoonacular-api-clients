package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.AutocompleteRecipeSearch200ResponseInner
import scala.collection.immutable.Seq

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
