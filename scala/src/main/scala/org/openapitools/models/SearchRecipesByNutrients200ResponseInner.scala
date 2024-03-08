package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param calories 
 * @param carbs 
 * @param fat 
 * @param id 
 * @param image 
 * @param imageType 
 * @param protein 
 * @param title 
 */
case class SearchRecipesByNutrients200ResponseInner(calories: BigDecimal,
                carbs: String,
                fat: String,
                id: Int,
                image: String,
                imageType: String,
                protein: String,
                title: String
                )

object SearchRecipesByNutrients200ResponseInner {
    /**
     * Creates the codec for converting SearchRecipesByNutrients200ResponseInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchRecipesByNutrients200ResponseInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRecipesByNutrients200ResponseInner] = deriveEncoder
}
