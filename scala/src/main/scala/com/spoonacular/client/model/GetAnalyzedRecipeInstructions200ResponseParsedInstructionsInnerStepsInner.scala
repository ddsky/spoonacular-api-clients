package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal
import com.spoonacular.client.model.GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param number 
 * @param step 
 * @param ingredients 
 * @param equipment 
 */
case class GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner(number: BigDecimal,
                step: String,
                ingredients: Option[Set[GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner]],
                equipment: Option[Set[GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner]]
                )

object GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner {
    /**
     * Creates the codec for converting GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner from and to JSON.
     */
    implicit val decoder: Decoder[GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner] = deriveEncoder
}
