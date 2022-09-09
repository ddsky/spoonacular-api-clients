package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import scala.collection.immutable.Seq

/**
 * 
 * @param cleanTitle 
 * @param image 
 * @param category 
 * @param breadcrumbs 
 * @param usdaCode 
 */
case class ClassifyGroceryProduct200Response(cleanTitle: String,
                image: String,
                category: String,
                breadcrumbs: Seq[String],
                usdaCode: Int
                )

object ClassifyGroceryProduct200Response {
    /**
     * Creates the codec for converting ClassifyGroceryProduct200Response from and to JSON.
     */
    implicit val decoder: Decoder[ClassifyGroceryProduct200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ClassifyGroceryProduct200Response] = deriveEncoder
}
