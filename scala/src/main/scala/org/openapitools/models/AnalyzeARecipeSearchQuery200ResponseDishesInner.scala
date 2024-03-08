package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param image 
 * @param name 
 */
case class AnalyzeARecipeSearchQuery200ResponseDishesInner(image: String,
                name: String
                )

object AnalyzeARecipeSearchQuery200ResponseDishesInner {
    /**
     * Creates the codec for converting AnalyzeARecipeSearchQuery200ResponseDishesInner from and to JSON.
     */
    implicit val decoder: Decoder[AnalyzeARecipeSearchQuery200ResponseDishesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[AnalyzeARecipeSearchQuery200ResponseDishesInner] = deriveEncoder
}
