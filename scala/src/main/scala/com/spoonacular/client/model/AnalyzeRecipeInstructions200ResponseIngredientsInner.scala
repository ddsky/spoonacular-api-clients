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
 */
case class AnalyzeRecipeInstructions200ResponseIngredientsInner(id: BigDecimal,
                name: String
                )

object AnalyzeRecipeInstructions200ResponseIngredientsInner {
    /**
     * Creates the codec for converting AnalyzeRecipeInstructions200ResponseIngredientsInner from and to JSON.
     */
    implicit val decoder: Decoder[AnalyzeRecipeInstructions200ResponseIngredientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[AnalyzeRecipeInstructions200ResponseIngredientsInner] = deriveEncoder
}
