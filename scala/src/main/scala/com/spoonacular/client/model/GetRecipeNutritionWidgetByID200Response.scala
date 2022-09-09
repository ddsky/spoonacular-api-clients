package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.GetRecipeNutritionWidgetByID200ResponseBadInner
import com.spoonacular.client.model.GetRecipeNutritionWidgetByID200ResponseGoodInner
import scala.collection.immutable.Seq

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
