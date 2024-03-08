package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.GetAnalyzedRecipeInstructions200ResponseIngredientsInner
import org.openapitools.models.GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner

/**
 * 
 * @param parsedInstructions 
 * @param ingredients 
 * @param equipment 
 */
case class GetAnalyzedRecipeInstructions200Response(parsedInstructions: Set[GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner],
                ingredients: Set[GetAnalyzedRecipeInstructions200ResponseIngredientsInner],
                equipment: Set[GetAnalyzedRecipeInstructions200ResponseIngredientsInner]
                )

object GetAnalyzedRecipeInstructions200Response {
    /**
     * Creates the codec for converting GetAnalyzedRecipeInstructions200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetAnalyzedRecipeInstructions200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetAnalyzedRecipeInstructions200Response] = deriveEncoder
}
