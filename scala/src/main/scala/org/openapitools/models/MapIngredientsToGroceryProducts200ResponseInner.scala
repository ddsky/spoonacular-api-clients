package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.MapIngredientsToGroceryProducts200ResponseInnerProductsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param original 
 * @param originalName 
 * @param ingredientImage 
 * @param meta 
 * @param products 
 */
case class MapIngredientsToGroceryProducts200ResponseInner(original: String,
                originalName: String,
                ingredientImage: String,
                meta: Seq[String],
                products: Set[MapIngredientsToGroceryProducts200ResponseInnerProductsInner]
                )

object MapIngredientsToGroceryProducts200ResponseInner {
    /**
     * Creates the codec for converting MapIngredientsToGroceryProducts200ResponseInner from and to JSON.
     */
    implicit val decoder: Decoder[MapIngredientsToGroceryProducts200ResponseInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[MapIngredientsToGroceryProducts200ResponseInner] = deriveEncoder
}
