package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param id 
 * @param name 
 * @param image 
 */
case class IngredientSearch200ResponseResultsInner(id: Int,
                name: String,
                image: String
                )

object IngredientSearch200ResponseResultsInner {
    /**
     * Creates the codec for converting IngredientSearch200ResponseResultsInner from and to JSON.
     */
    implicit val decoder: Decoder[IngredientSearch200ResponseResultsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[IngredientSearch200ResponseResultsInner] = deriveEncoder
}
