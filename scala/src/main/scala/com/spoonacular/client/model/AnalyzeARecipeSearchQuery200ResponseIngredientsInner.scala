package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param image 
 * @param include 
 * @param name 
 */
case class AnalyzeARecipeSearchQuery200ResponseIngredientsInner(image: String,
                include: Boolean,
                name: String
                )

object AnalyzeARecipeSearchQuery200ResponseIngredientsInner {
    /**
     * Creates the codec for converting AnalyzeARecipeSearchQuery200ResponseIngredientsInner from and to JSON.
     */
    implicit val decoder: Decoder[AnalyzeARecipeSearchQuery200ResponseIngredientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[AnalyzeARecipeSearchQuery200ResponseIngredientsInner] = deriveEncoder
}
