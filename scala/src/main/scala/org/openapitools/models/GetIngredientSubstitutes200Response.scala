package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import scala.collection.immutable.Seq

/**
 * 
 * @param ingredient 
 * @param substitutes 
 * @param message 
 */
case class GetIngredientSubstitutes200Response(ingredient: String,
                substitutes: Seq[String],
                message: String
                )

object GetIngredientSubstitutes200Response {
    /**
     * Creates the codec for converting GetIngredientSubstitutes200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetIngredientSubstitutes200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetIngredientSubstitutes200Response] = deriveEncoder
}
