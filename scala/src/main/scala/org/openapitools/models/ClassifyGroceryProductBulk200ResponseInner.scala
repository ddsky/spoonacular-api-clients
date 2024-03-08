package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import scala.collection.immutable.Seq

/**
 * 
 * @param cleanTitle 
 * @param image 
 * @param category 
 * @param breadcrumbs 
 * @param usdaCode 
 */
case class ClassifyGroceryProductBulk200ResponseInner(cleanTitle: String,
                image: String,
                category: String,
                breadcrumbs: Seq[String],
                usdaCode: Int
                )

object ClassifyGroceryProductBulk200ResponseInner {
    /**
     * Creates the codec for converting ClassifyGroceryProductBulk200ResponseInner from and to JSON.
     */
    implicit val decoder: Decoder[ClassifyGroceryProductBulk200ResponseInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[ClassifyGroceryProductBulk200ResponseInner] = deriveEncoder
}
