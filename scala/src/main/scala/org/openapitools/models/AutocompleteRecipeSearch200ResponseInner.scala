package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param id 
 * @param title 
 * @param imageType 
 */
case class AutocompleteRecipeSearch200ResponseInner(id: Int,
                title: String,
                imageType: String
                )

object AutocompleteRecipeSearch200ResponseInner {
    /**
     * Creates the codec for converting AutocompleteRecipeSearch200ResponseInner from and to JSON.
     */
    implicit val decoder: Decoder[AutocompleteRecipeSearch200ResponseInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[AutocompleteRecipeSearch200ResponseInner] = deriveEncoder
}
