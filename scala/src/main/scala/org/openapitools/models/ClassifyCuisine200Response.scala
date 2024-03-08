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
 * @param cuisine 
 * @param cuisines 
 * @param confidence 
 */
case class ClassifyCuisine200Response(cuisine: String,
                cuisines: Seq[String],
                confidence: BigDecimal
                )

object ClassifyCuisine200Response {
    /**
     * Creates the codec for converting ClassifyCuisine200Response from and to JSON.
     */
    implicit val decoder: Decoder[ClassifyCuisine200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ClassifyCuisine200Response] = deriveEncoder
}
