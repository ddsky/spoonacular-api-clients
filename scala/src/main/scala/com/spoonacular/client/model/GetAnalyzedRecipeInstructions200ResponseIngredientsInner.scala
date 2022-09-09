package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param id 
 * @param name 
 */
case class GetAnalyzedRecipeInstructions200ResponseIngredientsInner(id: Int,
                name: String
                )

object GetAnalyzedRecipeInstructions200ResponseIngredientsInner {
    /**
     * Creates the codec for converting GetAnalyzedRecipeInstructions200ResponseIngredientsInner from and to JSON.
     */
    implicit val decoder: Decoder[GetAnalyzedRecipeInstructions200ResponseIngredientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetAnalyzedRecipeInstructions200ResponseIngredientsInner] = deriveEncoder
}
