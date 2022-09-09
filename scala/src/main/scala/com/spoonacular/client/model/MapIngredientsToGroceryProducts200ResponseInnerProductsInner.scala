package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param id 
 * @param title 
 * @param upc 
 */
case class MapIngredientsToGroceryProducts200ResponseInnerProductsInner(id: Int,
                title: String,
                upc: String
                )

object MapIngredientsToGroceryProducts200ResponseInnerProductsInner {
    /**
     * Creates the codec for converting MapIngredientsToGroceryProducts200ResponseInnerProductsInner from and to JSON.
     */
    implicit val decoder: Decoder[MapIngredientsToGroceryProducts200ResponseInnerProductsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[MapIngredientsToGroceryProducts200ResponseInnerProductsInner] = deriveEncoder
}
