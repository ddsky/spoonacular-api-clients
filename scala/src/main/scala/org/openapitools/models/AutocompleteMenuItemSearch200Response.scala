package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.AutocompleteProductSearch200ResponseResultsInner

/**
 * 
 * @param results 
 */
case class AutocompleteMenuItemSearch200Response(results: Set[AutocompleteProductSearch200ResponseResultsInner]
                )

object AutocompleteMenuItemSearch200Response {
    /**
     * Creates the codec for converting AutocompleteMenuItemSearch200Response from and to JSON.
     */
    implicit val decoder: Decoder[AutocompleteMenuItemSearch200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[AutocompleteMenuItemSearch200Response] = deriveEncoder
}
