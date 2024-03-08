package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.GenerateMealPlan200ResponseNutrients
import org.openapitools.models.GetSimilarRecipes200ResponseInner

/**
 * 
 * @param meals 
 * @param nutrients 
 */
case class GenerateMealPlan200Response(meals: Set[GetSimilarRecipes200ResponseInner],
                nutrients: GenerateMealPlan200ResponseNutrients
                )

object GenerateMealPlan200Response {
    /**
     * Creates the codec for converting GenerateMealPlan200Response from and to JSON.
     */
    implicit val decoder: Decoder[GenerateMealPlan200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GenerateMealPlan200Response] = deriveEncoder
}
