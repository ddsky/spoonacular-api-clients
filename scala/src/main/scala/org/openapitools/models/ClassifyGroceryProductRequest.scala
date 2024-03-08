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
case class ClassifyGroceryProductRequest(title: String,
                upc: String,
                pluUnderscorecode: String
                )

object ClassifyGroceryProductRequest {
    /**
     * Creates the codec for converting ClassifyGroceryProductRequest from and to JSON.
     */
    implicit val decoder: Decoder[ClassifyGroceryProductRequest] = deriveDecoder
    implicit val encoder: ObjectEncoder[ClassifyGroceryProductRequest] = deriveEncoder
}
