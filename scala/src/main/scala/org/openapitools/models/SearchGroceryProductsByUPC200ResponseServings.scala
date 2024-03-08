package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param number 
 * @param size 
 * @param unit 
 */
case class SearchGroceryProductsByUPC200ResponseServings(number: BigDecimal,
                size: BigDecimal,
                unit: String
                )

object SearchGroceryProductsByUPC200ResponseServings {
    /**
     * Creates the codec for converting SearchGroceryProductsByUPC200ResponseServings from and to JSON.
     */
    implicit val decoder: Decoder[SearchGroceryProductsByUPC200ResponseServings] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchGroceryProductsByUPC200ResponseServings] = deriveEncoder
}
