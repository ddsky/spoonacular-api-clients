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
 * @param localizedName 
 * @param image 
 */
case class GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner(id: Int,
                name: String,
                localizedName: String,
                image: String
                )

object GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner {
    /**
     * Creates the codec for converting GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner from and to JSON.
     */
    implicit val decoder: Decoder[GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner] = deriveEncoder
}
