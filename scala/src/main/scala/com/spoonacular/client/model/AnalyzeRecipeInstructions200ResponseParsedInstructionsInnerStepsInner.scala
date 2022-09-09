package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner
import com.spoonacular.client.model.BigDecimal
import scala.collection.immutable.Seq

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
