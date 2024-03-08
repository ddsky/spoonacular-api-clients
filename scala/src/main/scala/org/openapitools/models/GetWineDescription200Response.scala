package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param wineDescription 
 */
case class GetWineDescription200Response(wineDescription: String
                )

object GetWineDescription200Response {
    /**
     * Creates the codec for converting GetWineDescription200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetWineDescription200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetWineDescription200Response] = deriveEncoder
}
