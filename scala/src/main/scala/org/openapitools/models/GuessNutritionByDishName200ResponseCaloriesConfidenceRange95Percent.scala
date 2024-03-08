package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param max 
 * @param min 
 */
case class GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent(max: BigDecimal,
                min: BigDecimal
                )

object GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent {
    /**
     * Creates the codec for converting GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent from and to JSON.
     */
    implicit val decoder: Decoder[GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent] = deriveDecoder
    implicit val encoder: ObjectEncoder[GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent] = deriveEncoder
}
