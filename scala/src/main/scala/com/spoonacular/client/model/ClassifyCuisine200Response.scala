package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal
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
