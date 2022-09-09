package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.AnyType

/**
 * 
 * @param description 
 * @param name 
 * @param safetyUnderscorelevel 
 */
case class SearchGroceryProductsByUPC200ResponseIngredientsInner(description: Option[AnyType],
                name: String,
                safetyUnderscorelevel: Option[AnyType]
                )

object SearchGroceryProductsByUPC200ResponseIngredientsInner {
    /**
     * Creates the codec for converting SearchGroceryProductsByUPC200ResponseIngredientsInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchGroceryProductsByUPC200ResponseIngredientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchGroceryProductsByUPC200ResponseIngredientsInner] = deriveEncoder
}
