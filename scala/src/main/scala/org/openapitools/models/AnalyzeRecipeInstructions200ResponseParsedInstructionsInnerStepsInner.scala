package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner
import org.openapitools.models.BigDecimal

/**
 * 
 * @param number 
 * @param step 
 * @param ingredients 
 * @param equipment 
 */
case class AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner(number: BigDecimal,
                step: String,
                ingredients: Option[Set[AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner]],
                equipment: Option[Set[AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner]]
                )

object AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner {
    /**
     * Creates the codec for converting AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner from and to JSON.
     */
    implicit val decoder: Decoder[AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner] = deriveEncoder
}
