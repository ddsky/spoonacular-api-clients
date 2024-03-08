package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal
import org.openapitools.models.GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent

/**
 * 
 * @param confidenceRange95Percent 
 * @param standardDeviation 
 * @param unit 
 * @param value 
 */
case class GuessNutritionByDishName200ResponseCalories(confidenceRange95Percent: GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent,
                standardDeviation: BigDecimal,
                unit: String,
                value: BigDecimal
                )

object GuessNutritionByDishName200ResponseCalories {
    /**
     * Creates the codec for converting GuessNutritionByDishName200ResponseCalories from and to JSON.
     */
    implicit val decoder: Decoder[GuessNutritionByDishName200ResponseCalories] = deriveDecoder
    implicit val encoder: ObjectEncoder[GuessNutritionByDishName200ResponseCalories] = deriveEncoder
}
