package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.GetComparableProducts200ResponseComparableProducts

/**
 * 
 * @param comparableProducts 
 */
case class GetComparableProducts200Response(comparableProducts: GetComparableProducts200ResponseComparableProducts
                )

object GetComparableProducts200Response {
    /**
     * Creates the codec for converting GetComparableProducts200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetComparableProducts200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetComparableProducts200Response] = deriveEncoder
}
