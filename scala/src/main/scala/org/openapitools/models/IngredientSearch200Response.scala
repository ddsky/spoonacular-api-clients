package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.IngredientSearch200ResponseResultsInner

/**
 * 
 * @param results 
 * @param offset 
 * @param number 
 * @param totalResults 
 */
case class IngredientSearch200Response(results: Set[IngredientSearch200ResponseResultsInner],
                offset: Int,
                number: Int,
                totalResults: Int
                )

object IngredientSearch200Response {
    /**
     * Creates the codec for converting IngredientSearch200Response from and to JSON.
     */
    implicit val decoder: Decoder[IngredientSearch200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[IngredientSearch200Response] = deriveEncoder
}
