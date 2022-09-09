package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal

/**
 * 
 * @param amount 
 * @param indented 
 * @param percentOfDailyNeeds 
 * @param name 
 */
case class GetRecipeNutritionWidgetByID200ResponseGoodInner(amount: String,
                indented: Boolean,
                percentOfDailyNeeds: BigDecimal,
                name: String
                )

object GetRecipeNutritionWidgetByID200ResponseGoodInner {
    /**
     * Creates the codec for converting GetRecipeNutritionWidgetByID200ResponseGoodInner from and to JSON.
     */
    implicit val decoder: Decoder[GetRecipeNutritionWidgetByID200ResponseGoodInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRecipeNutritionWidgetByID200ResponseGoodInner] = deriveEncoder
}
