package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param language The input language, either \"en\" or \"de\".
 * @param includeNutrition Whether nutrition data should be added to correctly parsed ingredients.
 * @param includeTaste Whether taste data should be added to correctly parsed ingredients.
 */
case class AnalyzeRecipeRequest(language: Option[String],
                includeNutrition: Option[Boolean],
                includeTaste: Option[Boolean]
                )

object AnalyzeRecipeRequest {
    /**
     * Creates the codec for converting AnalyzeRecipeRequest from and to JSON.
     */
    implicit val decoder: Decoder[AnalyzeRecipeRequest] = deriveDecoder
    implicit val encoder: ObjectEncoder[AnalyzeRecipeRequest] = deriveEncoder
}
