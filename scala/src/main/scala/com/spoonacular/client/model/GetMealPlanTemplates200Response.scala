package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.GetAnalyzedRecipeInstructions200ResponseIngredientsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param templates 
 */
case class GetMealPlanTemplates200Response(templates: Set[GetAnalyzedRecipeInstructions200ResponseIngredientsInner]
                )

object GetMealPlanTemplates200Response {
    /**
     * Creates the codec for converting GetMealPlanTemplates200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetMealPlanTemplates200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetMealPlanTemplates200Response] = deriveEncoder
}
