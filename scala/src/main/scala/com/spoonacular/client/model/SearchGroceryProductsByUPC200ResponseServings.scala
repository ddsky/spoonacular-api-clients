package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal

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
