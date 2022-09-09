package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric

/**
 * 
 * @param metric 
 * @param us 
 */
case class GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures(metric: GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric,
                us: GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric
                )

object GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures {
    /**
     * Creates the codec for converting GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures from and to JSON.
     */
    implicit val decoder: Decoder[GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures] = deriveEncoder
}
