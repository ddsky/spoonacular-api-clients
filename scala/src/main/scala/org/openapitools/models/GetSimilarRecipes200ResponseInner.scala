package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param id 
 * @param title 
 * @param imageType 
 * @param readyInMinutes 
 * @param servings 
 * @param sourceUrl 
 */
case class GetSimilarRecipes200ResponseInner(id: Int,
                title: String,
                imageType: String,
                readyInMinutes: Int,
                servings: BigDecimal,
                sourceUrl: String
                )

object GetSimilarRecipes200ResponseInner {
    /**
     * Creates the codec for converting GetSimilarRecipes200ResponseInner from and to JSON.
     */
    implicit val decoder: Decoder[GetSimilarRecipes200ResponseInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetSimilarRecipes200ResponseInner] = deriveEncoder
}
