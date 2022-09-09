package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param name 
 * @param steps 
 */
case class AnalyzeRecipeInstructions200ResponseParsedInstructionsInner(name: String,
                steps: Option[Set[AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner]]
                )

object AnalyzeRecipeInstructions200ResponseParsedInstructionsInner {
    /**
     * Creates the codec for converting AnalyzeRecipeInstructions200ResponseParsedInstructionsInner from and to JSON.
     */
    implicit val decoder: Decoder[AnalyzeRecipeInstructions200ResponseParsedInstructionsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[AnalyzeRecipeInstructions200ResponseParsedInstructionsInner] = deriveEncoder
}
