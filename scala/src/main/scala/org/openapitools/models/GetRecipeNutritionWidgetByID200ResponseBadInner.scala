package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param name 
 * @param amount 
 * @param indented 
 * @param percentOfDailyNeeds 
 */
case class GetRecipeNutritionWidgetByID200ResponseBadInner(name: String,
                amount: String,
                indented: Boolean,
                percentOfDailyNeeds: BigDecimal
                )

object GetRecipeNutritionWidgetByID200ResponseBadInner {
    /**
     * Creates the codec for converting GetRecipeNutritionWidgetByID200ResponseBadInner from and to JSON.
     */
    implicit val decoder: Decoder[GetRecipeNutritionWidgetByID200ResponseBadInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRecipeNutritionWidgetByID200ResponseBadInner] = deriveEncoder
}
