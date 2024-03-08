package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.GetRecipeNutritionWidgetByID200ResponseBadInner
import org.openapitools.models.GetRecipeNutritionWidgetByID200ResponseGoodInner

/**
 * 
 * @param calories 
 * @param carbs 
 * @param fat 
 * @param protein 
 * @param bad 
 * @param good 
 */
case class GetRecipeNutritionWidgetByID200Response(calories: String,
                carbs: String,
                fat: String,
                protein: String,
                bad: Set[GetRecipeNutritionWidgetByID200ResponseBadInner],
                good: Set[GetRecipeNutritionWidgetByID200ResponseGoodInner]
                )

object GetRecipeNutritionWidgetByID200Response {
    /**
     * Creates the codec for converting GetRecipeNutritionWidgetByID200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetRecipeNutritionWidgetByID200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRecipeNutritionWidgetByID200Response] = deriveEncoder
}
