package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param description 
 * @param name 
 * @param safetyUnderscorelevel 
 */
case class GetProductInformation200ResponseIngredientsInner(description: Option[String],
                name: String,
                safetyUnderscorelevel: Option[String]
                )

object GetProductInformation200ResponseIngredientsInner {
    /**
     * Creates the codec for converting GetProductInformation200ResponseIngredientsInner from and to JSON.
     */
    implicit val decoder: Decoder[GetProductInformation200ResponseIngredientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetProductInformation200ResponseIngredientsInner] = deriveEncoder
}
