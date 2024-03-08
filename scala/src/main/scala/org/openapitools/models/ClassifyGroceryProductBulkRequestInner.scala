package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param title 
 * @param upc 
 * @param pluUnderscorecode 
 */
case class ClassifyGroceryProductBulkRequestInner(title: String,
                upc: String,
                pluUnderscorecode: String
                )

object ClassifyGroceryProductBulkRequestInner {
    /**
     * Creates the codec for converting ClassifyGroceryProductBulkRequestInner from and to JSON.
     */
    implicit val decoder: Decoder[ClassifyGroceryProductBulkRequestInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[ClassifyGroceryProductBulkRequestInner] = deriveEncoder
}
