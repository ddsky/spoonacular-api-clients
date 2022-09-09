package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal

/**
 * 
 * @param id 
 * @param name 
 * @param localizedName 
 * @param image 
 */
case class AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner(id: BigDecimal,
                name: String,
                localizedName: String,
                image: String
                )

object AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner {
    /**
     * Creates the codec for converting AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner from and to JSON.
     */
    implicit val decoder: Decoder[AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner] = deriveEncoder
}
