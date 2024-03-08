package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal
import scala.collection.immutable.Seq

/**
 * 
 * @param ingredients 
 * @param servings 
 */
case class MapIngredientsToGroceryProductsRequest(ingredients: Seq[String],
                servings: BigDecimal
                )

object MapIngredientsToGroceryProductsRequest {
    /**
     * Creates the codec for converting MapIngredientsToGroceryProductsRequest from and to JSON.
     */
    implicit val decoder: Decoder[MapIngredientsToGroceryProductsRequest] = deriveDecoder
    implicit val encoder: ObjectEncoder[MapIngredientsToGroceryProductsRequest] = deriveEncoder
}
