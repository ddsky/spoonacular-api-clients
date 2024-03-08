package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.AnalyzeRecipeInstructions200ResponseIngredientsInner
import org.openapitools.models.AnalyzeRecipeInstructions200ResponseParsedInstructionsInner

/**
 * 
 * @param parsedInstructions 
 * @param ingredients 
 * @param equipment 
 */
case class AnalyzeRecipeInstructions200Response(parsedInstructions: Set[AnalyzeRecipeInstructions200ResponseParsedInstructionsInner],
                ingredients: Set[AnalyzeRecipeInstructions200ResponseIngredientsInner],
                equipment: Set[AnalyzeRecipeInstructions200ResponseIngredientsInner]
                )

object AnalyzeRecipeInstructions200Response {
    /**
     * Creates the codec for converting AnalyzeRecipeInstructions200Response from and to JSON.
     */
    implicit val decoder: Decoder[AnalyzeRecipeInstructions200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[AnalyzeRecipeInstructions200Response] = deriveEncoder
}
