package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner

/**
 * 
 * @param name 
 * @param steps 
 */
case class GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner(name: String,
                steps: Option[Set[GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner]]
                )

object GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner {
    /**
     * Creates the codec for converting GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner from and to JSON.
     */
    implicit val decoder: Decoder[GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner] = deriveEncoder
}
